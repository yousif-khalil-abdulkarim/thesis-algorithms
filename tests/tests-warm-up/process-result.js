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
 * @param {string} string
 * @return {boolean}
 */
function isNumber(string) {
  return /^(\d|_)+$/.test(string);
}

/**
 * @param {string} path
 */
function getDatePathSegment(path) {
  const dateSegmentPath = path.split(sep).find(isNumber);
  if (!dateSegmentPath) {
    throw new Error(`Path "${path}" is missign date segement`);
  }
  return dateSegmentPath;
}

/**
 * @param {AsyncIterable<RawData>} rawDataIterable
 * @returns {AsyncIterable<[
 *  algorithm: string,
 *  algorithmData: Array<{
 *    time: number;
 *    size: number;
 *  }>
 * ]>}
 */
async function* groupData(rawDataIterable) {
  /**
   * @type {Map<
   *  string,
   *  Array<{
   *    time: number;
   *    size: number;
   *  }>
   * >}
   */
  const map = new Map();
  for await (const rawData of rawDataIterable) {
    const key = [
      rawData.data.algorithm,
      rawData.data.type,
      rawData.data.language,
      getDatePathSegment(rawData.path),
    ].join("_");
    const previousRawData = map.get(key);
    map.set(key, [
      ...previousRawData ?? [],
      ...rawData.data.time.map((time) => ({
        time,
        size: rawData.data.size,
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
 *    size: number;
 *  }>
 * ]>} groupedDataIterable
 * @returns {AsyncIterable<[
 *  algorithm: string,
 *  algorithmData: {
 *    time: number[];
 *    size: number[];
 *  }
 * ]>}
 */
async function* toPandasObject(groupedDataIterable) {
  for await (const [algorithm, groupedData] of groupedDataIterable) {
    yield [
      algorithm,
      {
        size: groupedData.map((data) => data.size),
        time: groupedData.map((data) => data.time),
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
