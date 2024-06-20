// @ts-check
import { calculateWasmPageSize } from "./helpers/shared.js";

console.log("32bit:", calculateWasmPageSize(5, "32"));
console.log("16bit:", calculateWasmPageSize(5, "16"));
console.log("8bit:", calculateWasmPageSize(5, "8"));

// import { ALGORITHMS, executeTest } from "./helpers/execute-test.js";
// import * as puppeteer from "puppeteer";
// import { join } from "node:path";

// const browser = await puppeteer.launch({
//   timeout: 0,
//   protocolTimeout: 0,
//   args: [
//     "--no-sandbox",
//     "--disable-setuid-sandbox",
//     "--disable-web-security",
//     "--disable-features=IsolateOrigins,BlockInsecurePrivateNetworkRequests",
//     "--disable-site-isolation-trials",
//   ],
// });

// const currentFilePath = new URL(import.meta.url).pathname.slice(1);
// const algorithmsPath = join(
//   currentFilePath,
//   "../helpers/compiled/speed/algorithms.js"
// );
// const algorithmExecutionPath = join(
//   currentFilePath,
//   "../helpers/execute-matrix-algorithm.js"
// );
// await executeTest(
//   {
//     algorithmsPath,
//     algorithmExecutionPath,
//     algorithmName: ALGORITHMS.MATRIX.MATRIX_ADDITION,
//     type: "f32",
//     language: "js",
//     size: 10,
//     repition: 1,
//     async onCollectMetrics(metrics) {
//       console.log(metrics);
//     },
//   },
//   browser
// );
// await browser.close();
