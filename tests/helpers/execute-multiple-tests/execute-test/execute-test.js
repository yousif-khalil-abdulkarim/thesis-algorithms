// @ts-check
import chalk from "chalk";
import * as shared from "../../shared.js";
import * as puppeteer from "puppeteer";
import { existsSync } from "node:fs";
import { writeFile, rm } from "node:fs/promises";
import { join, relative } from "node:path";
import { v4 as uuid } from "uuid";

/**
 * @param {string} path
 * @returns
 */
function toRelativeJsPath(path) {
  return ("./" + path.replace(/\\/g, "/")).replace(/\/\//, "/");
}

/**
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
 *  algorithmsPath: string;
 *  type: shared.Type;
 *  language: shared.Language;
 *  repition: number;
 *  size: number;
 *  onCollectMetrics(time: number[]): Promise<void>;
 *  onError(error: string): Promise<void>;
 *  wasmPageSize: number;
 * }} ExecuteTestSettings
 */
/**
 * @param {ExecuteTestSettings} testSettings
 * @param {puppeteer.Browser} browser
 * @returns {Promise<void>}
 */
export async function executeTest(testSettings, browser) {
  const {
    algorithmName,
    type,
    language,
    size,
    repition: repitionInBrowser,
    onCollectMetrics,
    onError,
    wasmPageSize,
    algorithmsPath,
  } = testSettings;

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
    "execute-algorithm/execute-algorithm.js"
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
      .on("pageerror", async (error) => {
        await onError(`${error.name} ${error.message}`);
      })
      .on("console", async (message) => {
        const text = message.text();
        if (message.type() === "error") {
          await onError(text);
          return;
        }
        console.log("browser!:", chalk.green(text));
        const time = extractTimeFromConsoleMessage(message);
        if (time === null) {
          return;
        }
        timeData.push(time);
      });

    const algorithmExecutionPathRelative = toRelativeJsPath(
      relative(CURRENT_FOLDER_PATH, ALGORITHM_EXECUTION_PATH)
    );
    const algorithmPathRelative = toRelativeJsPath(
      relative(CURRENT_FOLDER_PATH, algorithmsPath)
    );
    await writeFile(
      HTML_FILE_PATH,
      htmlFile(algorithmPathRelative, algorithmExecutionPathRelative)
    );

    await page.goto(HTML_FILE_PATH, {
      timeout: 0,
      waitUntil: "domcontentloaded",
    });

    console.log("algorithmPath!:", algorithmPathRelative);
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
            repition: ${repitionInBrowser},
            wasmPageSize: ${wasmPageSize},
            size: ${size},
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
    await rm(HTML_FILE_PATH);
    await page.close();
  }
}
