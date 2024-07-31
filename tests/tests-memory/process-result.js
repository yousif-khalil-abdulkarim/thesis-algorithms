// @ts-check
import { globStream } from "glob";
import { mkdir, readFile, writeFile } from "node:fs/promises";
import { join, sep } from "node:path";
import * as shared from "../helpers/shared.js";
import { existsSync } from "node:fs";

/**
 * @typedef {{
 *  path: string;
 *  data: {
 *    algorithm: string;
 *    type: shared.Type;
 *    language: shared.Language;
 *    size: number;
 *    wasmPageSize: number;
 *    time: number[];
 *  };
 * }} RawData
 */

/**
 * @param {string[]} rootPaths
 * @param {string[]} ingorePaths
 * @returns {AsyncIterable<RawData>}
 */
async function* readData(rootPaths, ingorePaths) {
  let index = 0;
  for await (const path of globStream(rootPaths, {
    absolute: true,
    ignore: ingorePaths,
  })) {
    const file = await readFile(path);
    const json = file.toString("utf-8");
    const data = JSON.parse(json);
    yield {
      path,
      data,
    };
  }
}

/**
 * @param {string} path
 */
function getSegments(path) {
  const segements = path.split("\\");
  const size = segements.at(-1)?.split(".")[0].split("_").at(-1);
  const step = segements.at(-2);
  const wasmPageSize = segements.at(-3);
  const language = segements.at(-4);
  const algorithm = segements.at(-5);
  const date = segements.at(-6);
  return {
    date,
    path,
    size,
    step,
    wasmPageSize,
    language,
    algorithm,
  };
}

/**
 * @param {AsyncIterable<RawData>} rawDataIterable
 * @returns {AsyncIterable<[
 *  algorithm: string,
 *  algorithmData: Array<{
 *    time: number;
 *    wasmPageSize: number;
 *  }>
 * ]>}
 */
async function* groupData(rawDataIterable) {
  /**
   * @type {Map<
   *  string,
   *  Array<{
   *    time: number;
   *    wasmPageSize: number;
   *  }>
   * >}
   */
  const map = new Map();
  for await (const rawData of rawDataIterable) {
    const key = [
      rawData.data.algorithm,
      rawData.data.type,
      rawData.data.language,
      getSegments(rawData.path).step,
      getSegments(rawData.path).date,
    ].join("_");
    const previousRawData = map.get(key);
    map.set(key, [
      ...(previousRawData ?? []),
      ...rawData.data.time.map((time) => ({
        time,
        wasmPageSize: rawData.data.wasmPageSize,
      })),
    ]);
  }
  yield* map;
}

/**
 * @param {AsyncIterable<[
 *  algorithm: string,
 *  algorithmData: Array<{
 *    time: number;
 *    wasmPageSize: number;
 *  }>
 * ]>} groupedDataIterable
 * @returns {AsyncIterable<[
 *  algorithm: string,
 *  algorithmData: {
 *    time: number[];
 *    wasmPageSize: number[]
 *  }
 * ]>}
 */
async function* toPandasObject(groupedDataIterable) {
  for await (const [algorithm, groupedData] of groupedDataIterable) {
    const sortedGroupedData = groupedData.sort((a, b) => {
      return a.wasmPageSize - b.wasmPageSize;
    });
    yield [
      algorithm,
      {
        time: sortedGroupedData.map((data) => data.time),
        wasmPageSize: sortedGroupedData.map((data) => data.wasmPageSize),
      },
    ];
  }
}

/**
 * @param {{
 *  inputPath: string[];
 *  ingorePath: string[];
 *  outputPath: string;
 * }} settings
 */
export async function processResult(settings) {
  const { inputPath, outputPath, ingorePath } = settings;
  if (!existsSync(outputPath)) {
    await mkdir(outputPath, {
      recursive: true,
    });
  }
  for await (const [algorithm, pandasData] of toPandasObject(
    groupData(readData(inputPath, ingorePath))
  )) {
    const fileName = `${algorithm}.json`;
    await writeFile(
      join(outputPath, fileName),
      JSON.stringify(pandasData, null, 2)
    );
  }
}
