from typing import TypedDict, Callable
import pandas
import json
import os
import pathlib
from matplotlib import pyplot as plt
from glob import glob
from itertools import product
from tqdm import tqdm
from seaborn import boxplot, lineplot, scatterplot, stripplot
from itertools import groupby
from collections import defaultdict
from statistics import mean
JS_COLOR = "red"

ASM_COLOR = "blue"

C_COLOR = "green"

class RawData(TypedDict):
    id: str
    algorithm: str
    language: str
    type: str
    time: list[float]
    repition: list[int]

HandleData = Callable[[list[RawData]], pandas.DataFrame]

GenerateGraph = Callable[[str, str, pandas.DataFrame], None]

def matchAlgorithm(algorithm: str):
    def predicate(raw_data: RawData)->bool:
        return raw_data["algorithm"] == algorithm
    return predicate

def matchLanguage(language: str):
    def predicate(raw_data: RawData)->bool:
        return raw_data["language"] == language
    return predicate

def matchType(type: str):
    def predicate(raw_data: RawData)->bool:
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

def get_raw_data_list(input_path: pathlib.Path) -> list[RawData]:
    globPaths = glob(str(input_path), recursive=True)
    matches = list(map(
        lambda file_path: get_raw_data(
            pathlib.Path(file_path)
        ),
        globPaths
    ))
    return list(filter(lambda rawData: len(rawData["repition"]) == 10, matches))


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
    matched = get_raw_data_list(absolute_input_path)
    

    # key = algorithm,language
    oragnaizedPointsRepetion1:dict[tuple[str,str],list[float]] = defaultdict(lambda :[])
    oragnaizedPointsRepetion2:dict[tuple[str,str],list[float]] = defaultdict(lambda :[])
    for point in matched:
        key = (point["algorithm"],point["language"])
        # if point["time"][0] ==0 or point["time"][1]==0:
        #     continue
    
        oragnaizedPointsRepetion1[key].append(point["time"][0])
        oragnaizedPointsRepetion2[key].append(point["time"][1])
    # key = algorithm,language
    oragnaizedMeansRepetion1:dict[tuple[str,str],float] = dict()
    oragnaizedMeansRepetion2:dict[tuple[str,str],float] = dict()
    for key in oragnaizedPointsRepetion1.keys():
        oragnaizedMeansRepetion1[key] = mean(oragnaizedPointsRepetion1[key])
        oragnaizedMeansRepetion2[key] = mean(oragnaizedPointsRepetion2[key])
    

    
    # key = algorithm,language
    records = []
    for key in oragnaizedMeansRepetion1.keys():
        rep1=oragnaizedMeansRepetion1[key]
        rep2=oragnaizedMeansRepetion2[key]
        alg,lang = key
        records.append({"algorithm":alg,"language":lang,"reption1":rep1,"repetion2":rep2,"speedUp":rep2/rep1})


    df = pandas.DataFrame.from_records(records)
    df["speedUp"] = (df["speedUp"]*100).round() 
    print(df)


    
        
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
