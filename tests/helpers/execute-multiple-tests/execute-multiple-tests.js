// @ts-check
import chalk from "chalk";
import { executeTest } from "./execute-test/execute-test.js";
import * as puppeteer from "puppeteer";
import * as shared from "../shared.js";
import { existsSync } from "node:fs";
import { appendFile, mkdir, writeFile, rm } from "node:fs/promises";
import { join } from "node:path";
import { cpus, arch, type as osType, version } from "node:os";

/**
 * @typedef {{
 *  cpuModel: string;
 *  cpuArchitecture: string;
 *  operatingSystem: string;
 *  operatingSystemVersion: string;
 * }} SystemInfo
 */
function getSystemInfo() {
  const cpuInfo = cpus();
  const cpuModel = [...new Set(cpuInfo.map((info) => info.model))].join(", ");
  return {
    cpuModel: cpuModel.trim(),
    cpuArchitecture: arch().trim(),
    operatingSystem: osType(),
    operatingSystemVersion: version(),
  };
}

/**
 * @param {string} algorithmName
 * @param {number} step
 * @returns {number}
 */
function sizeFactory(algorithmName, step) {
  if (
    [
      shared.ALGORITHMS.MATRIX.MATRIX_ADDITION,
      shared.ALGORITHMS.MATRIX.MATRIX_SUBTRACTION,
    ].includes(algorithmName)
  ) {
    return shared.matrixAdditionAlgorithmSize(step);
  } else if (
    [shared.ALGORITHMS.MATRIX.MATRIX_MULTIPLICATION].includes(algorithmName)
  ) {
    return shared.matrixMultiplicationAlgorithmSize(step);
  } else if (
    [
      shared.ALGORITHMS.BASIC.AVERAGE,
      shared.ALGORITHMS.BASIC.MAX,
      shared.ALGORITHMS.BASIC.MIN,
      shared.ALGORITHMS.BASIC.SUM,
      shared.ALGORITHMS.SORT.MERGE_SORT,
      shared.ALGORITHMS.SEARCH.BINARY_SEARCH,
      shared.ALGORITHMS.SEARCH.META_BINARY_SEARCH,
      shared.ALGORITHMS.SEARCH.INTERPOLATION_SEARCH,
    ].includes(algorithmName)
  ) {
    return shared.fastAlgorithmSize(step);
  } else if (
    [
      shared.ALGORITHMS.SORT.QUICK_SORT,
      shared.ALGORITHMS.SORT.BUBBLE_SORT,
      shared.ALGORITHMS.SORT.SELECTION_SORT,
    ].includes(algorithmName)
  ) {
    return shared.slowAlgorithmSize(step);
  } else {
    throw new Error(`Algorithm unsupported "${algorithmName}"`);
  }
}

function getCurrentDate() {
  const currentDate = new Date();
  currentDate.getFullYear();
  return `${currentDate.getDate()}_${
    currentDate.getMonth() + 1
  }_${currentDate.getFullYear()}_${currentDate.getHours()}_${currentDate.getSeconds()}_${currentDate.getMilliseconds()}`;
}

/**
 *
 * @param {string} algorithmsPath
 * @param {string} resultOutputPath
 * @return {Promise<void>}
 */
async function ensureOutputDirectoryExists(algorithmsPath, resultOutputPath) {
  if (!existsSync(algorithmsPath)) {
    throw new Error(`Directory path "${algorithmsPath}" does not exist`);
  }
  if (!existsSync(resultOutputPath)) {
    await mkdir(resultOutputPath, {
      recursive: true,
    });
  }
}

/**
 * @param {string} resultOutputPath
 * @param {string} browserVersion
 */
async function generateTestInfo(resultOutputPath, browserVersion) {
  const testsInforPath = join(resultOutputPath, "platform-info.json");
  if (existsSync(testsInforPath)) {
    await rm(testsInforPath);
  }
  await writeFile(
    testsInforPath,
    JSON.stringify(
      {
        ...getSystemInfo(),
        browser: browserVersion,
      },
      null,
      2
    )
  );
}

/**
 * @param {string} currentDate
 * @param {{
 *  resultOutputPath: string;
 *  algorithm: string;
 *  language: string;
 *  step: number;
 *  type: string;
 *  size: number;
 *  wasmPageSize: number;
 *  time: number[];
 * }} settings
 */
async function generateAlgorithmResult(currentDate, settings) {
  const {
    resultOutputPath,
    algorithm,
    language,
    step,
    type,
    size,
    wasmPageSize,
    time,
  } = settings;
  const algorithmResultOutputPath = join(
    resultOutputPath,
    "data",
    currentDate,
    algorithm,
    language,
    `wasmPageSize-${wasmPageSize}`,
    `step-${step}`
  );
  await mkdir(algorithmResultOutputPath, {
    recursive: true,
  });

  const result = {
    algorithm,
    type,
    language,
    size,
    wasmPageSize,
    time,
  };
  await writeFile(
    join(
      algorithmResultOutputPath,
      `${algorithm}_${language}_${type}_${size}.json`
    ),
    JSON.stringify(result, null, 2)
  );
}

/**
 * @param {string} outputFilePath
 * @param {{
 *  algorithm: string;
 *  type: string;
 *  language: string;
 *  size: number;
 *  step: number;
 *  wasmPageSize: number;
 *  error: unknown
 * }} data
 * @returns {Promise<void>}
 */
async function logError(outputFilePath, data) {
  let { algorithm, language, size, step, type, wasmPageSize, error } = data;
  if (error instanceof Error) {
    error = `${error.name} ${error.name}`;
  }
  await appendFile(
    outputFilePath,
    [
      `ERROR: ${algorithm}_${type}_${language}`,
      `size ${size}`,
      `step ${step}`,
      `wasm page size ${wasmPageSize}`,
      `date ${getCurrentDate()}`,
      error,
    ].join("\n") + "\n\n"
  );
}

/**
 * @param {string} outputFilePath
 * @param {{
 *  algorithm: string;
 *  type: string;
 *  language: string;
 *  size: number;
 *  step: number;
 *  wasmPageSize: number;
 * }} data
 * @returns {Promise<void>}
 */
async function logStart(outputFilePath, data) {
  let { algorithm, language, size, step, type, wasmPageSize } = data;
  await appendFile(
    outputFilePath,
    [
      `STARTED: ${algorithm}_${type}_${language}`,
      `size ${size}`,
      `step ${step}`,
      `wasm page size ${wasmPageSize}`,
      `date ${getCurrentDate()}`,
    ].join("\n") + "\n\n"
  );
}

/**
 * @param {string} outputFilePath
 * @param {{
 *  algorithm: string;
 *  type: string;
 *  language: string;
 *  size: number;
 *  step: number;
 *  wasmPageSize: number;
 * }} data
 * @returns {Promise<void>}
 */
async function logEnd(outputFilePath, data) {
  let { algorithm, language, size, type, step, wasmPageSize } = data;
  await appendFile(
    outputFilePath,
    [
      `ENDED: ${algorithm}_${type}_${language}`,
      `size ${size}`,
      `step ${step}`,
      `wasm page size ${wasmPageSize}`,
      `date ${getCurrentDate()}`,
    ].join("\n") + "\n\n"
  );
}

/**
 * @typedef {{
 *  algorithmsPath: string;
 *  algorithms: string[];
 *  types: shared.Type[];
 *  languages: shared.Language[];
 *  steps: number[];
 *  wasmPageSizes: number[];
 *  repitionInNodeJs: number;
 *  repitionInBrowser: number;
 *  resultOutputPath: string;
 * }} ExecuteMultipleTestsSettings
 */
/**
 * @param {ExecuteMultipleTestsSettings} settings
 */
export async function executeMultipleTests(settings) {
  const browser = await puppeteer.launch({
    timeout: 0,
    protocolTimeout: 2147483644,
    headless: true,
    args: ["--disable-web-security"],
  });

  await ensureOutputDirectoryExists(
    settings.algorithmsPath,
    settings.resultOutputPath
  );

  const CURRENT_DATE = getCurrentDate();
  const dataDir = join(settings.resultOutputPath, "data", CURRENT_DATE);
  if (!existsSync(dataDir)) {
    await mkdir(dataDir);
  }
  const LOG_OUTPUT_FILE_PATH = join(dataDir, "log.txt");
  if (!existsSync(LOG_OUTPUT_FILE_PATH)) {
    await writeFile(LOG_OUTPUT_FILE_PATH, "");
  }
  await generateTestInfo(settings.resultOutputPath, await browser.version());

  const start = globalThis.performance.now();
  for (let i = 0; i < settings.repitionInNodeJs; i++) {
    for (const language of settings.languages) {
      for (const type of settings.types) {
        for (const step of settings.steps) {
          for (const algorithm of settings.algorithms) {
            for (const wasmPageSize of settings.wasmPageSizes) {
              const size = sizeFactory(algorithm, step);
              const logData = {
                algorithm,
                type,
                language,
                size,
                step,
                wasmPageSize,
              };
              await logStart(LOG_OUTPUT_FILE_PATH, logData);
              try {
                console.log("algorithm: ", `${algorithm}_${type}_${language}`);
                console.log("step:", step);
                console.log("size:", size);
                console.log("wasm-page-size:", wasmPageSize);
                await executeTest(
                  {
                    algorithmName: algorithm,
                    algorithmsPath: settings.algorithmsPath,
                    language,
                    type,
                    size,
                    wasmPageSize,
                    repition: settings.repitionInBrowser,
                    async onCollectMetrics(time) {
                      await generateAlgorithmResult(CURRENT_DATE, {
                        resultOutputPath: settings.resultOutputPath,
                        algorithm,
                        language,
                        type,
                        step,
                        size,
                        wasmPageSize,
                        time,
                      });
                    },
                    async onError(error) {
                      await appendFile(
                        LOG_OUTPUT_FILE_PATH,
                        [
                          `${algorithm}_${type}_${language}`,
                          `size ${size}`,
                          `step ${step}`,
                          `wasm page size ${wasmPageSize}`,
                          `date ${getCurrentDate()}`,
                          error,
                        ].join("\n") + "\n\n"
                      );
                    },
                  },
                  browser
                );
                console.log("\n");
              } catch (error) {
                console.error(chalk.red(error));
                await logError(LOG_OUTPUT_FILE_PATH, {
                  ...logData,
                  error,
                });
              }
              await logEnd(LOG_OUTPUT_FILE_PATH, logData);
            }
          }
        }
      }
    }
  }
  const end = globalThis.performance.now();
  console.log("\n");
  const totalTime = end - start;
  const totalTimeText = `Total time:, ${totalTime}`;
  console.log(totalTimeText);

  await writeFile(
    join(settings.resultOutputPath, "total-time.txt"),
    totalTimeText
  );

  await browser.close();
}
