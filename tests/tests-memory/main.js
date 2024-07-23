// @ts-check
import { join } from "node:path";
import { type } from "node:os";
import * as m from "../helpers/execute-multiple-tests/execute-multiple-tests.js";
import * as shared from "../helpers/shared.js";

const TYPE = "f64";
/**
 * @param {(x: number) => number} calculateSize
 * @param {(type: shared.Type, x: number) => number} calculateWasmPageSize
 * @returns {(step: number) => {
 *  size: number;
 *  wasmPageSize: number[];
 * }}
 */
function transform(calculateSize, calculateWasmPageSize) {
  return (step) => {
    const wasmPageSize = calculateWasmPageSize(TYPE, step);
    return {
      size: calculateSize(step),
      wasmPageSize: [
        Math.ceil(wasmPageSize * 0.5),
        Math.ceil(wasmPageSize * 0.75),
        wasmPageSize,
        Math.ceil(wasmPageSize * 1.5),
        Math.ceil(wasmPageSize * 2),
      ],
    };
  };
}
const fastAlg = shared
  .calculateSteps({
    start: 2,
    end: 12,
    jump: 1,
  })
  .map(transform(shared.fastAlgorithmSize, shared.fastAlgorithmWasmPageSize));
console.log("FastAlg");
console.log(fastAlg);

console.log("\n");

const matrixAlg = shared
  .calculateSteps({
    start: 1,
    end: 12,
    jump: 1,
  })
  .map(
    transform(
      shared.matrixAdditionAlgorithmSize,
      shared.matrixAdditionAlgorithmWasmPageSize
    )
  );
console.log("MatrixAlg");
console.log(matrixAlg);

// const CURRENT_FOLDER_PATH = join(
//   new URL(import.meta.url).pathname.slice(1),
//   ".."
// );
// /**
//  * @type {Omit<m.ExecuteMultipleTestsSettings, "algorithms" | "steps" | "wasmPageSizes" | "resultOutputPath">}
//  */
// const BASE_SETTINGS = {
//   algorithmsPath: join(
//     CURRENT_FOLDER_PATH,
//     "..",
//     "helpers",
//     "compiled",
//     "algorithms.js"
//   ),
//   types: ["f64"],
//   languages: ["c", "asm"],
//   repitionInNodeJs: 3,
//   repitionInBrowser: 1,
// };
//
// await m.executeMultipleTests({
//   ...BASE_SETTINGS,
//   resultOutputPath: join(
//     CURRENT_FOLDER_PATH,
//     "results",
//     `${type().toLowerCase()}`,
//     "basic"
//   ),
//   algorithms: [
//     shared.ALGORITHMS.BASIC.AVERAGE,
//     shared.ALGORITHMS.BASIC.MAX,
//     shared.ALGORITHMS.SEARCH.BINARY_SEARCH,
//     shared.ALGORITHMS.SEARCH.INTERPOLATION_SEARCH,
//     shared.ALGORITHMS.SEARCH.META_BINARY_SEARCH,
//     shared.ALGORITHMS.SORT.MERGE_SORT,
//   ],
//   steps: shared.calculateSteps({
//     start: 12,
//     end: 12,
//     jump: 4,
//   }),
//   wasmPageSizes: [2],
// });

// await m.executeMultipleTests({
//   ...BASE_SETTINGS,
//   resultOutputPath: join(
//     CURRENT_FOLDER_PATH,
//     "results",
//     `${type().toLowerCase()}`,
//     "matrix"
//   ),
//   algorithms: [
//     shared.ALGORITHMS.MATRIX.MATRIX_ADDITION
//   ],
//   steps: shared.calculateSteps({
//     start: 12,
//     end: 12,
//     jump: 1,
//   }),
//   wasmPageSizes: [2],
// });
