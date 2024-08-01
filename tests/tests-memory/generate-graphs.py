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
JS_COLOR = "red"

ASM_COLOR = "blue"

C_COLOR = "green"

class RawData(TypedDict):
    id: str
    algorithm: str
    language: str
    type: str
    step: str
    time: list[float]
    wasmPageSize: list[float]

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

def raw_data_to_data_frames(raw_data_arr: list[RawData]) -> list[pandas.DataFrame]:
    data_frames: list[pandas.DataFrame] = []
    for item in raw_data_arr:
        data_frame = pandas.DataFrame.from_dict(
            data = dict(item),
            orient="columns",
        )[["time", "wasmPageSize"]]
        data_frames.append(data_frame)
    return data_frames

def original(array: list[RawData]) -> pandas.DataFrame:
    df = pandas.concat(raw_data_to_data_frames(array))
    return df


def stripplot_graph(file_output_path: str, title: str, data_frame: pandas.DataFrame) -> None:
    fig, axis = plt.subplots()
    stripplot(data=data_frame, x="wasmPageSize", y="time", jitter=0)
    axis.set_title(title)
    fig.tight_layout()
    fig.savefig(fname = file_output_path, format = "png")
    plt.close()

def box_graph(file_output_path: str, title: str, data_frame: pandas.DataFrame) -> None:
    fig, axis = plt.subplots()
    boxplot(data=data_frame, x="wasmPageSize", y="time",hue="wasmPageSize")
    axis.set_title(title)
    fig.tight_layout()
    fig.savefig(fname = file_output_path, format = "png")
    plt.close()

def line_graph(file_output_path: str, title: str, data_frame: pandas.DataFrame) -> None:
    fig, axis = plt.subplots()
    lineplot(data=data_frame, x="wasmPageSize", y="time",estimator="mean")
    scatterplot(data=data_frame, x="wasmPageSize", y="time")
    axis.set_title(title)
    fig.tight_layout()
    fig.savefig(fname = file_output_path, format = "png")
    plt.close()

def generate_graph_combo(
    file_output_path: str,
    title: str,
    raw_data: list[RawData],
    handle_data: HandleData,
    generate_graph: GenerateGraph
):  
    generate_graph(
        file_output_path,
        title,
        handle_data(raw_data)
    )


def get_raw_data(file_path: pathlib.Path) -> RawData:
    file = open(file_path)
    data = RawData(json.load(file))
    file.close()
    file_name = str(file_path).split("\\")[-1]
    algorithName, type, language, step, *rest = file_name.split("_")
    id = "_".join(rest).split(".")[0]
    data["id"] = id
    data["algorithm"] = algorithName
    data["type"] = type
    data["language"] = language
    data["step"] = step
    return data

def get_raw_data_list(input_path: pathlib.Path) -> list[RawData]:
    globPaths = glob(str(input_path), recursive=True)
    matches = list(map(
        lambda file_path: get_raw_data(
            pathlib.Path(file_path)
        ),
        globPaths
    ))
    return list(filter(lambda rawData: len(rawData["wasmPageSize"]) == 5, matches))

def group_raw_data_by_steps(matches: list[RawData]):
    return { key:list(iter)
        for key, iter in groupby(
            sorted(
                matches,
                key=lambda x: f"{x["algorithm"]}_{x["language"]}_{x["type"]}_{x["step"]}"
            ),
            key=lambda x: f"{x["algorithm"]}_{x["language"]}_{x["type"]}_{x["step"]}"
        )
    }

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
    generate_graphs: list[GenerateGraph] = [
        stripplot_graph,
        box_graph,
        line_graph
    ]

    for algorithm, language, type, generate_graph in tqdm(
        product(
            algorithms,
            languages,
            types,
            generate_graphs
        )
    ):
        grouped = group_raw_data_by_steps(
            list(
                filter(
                    matchAlgorithm(algorithm),
                    filter(
                        matchLanguage(language),
                        filter(
                            matchType(type),
                            matched
                        )
                    )
                )
            )
        )

        for group_name, raw_data in tqdm(grouped.items()):
            algorithm_output_path = abosulte_output_path / algorithm / language / generate_graph.__name__.lower()
            os.makedirs(name = algorithm_output_path, exist_ok = True)
            generate_graph_combo(
                file_output_path = str(algorithm_output_path / f"./{group_name}.png"),
                title = group_name,
                raw_data = raw_data,
                handle_data = original,
                generate_graph = generate_graph
            )
        
generate_graphs(
    input_path = "processed/**.json",
    output_path = "graphs",
    algorithms = ["average"],
    languages = ["c", "asm"],
    types=["f64"]
)
