// @ts-check
import * as shared from "./shared.js";
import * as puppeteer from "puppeteer";
import chalk from "chalk";
import { writeFile, rm } from "node:fs/promises";
import { join, relative } from "node:path";
import { existsSync } from "node:fs";
import { v4 as uuid } from "uuid";

/**
 *
 * @param {string} algorithmsPath
 * @param {string} algorithmExecutionPath
 * @returns {string}
 */
function htmlFile(algorithmsPath, algorithmExecutionPath) {
  return `
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <script type="module" src="${algorithmExecutionPath}"></script>
      <script type="module" src="${algorithmsPath}"></script>
    </head>
    <body></body>
  </html>
  `.trim();
}

/**
 * @typedef {{
 *  time: number;
 *  memory: number;
 * }} AlgorithmMetricData
 */

/**
 * @param {puppeteer.ConsoleMessage} message
 * @returns {number | null}
 */
function extractTimeFromConsoleMessage(message) {
  if (message.type() !== "log") {
    return null;
  }
  const text = message.text();
  if (!text.startsWith(shared.DATA_IDENTIFIER.ALGORITHM_TIME)) {
    return null;
  }
  const time = Number(text.replace(shared.DATA_IDENTIFIER.ALGORITHM_TIME, "").trim());
  return time;
}

const BASIC_ALGORITHMS = {
  AVERAGE: "average",
  MAX: "max",
  MIN: "min",
  SUM: "sum",
};
const MATRIX_ALGORITHMS = {
  MATRIX_ADDITION: "matrixAddition",
  MATRIX_MULTIPLICATION: "matrixMultiplication",
  MATRIX_SUBTRACTION: "matrixSubtraction",
};
const SEARCH_ALGORITHMS = {
  BINARY_SEARCH: "binarySearch",
  INTERPOLATION_SEARCH: "interpolationSearch",
  META_BINARY_SEARCH: "metaBinarySearch",
};
const SORT_ALGORITHMS = {
  MERGE_SORT: "mergeSort",
  QUICK_SORT: "quickSort",
  SELECTION_SORT: "selectionSort",
  BUBBLE_SORT: "bubbleSort",
};
export const ALGORITHMS = {
  BASIC: BASIC_ALGORITHMS,
  MATRIX: MATRIX_ALGORITHMS,
  SEARCH: SEARCH_ALGORITHMS,
  SORT: SORT_ALGORITHMS,
};

/**
 * @typedef {{
 *  algorithmName: string;
 *  type: shared.Type;
 *  language: shared.Language;
 *  size: number;
 *  repition: number;
 *  algorithmsPath: string;
 *  algorithmExecutionPath: string;
 *  onCollectMetrics(time: number[]): Promise<void>,
 *  wasmPageSize: number;
 * }} ExecuteTestSettings
 */

/**
 * @param {ExecuteTestSettings} algorithmSettings
 * @param {puppeteer.Browser} browser
 * @returns {Promise<void>}
 */
export async function executeTest(algorithmSettings, browser) {
  const {
    algorithmName,
    type,
    language,
    size,
    repition,
    wasmPageSize,
    algorithmsPath,
    algorithmExecutionPath,
    onCollectMetrics,
  } = algorithmSettings;

  /**
   * @type {number[]}
   */
  const timeData = [];
  let page = await browser.newPage();
  try {
    if (!existsSync(algorithmsPath)) {
      throw new Error(`File path "${algorithmsPath}" does not exist`);
    }
    if (!existsSync(algorithmExecutionPath)) {
      throw new Error(`File path "${algorithmExecutionPath}" does not exist`);
    }

    page
      .on("pageerror", (error) => {
        console.error(chalk.red(error));
      })
      .on("console", (message) => {
        console.log("browser!:", chalk.greenBright(message.text()));
        const time = extractTimeFromConsoleMessage(message);
        if (!time) {
          return;
        }
        timeData.push(time);
      });

    const currentFilePath = new URL(import.meta.url).pathname.slice(1);

    const algorithmExecutionPathRelative = (
      "./" +
      relative(join(currentFilePath, ".."), algorithmExecutionPath).replace(
        /\\/g,
        "/"
      )
    ).replace(/\/\//, "/");

    const htmlFilePath = join(
      currentFilePath,
      "..",
      `temp-${encodeURI(uuid())}.html`
    );
    await writeFile(
      htmlFilePath,
      htmlFile(algorithmsPath, algorithmExecutionPathRelative)
    );

    await page.goto(htmlFilePath, {
      timeout: 0,
      waitUntil: "domcontentloaded",
    });

    const algorithmPathRelative = (
      "./" +
      relative(join(currentFilePath, ".."), algorithmsPath).replace(/\\/g, "/")
    ).replace(/\/\//, "/");

    console.log("algorithmPath!:", algorithmPathRelative);
    console.log("algorithmExecutionPath!:", algorithmExecutionPathRelative);

    await page.addScriptTag({
      type: "module",
      content: `
      import { executeAlgorithm } from "${algorithmExecutionPathRelative}";
      import * as algorithms from "${algorithmPathRelative}";
      try {
        executeAlgorithm({
          algorithmName: "${algorithmName}",
          type: "${type}",
          language: "${language}",
          size: ${size},
          repition: ${repition},
          wasmPageSize: ${wasmPageSize}
        }, algorithms);
      } finally {
        window.document.body.setAttribute("isDone", true);
      }
    `.trim(),
    });
    await page.waitForSelector(`body[isDone="true"]`, {
      timeout: 0,
    });

    onCollectMetrics(timeData);
    await rm(htmlFilePath);
  } finally {
    await page.close();
  }
}
