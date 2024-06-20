// @ts-check
import { join } from "node:path";

const currentFilePath = new URL(import.meta.url).pathname.slice(1);

const algorithmsPath = join(
  currentFilePath,
  "../../helpers/compiled/speed/algorithms.js"
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
