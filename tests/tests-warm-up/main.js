// @ts-check
import { join } from "node:path";
import { calculateSize, calculateSteps } from "../helpers/shared.js";
import { executeTest, ALGORITHMS } from "../helpers/execute-test.js";
import * as puppeteer from "puppeteer";
import { writeFile } from "node:fs/promises";

const currentFilePath = new URL(import.meta.url).pathname.slice(1);

const algorithmsPath = join(
  currentFilePath,
  "../../helpers/compiled/warm-up/algorithms.js"
);
console.log("algorithmsPath:", algorithmsPath);

const matrixAlgorithmPath = join(
  currentFilePath,
  "../../helpers/execute-matrix-algorithm.js"
);
console.log("matrixAlgorithmPath:", matrixAlgorithmPath);

const arrayAlgorithmPath = join(
  currentFilePath,
  "../../helpers/execute-array-algorithm.js"
);
console.log("arrayAlgorithmPath:", arrayAlgorithmPath);

const steps = calculateSteps(1, 8);
console.log("steps:");
console.log(steps.join("\n"));

const types = /** @type {const} */ ([
  "f32",
  "u32",
  "i32",
  "u16",
  "i16",
  "u8",
  "i8",
]);
const languages = /** @type {const} */ (["js", "asm", "c"]);
const arrayAlgorithms = [
  ...Object.values(ALGORITHMS.BASIC),
  ...Object.values(ALGORITHMS.SEARCH),
  ...Object.values(ALGORITHMS.SORT),
];
const matrixAlgorithms = Object.values(ALGORITHMS.MATRIX);

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
/**
 * @type {Record<string, number[]>}
 */
const metrics = {};

const STEP = 5;
const REPITION = 10;
try {
  for (const type of types) {
    for (const language of languages) {
      for (const algorithm of arrayAlgorithms) {
        const size = calculateSize(STEP);
        const algorithmName = `${algorithm}_${type}_${language}_repition-${REPITION}_step-${STEP}_size-${size}`;
        await executeTest(
          {
            algorithmsPath,
            algorithmExecutionPath: arrayAlgorithmPath,
            algorithmName: algorithm,
            type,
            language,
            size,
            repition: 1,
            async onCollectMetrics(data) {
              metrics[algorithmName] = data;
            },
          },
          browser
        );
        console.log(algorithmName);
      }
      for (const algorithm of matrixAlgorithms) {
        const size = calculateSize(STEP);
        const algorithmName = `${algorithm}_${type}_${language}_repition-${REPITION}_step-${STEP}_size-${size}`;
        await executeTest(
          {
            algorithmsPath,
            algorithmExecutionPath: matrixAlgorithmPath,
            algorithmName: algorithm,
            type,
            language,
            size,
            repition: 1,
            async onCollectMetrics(time) {
              metrics[algorithmName] = time;
            },
          },
          browser
        );
        console.log(algorithmName);
      }
      console.log("\n");
    }
  }
  await writeFile("./results/results.json", JSON.stringify(metrics, null, 2));
} finally {
  await browser.close();
}
