// @ts-check
// @ts-check
import * as shared from "./shared.js";
import { executeTest } from "./execute-test.js";
import * as puppeteer from "puppeteer";
import { writeFile, mkdir, rm } from "node:fs/promises";
import { rimraf } from "rimraf";
import { existsSync } from "node:fs";
import { getSystemInfo } from "./get-system-info.js";
import { join } from "node:path";

function getCurrentDateStr() {
  const currentDate = new Date();
  return `${currentDate.getFullYear()}-${
    currentDate.getMonth() + 1
  }-${currentDate.getDate()}-${currentDate.getMinutes()}-${currentDate.getSeconds()}-${currentDate.getMilliseconds()}`;
}
/**
 * @typedef {{
 *  algorithm: string;
 *  type: string;
 *  language: string;
 *  size: number;
 *  wasmPageSize: number;
 *  time: number[];
 * }} AlgorithmResult;
 */

/**
 * @param {shared.TestConfig} config
 */
export async function executeMultipleTests(config) {
  if (!existsSync(config.OUTPUT)) {
    await mkdir(config.OUTPUT);
  }

  const systemInfoPath = join(config.OUTPUT, "system-info.json");
  if (existsSync(systemInfoPath)) {
    await rm(systemInfoPath);
  }
  await writeFile(systemInfoPath, JSON.stringify(getSystemInfo(), null, 2));

  const configPath = join(config.OUTPUT, "config.json");
  if (existsSync(configPath)) {
    await rm(configPath);
  }
  await writeFile(configPath, JSON.stringify(config, null, 2));

  const dataOutput = join(config.OUTPUT, "data");
  if (existsSync(dataOutput)) {
    await rimraf(dataOutput);
  }
  await mkdir(dataOutput);

  const browser = await puppeteer.launch({
    timeout: 0,
    protocolTimeout: 0,
    args: [
      "--no-sandbox",
      "--disable-setuid-sandbox",
      "--disable-web-security",
      "--disable-features=IsolateOrigins,BlockInsecurePrivateNetworkRequests",
      "--disable-site-isolation-trials",
    ],
  });
  try {
    for (const type of config.TYPES) {
      for (const step of config.STEPS) {
        for (const language of config.LANGUAGES) {
          for (const wasmPageSize of config.WASM_PAGE_SIZES) {
            const size = shared.calculateSize(step);
            /**
             * @param {string} algorithmName
             * @param {string} algorithmExecutionPath
             * @returns {Promise<void>}
             */
            async function execute(algorithmName, algorithmExecutionPath) {
              /**
               * @type {AlgorithmResult[]}
               */
              const results = [];
              console.log("start!:");
              console.log("algorithmName!:", algorithmName);
              console.log("type!:", type);
              console.log("language!:", language);
              console.log("step!:", step);
              console.log("size!:", size);
              console.log("wasmPageSize:", wasmPageSize);

              await executeTest(
                {
                  algorithmsPath: config.ALGORITHMS_PATH,
                  algorithmExecutionPath,
                  algorithmName,
                  type,
                  language,
                  size,
                  repition: config.REPITION,
                  wasmPageSize,
                  async onCollectMetrics(time) {
                    results.push({
                      algorithm: algorithmName,
                      type,
                      language,
                      size,
                      wasmPageSize,
                      time,
                    });
                  },
                },
                browser
              );

              const algorithmPath = join(dataOutput, algorithmName);
              if (!existsSync(algorithmPath)) {
                await mkdir(algorithmPath);
              }

              const languagePath = join(algorithmPath, language);
              if (!existsSync(languagePath)) {
                await mkdir(languagePath);
              }

              const stepPath = join(languagePath, `step-${step}`);
              if (!existsSync(stepPath)) {
                await mkdir(stepPath);
              }

              const fileName = `${algorithmName}_${type}_${getCurrentDateStr()}.json`;
              const algorithmResultPath = join(stepPath, fileName);
              await writeFile(
                algorithmResultPath,
                JSON.stringify(results, null, 2)
              );
              console.log("end!:");
              console.log("\n");
            }

            for (const algorithmName of config.ARRAY_ALGORITHMS) {
              try {
                await execute(
                  algorithmName,
                  config.ARRAY_ALGORITHM_EXECUTION_PATH
                );
              } finally {
              }
            }
            for (const algorithmName of config.MATRIX_ALGORITHMS) {
              try {
                await execute(
                  algorithmName,
                  config.MATRIX_ALGORITHM_EXECUTION_PATH
                );
              } finally {
              }
            }
            for (const algorithmName of config.SEARCH_ALGORITHMS) {
              try {
                await execute(
                  algorithmName,
                  config.SEARCH_ALGORITHM_EXECUTION_PATH
                );
              } finally {
              }
            }
          }
        }
      }
    }
  } finally {
    await browser.close();
  }
}
