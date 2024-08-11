from typing import TypedDict, Callable,NamedTuple
import pandas
import json
import os
import pathlib
from glob import glob
from itertools import product
from tqdm import tqdm
from itertools import groupby
from statistics import mean
from pprint import pprint
from collections import defaultdict,Counter
from json import dumps
JS_COLOR = "red"

ASM_COLOR = "blue"

C_COLOR = "green"

class RawData(TypedDict):
    id: str
    algorithm: str
    language: str
    type: str
    size: list[float]
    time: list[float]

    
class RawDataPoint(TypedDict):
    id: str
    algorithm: str
    language: str
    type: str
    size: float
    time: float

HandleData = Callable[[list[RawData]], pandas.DataFrame]

GenerateGraph = Callable[[str, str, pandas.DataFrame], None]

def matchAlgorithm(algorithm: str):
    def predicate(raw_data: RawDataPoint)->bool:
        return raw_data["algorithm"] == algorithm
    return predicate

def matchLanguage(language: str):
    def predicate(raw_data: RawDataPoint)->bool:
        return raw_data["language"] == language
    return predicate

def matchType(type: str):
    def predicate(raw_data: RawDataPoint)->bool:
        return raw_data["type"] == type
    return predicate

def get_current_directory() -> pathlib.Path:
    return pathlib.Path(os.path.dirname(os.path.abspath(__file__)))

def get_raw_data(file_path: pathlib.Path) -> RawData:
    file = open(file_path)
    data = RawData(json.load(file))
    file.close()
    file_name = str(file_path).split("\\")[-1]
    algorithName, type, language, *rest = file_name.split("_")
    id = "_".join(rest).split(".")[0]
    data["id"] = id
    data["algorithm"] = algorithName
    data["type"] = type
    data["language"] = language
    return data

def get_points_list(input_path: pathlib.Path) -> list[RawDataPoint]:
    globPaths = glob(str(input_path), recursive=True)
    matches = list(map(
        lambda file_path: get_raw_data(
            pathlib.Path(file_path)
        ),
        globPaths
    ))
    filteredMatches = list(filter(lambda rawData: len(rawData["time"]) == 23, matches))
    zipedMatches = list(
        map(
            lambda rawData: {
                **rawData,
                "zip": sorted(
                    zip(rawData["time"], rawData["size"]), 
                    key=lambda x: x[1]
                )
            }, 
            filteredMatches
        )
    )

    sortedMatches = list(
        map(
            lambda rawData: {
                **rawData,
                "time": list(map(lambda x: x[0], rawData["zip"])),
                "size": list(map(lambda x: x[1], rawData["zip"])),
            },
            zipedMatches
        )
    )

    return [
        RawDataPoint(
            language= rawData["language"],
            type=rawData["type"],
            algorithm=rawData["algorithm"],
            id=rawData["id"],
            size=index,
            time=rawData["time"][index],
        ) 
          for rawData in sortedMatches for index in range(len(rawData["time"]))]

def group_points_by_size(matches: list[RawDataPoint]) -> dict[str, list[RawDataPoint]]:
    return { key:list(iter)
        for key, iter in groupby(
            sorted(
                matches,
                key=lambda x: f"{x["algorithm"]}_{x["language"]}_{x["size"]}"
            ),
            key=lambda x: f"{x["algorithm"]}_{x["language"]}_{x["size"]}"
        )
    }



# def getMeans(grouped:dict[str, list[RawDataPoint]])->dict[key,]:
#     points: list[RawDataPoint] = []
#     for _, points in grouped.items():
        
#         newPoint: RawDataPoint = RawDataPoint(
#             id= points[0]["id"],
#             algorithm= points[0]["algorithm"],
#             language= points[0]["language"],
#             type= points[0]["type"],
#             size= points[0]["size"],
#             time= mean(map(lambda point: point["time"], points))
#         )
#         points.append(newPoint)
#     return points

def calcAverage_by_pandas(matched:list[RawDataPoint],algorithms:list[str]):
    df =  pandas.DataFrame.from_records(matched).drop(columns=["id","type"])
    dfGrouped = df.groupby(by=["language","algorithm" ,"size"]).mean()
    
    rows = []
    for alg in algorithms:
        for lang in ["asm","c"]: 
            dfWeb:pandas.DataFrame = dfGrouped.loc[(lang,alg,slice(None))]  # type: ignore
            dfJs:pandas.DataFrame = dfGrouped.loc[("js",alg,slice(None))]  # type: ignore
            procentAverage = (dfWeb["time"]/dfJs["time"]).mean()
            rows.append({"algorithm":alg,"langague":lang,"procentAverage":procentAverage})

    coparision = pandas.DataFrame.from_records(rows)
    coparision["procentAverage"] = coparision["procentAverage"]*100
    print("mean(step_i_lang_j/step_i_lang_js) for each algorithm and for each langague [c,asmblyScript]")
    print(coparision)
    print("mean(lang/js) in general")
    print(coparision.drop(columns="algorithm").groupby(by=["langague"])["procentAverage"].mean())

def calcAverage_simple(matched:list[RawDataPoint],algorithms:list[str]):
    
    # key "algorithm"
    sizes:dict[str,set[float]] = defaultdict(lambda : set())
    for point in matched:
        sizes[point["algorithm"]].add(point["size"])
    
    # key = ("algorithm","language","size")
    orgianizedPoints:dict[tuple[str,str,float],list[float]] = defaultdict(lambda : [])
    for point in matched:
        key = (point["algorithm"],point["language"],point["size"])
        orgianizedPoints[key].append(point["time"])
    
    # key = ("algorithm","language","size")
    orgianizedMeans:dict[tuple[str,str,float],float] = dict()
    for key,value in orgianizedPoints.items():
        orgianizedMeans[key] = mean(value)

     # key = ("algorithm","language")
    perforanceAverage:dict[tuple[str,str],float] = dict()
    for alg,lang in product(algorithms,["asm","c"]):
        meanForAllStep = mean([orgianizedMeans[(alg,lang,i)]/orgianizedMeans[(alg,"js",i)]  for i in range(23)])
        perforanceAverage[(alg,lang)]=meanForAllStep 
    
    print("mean(step_i_lang_j/step_i_lang_js) for each algorithm and for each langague [c,asmblyScript]")
    pprint(perforanceAverage)

    # key = ("language")
    perforanceAverageGeneral:dict[str,float] = dict() 
    for lang in ["asm","c"]:
        meanForAllAlgorithms = mean([perforanceAverage[(alg,lang)] for alg in algorithms])
        perforanceAverageGeneral[lang]= meanForAllAlgorithms
        

    print("mean(lang/js) in general")
    pprint(perforanceAverageGeneral)


def generate_graphs(
    input_path: str,
    output_path: str,
    algorithms: list[str],
    languages: list[str],
    types: list[str]
) -> None:
    current_directory = get_current_directory()
    print("current_directory:", str(current_directory))
    abosulte_output_path = current_directory / output_path
    print("abosulte_output_path:", str(abosulte_output_path))
    absolute_input_path = current_directory / input_path
    print("absolute_input_path:", absolute_input_path)
    matched = get_points_list(absolute_input_path)
    calcAverage_simple(matched,algorithms)
    calcAverage_by_pandas(matched,algorithms)
       
generate_graphs(
    input_path = "processed/**.json",
    output_path = "graphs",
    algorithms = [
        "average",
        "max",
        "binarySearch",
        "interpolationSearch",
        "metaBinarySearch",
        "kMean",
        "mergeSort",
        "quickSort",
        "selectionSort",
        "bubbleSort",
        "matrixAddition",
        "matrixMultiplication"
    ],
    languages = ["c", "asm"],
    types=["f64"]
)
