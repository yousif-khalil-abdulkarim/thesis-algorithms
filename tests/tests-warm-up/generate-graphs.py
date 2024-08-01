from typing import TypedDict, Callable
import pandas
import json
import os
import pathlib
from matplotlib import pyplot as plt
from glob import glob
from itertools import product
from tqdm import tqdm
from seaborn import barplot

JS_COLOR = "red"

ASM_COLOR = "blue"

C_COLOR = "green"

class RawData(TypedDict):
    id: str
    algorithm: str
    language: str
    type: str
    time: list[float]
    size: list[float]

class RelatedDataFrame(TypedDict):
    js: pandas.DataFrame
    asm: pandas.DataFrame
    c: pandas.DataFrame

HandleData = Callable[[list[RawData]], pandas.DataFrame]

GenerateGraph = Callable[[str, str, pandas.DataFrame], None]

def get_current_directory() -> pathlib.Path:
    return pathlib.Path(os.path.dirname(os.path.abspath(__file__)))

def raw_data_to_data_frames(raw_data_arr: list[RawData]) -> list[pandas.DataFrame]:
    data_frames: list[pandas.DataFrame] = []
    for item in raw_data_arr:
        data_frame = pandas.DataFrame.from_dict(
            data = dict(item),
            orient="columns",
        )[["time", "size"]].transpose()
        data_frames.append(data_frame)
    return data_frames

def original(array: list[RawData]) -> pandas.DataFrame:
    resultDataFrame = pandas.DataFrame()
    resultDataFrame["size"] = pandas.DataFrame.from_dict(dict(array[0]))["size"] 
    resultDataFrame["time"] = pandas.concat(raw_data_to_data_frames(array)).loc["time"]
    return resultDataFrame

def average(array: list[RawData]) -> pandas.DataFrame:
    resultDataFrame = pandas.DataFrame()
    resultDataFrame["size"] = pandas.DataFrame.from_dict(dict(array[0]))["size"] 
    resultDataFrame["time"] = pandas.concat(raw_data_to_data_frames(array)).loc["time"].mean(axis=0)
    return resultDataFrame

def min(array: list[RawData]) -> pandas.DataFrame:
    resultDataFrame = pandas.DataFrame()
    resultDataFrame["size"] = pandas.DataFrame.from_dict(dict(array[0]))["size"] 
    resultDataFrame["time"] = pandas.concat(raw_data_to_data_frames(array)).loc["time"].min(axis=0)
    return resultDataFrame

def max(array: list[RawData]) -> pandas.DataFrame:
    resultDataFrame = pandas.DataFrame()
    resultDataFrame["size"] = pandas.DataFrame.from_dict(dict(array[0]))["size"] 
    resultDataFrame["time"] = pandas.concat(raw_data_to_data_frames(array)).loc["time"].max(axis=0)
    return resultDataFrame

def standard_deviation(array: list[RawData]) -> pandas.DataFrame:
    resultDataFrame = pandas.DataFrame()
    resultDataFrame["size"] = pandas.DataFrame.from_dict(dict(array[0]))["size"] 
    resultDataFrame["time"] = pandas.concat(raw_data_to_data_frames(array)).loc["time"].std(axis=0)
    return resultDataFrame

def generate_scatter_graph(file_output_path: str, title: str, data_frame: pandas.DataFrame) -> None:
    fig, axis = plt.subplots()
    axis.scatter(data_frame["size"], data_frame["time"])
    axis.set_xscale("linear")
    axis.set_yscale("linear")
    axis.set_ylabel("time")
    axis.set_xlabel("size")
    axis.set_title(title)
    fig.tight_layout()
    fig.savefig(fname = file_output_path, format = "png")
    plt.close()

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

def generate_original_graph(output_path: str, raw_data: list[RawData]):
    for data in tqdm(raw_data, desc="Generating original graph"):
        file_name = f"{data["algorithm"]}_{data["type"]}_{data["language"]}_{data["id"]}.png"
        file_output_path = str(pathlib.Path(output_path) / file_name)
        generate_scatter_graph(file_output_path, f"Original {data["algorithm"]}", original([data]))

def generate_original_graph_for_each_result(
    algorithms: list[str],
    raw_data: list[RawData],
    output_path: pathlib.Path
):
    for algorithm in tqdm(list(algorithms), desc = "Started a new algorithm"):
        alg_data = list(filter(matchAlgorithm(algorithm), raw_data))
        output_path_raw = output_path / algorithm / "raw"
        print("output_path_raw:", output_path_raw)
        os.makedirs(name = output_path_raw, exist_ok = True)
        generate_original_graph(
            output_path = str(output_path_raw), 
            raw_data = list(alg_data)
        )

def generate_for_each_result(
    algorithms: list[str],
    languages: list[str],
    types: list[str],
    handle_data_fns: list[HandleData],
    raw_data: list[RawData],
    output_path: pathlib.Path
):
    for algorithm, language, type, handle_data in tqdm(
        list(
            product(
                algorithms,
                languages,
                types,
                handle_data_fns
            )
        ),
        desc="Generating for each language and type"
    ):
        alg_data = list(filter(matchAlgorithm(algorithm), raw_data))
        title = f"alg-{algorithm}_{type}_{language}_{handle_data.__name__}".lower()
        output_path_transform = output_path / algorithm / language
        os.makedirs(name = output_path_transform, exist_ok = True)
        print("output_path:", output_path_transform)
        generate_graph_combo(
            file_output_path = str(output_path_transform / f"{title}.png"),
            title = title,
            languages = [language],
            types = [type],
            raw_data = alg_data,
            handleData = handle_data,
            generateGraph = generate_scatter_graph
        )

def generate_combined_for_each_language(
    algorithms: list[str],
    languages: list[str],
    types: list[str],
    handle_data_fns: list[HandleData],
    raw_data: list[RawData],
    output_path: pathlib.Path
):
    for algorithm, language, handle_data in tqdm(list(product(
        algorithms,
        languages,
        handle_data_fns
    )), desc="Generating total for each language"):
        alg_data = list(filter(matchAlgorithm(algorithm), raw_data))
        title = f"alg-{algorithm}_{language}_{handle_data.__name__}".lower()
        output_path_transform = output_path / algorithm / language
        os.makedirs(name = output_path_transform, exist_ok = True)
        print("output_path:", output_path_transform)
        generate_graph_combo(
            file_output_path = str(output_path_transform / f"{title}.png"),
            title = title,
            languages = [language],
            types = types,
            raw_data = alg_data,
            handleData = handle_data,
            generateGraph = generate_scatter_graph
        )

def generate_graph_combo(
    file_output_path: str,
    title: str,
    languages: list[str],
    types: list[str],
    raw_data: list[RawData],
    handleData: HandleData,
    generateGraph: GenerateGraph
):  
    generateGraph(
        file_output_path,
        title,
        handleData(
            list(
                filter(
                    lambda raw_data: raw_data["type"] in types and raw_data["language"] in languages,
                    raw_data
                )
            )
        )
    )

def generate_multi_scatter_graph(file_output_path: str, title: str, related_data_frame: RelatedDataFrame) -> None:
    related_data_frame["js"]["lang"]="js"
    related_data_frame["c"]["lang"]="c"
    related_data_frame["asm"]["lang"]="asm"

    df_full = pandas.concat([
        related_data_frame["js"],
        related_data_frame["c"],
        related_data_frame["asm"],
    ])

    plt.subplots(figsize=(8, 6))
    barplot(data=df_full, x="size", y="time", hue="lang",errorbar="ci")
    plt.title(title)
    plt.xticks(rotation=90)
    plt.savefig(fname = file_output_path, format = "png",bbox_inches='tight')
    plt.close()

def convert(raw_data: list[RawData]) -> pandas.DataFrame:
    return pandas.concat(list(map(lambda raw_data: pandas.DataFrame.from_dict(dict(raw_data)), raw_data)))

def generate_combined_for_language(
    algorithms: list[str],
    types: list[str],
    raw_data: list[RawData],
    output_path: pathlib.Path
):
    for algorithm, type_ in product(
        algorithms,
        types
    ):
        alg_data: list[RawData] = list(
            filter(
                matchType(type_),
                filter(
                    matchAlgorithm(algorithm), 
                    raw_data
                )
            )
        )
        title = f"alg-{algorithm}-{type_}".lower()
        output_path_transform = output_path / algorithm
        os.makedirs(name = output_path_transform, exist_ok = True)
        print("output_path:", output_path_transform)

        js_data_frames = convert(list(filter(matchLanguage("js"), alg_data)))
        asm_data_frames = convert(list(filter(matchLanguage("asm"), alg_data)))
        c_data_frames = convert(list(filter(matchLanguage("c"), alg_data)))

        generate_multi_scatter_graph(
            file_output_path = str(output_path_transform / f"{title}.png"),
            title = title,
            related_data_frame = {
                "js": js_data_frames,
                "asm": asm_data_frames,
                "c": c_data_frames
            }
        )

def generate_combined_for_all(
    algorithms: list[str],
    raw_data: list[RawData],
    output_path: pathlib.Path
):
    for algorithm in algorithms:
        alg_data: list[RawData] = list(filter(matchAlgorithm(algorithm), raw_data))
        title = f"alg-{algorithm}".lower()
        output_path_transform = output_path / algorithm
        os.makedirs(name = output_path_transform, exist_ok = True)
        print("output_path:", output_path_transform)

        js_data_frames = convert(list(filter(matchLanguage("js"), alg_data)))
        asm_data_frames = convert(list(filter(matchLanguage("asm"), alg_data)))
        c_data_frames = convert(list(filter(matchLanguage("c"), alg_data)))

        generate_multi_scatter_graph(
            file_output_path = str(output_path_transform / f"{title}.png"),
            title = title,
            related_data_frame = {
                "js": js_data_frames,
                "asm": asm_data_frames,
                "c": c_data_frames
            }
        )

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
    return list(filter(lambda raw_data: len(raw_data["size"]) == 23, matches))
    
def generate_graphs(
    input_path: str,
    output_path: str,
    algorithms: list[str],
    languages: list[str],
    types: list[str],
    handle_data_fns: list[HandleData]
) -> None:
    current_directory = get_current_directory()
    print("current_directory:", str(current_directory))
    abosulte_output_path = current_directory / output_path
    print("abosulte_output_path:", str(abosulte_output_path))
    absolute_input_path = current_directory / input_path
    print("absolute_input_path:", absolute_input_path)
    matches = get_raw_data_list(absolute_input_path)
    
    generate_original_graph_for_each_result(
        algorithms = algorithms,
        output_path = abosulte_output_path,
        raw_data = matches
    )

    generate_for_each_result(
        algorithms = algorithms,
        languages = languages,
        types = types,
        handle_data_fns = handle_data_fns,
        raw_data = matches,
        output_path = abosulte_output_path
    )
    
    generate_combined_for_each_language(
        algorithms = algorithms,
        languages = languages,
        types = types,
        handle_data_fns = handle_data_fns,
        raw_data = matches,
        output_path = abosulte_output_path
    )

    generate_combined_for_language(
        algorithms = algorithms,
        types = types,
        raw_data = matches,
        output_path = abosulte_output_path
    )

    generate_combined_for_all(
        algorithms = algorithms,
        raw_data = matches,
        output_path = abosulte_output_path
    )

generate_graphs(
    input_path = "processed/**/*.json",
    output_path = "graphs",
    algorithms = ["average"],
    languages = ["js", "c", "asm"],
    types = ["f64", "f32", "u32", "i32", "u16", "i16", "u8", "i8"],
    handle_data_fns = [average, min, max, standard_deviation],
)
