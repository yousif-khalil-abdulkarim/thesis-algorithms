// @ts-check
import puppeteer from "puppeteer";
import { executeArrayTest } from "../execute-array-test/execute-array-test.js";
import { executeSearchTest } from "../execute-search-test/execute-search-test.js";
import { ALGORITHMS } from "../shared.js";
import { join } from "node:path";

/**
 * Not working
 * binarySearch_u16_c step 12 exponential
 */

const CURRENT_FOLDER_PATH = join(
  new URL(import.meta.url).pathname.slice(1),
  ".."
);

/**
 * Bubblesort
 * Step 4:
 * Step 4.5:
 * Step 5:
 * Step 5.5:
 * Step 6:
 * Step 6.5:
 */
const browser = await puppeteer.launch({
  // headless: false,
  timeout: 0,
  protocolTimeout: 0,
  waitForInitialPage: true,
  args: [
    "--no-sandbox",
    "--disable-setuid-sandbox",
    "--disable-web-security",
    "--disable-features=IsolateOrigins,BlockInsecurePrivateNetworkRequests",
    "--disable-site-isolation-trials",
  ],
});

const start = global.performance.now();
for (const language of ["js", "asm", "c"]) {
  for (const type of ["f64", "f32", "u32", "i32", "u16", "i16", "u8", "i8"]) {
    for (const step of [12]) {
      for (const algorithm of [
        ALGORITHMS.BASIC.AVERAGE,
        ...Object.values(ALGORITHMS.BASIC),
        ALGORITHMS.SORT.MERGE_SORT,
      ]) {
        await executeArrayTest(
          {
            algorithmName: algorithm,
            algorithmsPath: join(
              CURRENT_FOLDER_PATH,
              "..",
              "compiled",
              "algorithms.js"
            ),
            dataPath: join(
              CURRENT_FOLDER_PATH,
              "data",
              "exponential",
              "array",
              `step-${step}`,
              `data-${type}.js`
            ),
            language,
            async onCollectMetrics(data) {
              console.log(data);
            },
            repition: 1,
            type,
            wasmPageSize: 2,
          },
          browser
        );
      }
      for (const algorithm of Object.values(ALGORITHMS.SEARCH)) {
        await executeSearchTest(
          {
            algorithmName: algorithm,
            algorithmsPath: join(
              CURRENT_FOLDER_PATH,
              "..",
              "compiled",
              "algorithms.js"
            ),
            dataPath: join(
              CURRENT_FOLDER_PATH,
              "data",
              "exponential",
              "search",
              `step-${step}`,
              `data-${type}.js`
            ),
            language,
            async onCollectMetrics(data) {
              console.log(data);
            },
            repition: 1,
            type,
            wasmPageSize: 2,
          },
          browser
        );
      }
    }
  }
}
const end = global.performance.now();
await browser.close();
console.log("total-time", end - start);
