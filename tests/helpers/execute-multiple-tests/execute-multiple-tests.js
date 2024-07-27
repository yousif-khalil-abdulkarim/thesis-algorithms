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
 * @returns {string}
 */
function getCurrentDate() {
  const currentDate = new Date();
  currentDate.getFullYear();
  return `${currentDate.getDate()}_${
    currentDate.getMonth() + 1
  }_${currentDate.getFullYear()}_${currentDate.getHours()}_${currentDate.getSeconds()}_${currentDate.getMilliseconds()}`;
}

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
 *
 * @param {string} algorithmsPath
 * @param {string} resultOutputPath
 * @return {Promise<void>}
 */
async function ensureOutputFolderExists(algorithmsPath, resultOutputPath) {
  if (!existsSync(algorithmsPath)) {
    throw new Error(`Folder path "${algorithmsPath}" does not exist`);
  }
  if (!existsSync(resultOutputPath)) {
    await mkdir(resultOutputPath, {
      recursive: true,
    });
  }
}

/**
 * @param {string} resultOutputPath
 * @returns {Promise<string>}
 */
async function ensureDataOutputFolderExists(resultOutputPath) {
  const dataOutputFolder = join(resultOutputPath, "data", getCurrentDate());
  console.log(dataOutputFolder);
  if (!existsSync(dataOutputFolder)) {
    await mkdir(dataOutputFolder, {
      recursive: true,
    });
  }
  return dataOutputFolder;
}

/**
 * @param {string} dataOutputFolder
 * @returns {Promise<string>}
 */
async function ensureLogFileExists(dataOutputFolder) {
  const logOutputFilePath = join(dataOutputFolder, "log.txt");
  if (!existsSync(logOutputFilePath)) {
    await writeFile(logOutputFilePath, "");
  }
  return logOutputFilePath;
}

/**
 * @param {string} resultOutputPath
 * @param {string} browserVersion
 * @returns {Promise<void>}
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
 * @param {string} resultOutputPath
 * @param {{
 *  algorithm: string;
 *  language: string;
 *  step: number;
 *  type: string;
 *  size: number;
 *  wasmPageSize: number;
 *  time: number[];
 *  repition: number;
 * }} settings
 */
async function generateAlgorithmResult(resultOutputPath, settings) {
  const {
    algorithm,
    language,
    step,
    type,
    size,
    wasmPageSize,
    time,
    repition,
  } = settings;
  console.log("algorithm: ", `${algorithm}_${type}_${language}`);
  console.log("step:", step);
  console.log("size:", size);
  console.log("repition:", repition);
  console.log("wasm-page-size:", wasmPageSize);
  const algorithmResultOutputPath = join(
    resultOutputPath,
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
  console.error(chalk.red(error));
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

  for (let repition = 1; repition <= settings.repitionInNodeJs; repition++) {
    const start = globalThis.performance.now();
    await ensureOutputFolderExists(
      settings.algorithmsPath,
      settings.resultOutputPath
    );
    const dataOutputFolder = await ensureDataOutputFolderExists(
      settings.resultOutputPath
    );
    await generateTestInfo(dataOutputFolder, await browser.version());
    const lotOutputFilePath = await ensureLogFileExists(dataOutputFolder);

    for (const language of settings.languages) {
      for (const type of settings.types) {
        for (const step of settings.steps) {
          for (const algorithm of settings.algorithms) {
            for (const wasmPageSize of settings.wasmPageSizes) {
              const size = shared.sizeFactory(algorithm, step);
              const logData = {
                algorithm,
                type,
                language,
                size,
                step,
                wasmPageSize,
              };
              await logStart(lotOutputFilePath, logData);
              try {
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
                      await generateAlgorithmResult(dataOutputFolder, {
                        algorithm,
                        language,
                        type,
                        step,
                        size,
                        wasmPageSize,
                        time,
                        repition,
                      });
                    },
                    async onError(error) {
                      await logError(lotOutputFilePath, {
                        ...logData,
                        error,
                      });
                    },
                  },
                  browser
                );
                console.log("\n");
              } catch (error) {
                console.error(chalk.red(error));
                await logError(lotOutputFilePath, {
                  ...logData,
                  error,
                });
              }
              await logEnd(lotOutputFilePath, logData);
            }
          }
        }
      }
    }

    const end = globalThis.performance.now();
    console.log("\n");
    const totalTime = end - start;
    const totalTimeText = `Total time: ${totalTime}`;
    console.log(totalTimeText);
    await writeFile(join(dataOutputFolder, "total-time.txt"), totalTimeText);
  }

  await browser.close();
}
