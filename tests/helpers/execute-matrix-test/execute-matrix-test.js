// @ts-check
import chalk from "chalk";
import * as puppeteer from "puppeteer";
import { join, relative } from "node:path";
import { v4 as uuid } from "uuid";
import { existsSync } from "node:fs";
import { rm, writeFile } from "node:fs/promises";
import * as shared from "../shared.js";

/**
 * @param {string} path
 * @returns
 */
function toRelativeJsPath(path) {
  return ("./" + path.replace(/\\/g, "/")).replace(/\/\//, "/");
}

/**
 *
 * @param {string} algorithmsPath
 * @param {string} algorithmExecutionPath
 * @param {string} dataPath
 * @returns {string}
 */
function htmlFile(algorithmsPath, algorithmExecutionPath, dataPath) {
  return `
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <script type="module" src="${algorithmExecutionPath}"></script>
      <script type="module" src="${algorithmsPath}"></script>
      <script type="module" src="${dataPath}"></script>
    </head>
    <body></body>
  </html>
  `.trim();
}

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
  const time = Number(
    text.replace(shared.DATA_IDENTIFIER.ALGORITHM_TIME, "").trim()
  );
  return time;
}

/**
 * @typedef {{
 *  algorithmName: string;
 *  type: shared.Type;
 *  language: shared.Language;
 *  repition: number;
 *  dataPath: string;
 *  algorithmsPath: string;
 *  onCollectMetrics(time: number[]): Promise<void>,
 *  wasmPageSize: number;
 * }} ExecuteTestSettings
 */

/**
 * @param {ExecuteTestSettings} settings
 * @param {puppeteer.Browser} browser
 * @returns {Promise<void>}
 */
export async function executeMatrixTest(settings, browser) {
  const {
    algorithmName,
    type,
    language,
    repition,
    onCollectMetrics,
    wasmPageSize,
    dataPath,
    algorithmsPath,
  } = settings;

  if (!existsSync(dataPath)) {
    throw new Error(`File path "${dataPath}" does not exist`);
  }

  if (!existsSync(algorithmsPath)) {
    throw new Error(`File path "${algorithmsPath}" does not exist`);
  }

  const CURRENT_FOLDER_PATH = join(
    new URL(import.meta.url).pathname.slice(1),
    ".."
  );
  const HTML_FILE_PATH = join(
    CURRENT_FOLDER_PATH,
    `temp-${encodeURI(uuid())}.html`
  );

  const ALGORITHM_EXECUTION_PATH = join(
    CURRENT_FOLDER_PATH,
    "execute-matrix-algorithm.js"
  );
  if (!existsSync(ALGORITHM_EXECUTION_PATH)) {
    throw new Error(`File path "${ALGORITHM_EXECUTION_PATH}" does not exist`);
  }

  /**
   * @type {number[]}
   */
  const timeData = [];
  let page = await browser.newPage();

  try {
    page
      .on("pageerror", (error) => {
        console.error(chalk.red(error));
      })
      .on("console", (message) => {
        console.log("browser!:", chalk.green(message.text()));
        const time = extractTimeFromConsoleMessage(message);
        if (time === null) {
          return;
        }
        timeData.push(time);
      });

    const algorithmExecutionPathRelative = toRelativeJsPath(
      relative(CURRENT_FOLDER_PATH, ALGORITHM_EXECUTION_PATH)
    );
    const dataPathRelative = toRelativeJsPath(
      relative(CURRENT_FOLDER_PATH, dataPath)
    );
    await writeFile(
      HTML_FILE_PATH,
      htmlFile(algorithmsPath, algorithmExecutionPathRelative, dataPathRelative)
    );

    await page.goto(HTML_FILE_PATH, {
      timeout: 0,
      waitUntil: "domcontentloaded",
    });
    const algorithmPathRelative = toRelativeJsPath(
      relative(CURRENT_FOLDER_PATH, algorithmsPath)
    );

    console.log("algorithmPath!:", algorithmPathRelative);
    await page.addScriptTag({
      type: "module",
      content: `
        import { executeMatrixAlgorithm } from "${algorithmExecutionPathRelative}";
        import { matrixA, matrixB } from "${dataPathRelative}";
        import * as algorithms from "${algorithmPathRelative}";
        try {
          executeMatrixAlgorithm({
            algorithmName: "${algorithmName}",
            type: "${type}",
            language: "${language}",
            repition: ${repition},
            wasmPageSize: ${wasmPageSize},
            matrixA,
            matrixB,
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
  } finally {
    if (existsSync(HTML_FILE_PATH)) {
      await rm(HTML_FILE_PATH);
    }
    await page.close();
  }
}
