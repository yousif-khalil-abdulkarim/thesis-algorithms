// @ts-check
import { join } from "node:path";
import { type } from "node:os";
import { executeMultipleTests } from "../helpers/execute-multiple-tests/execute-multiple-tests.js";
import * as shared from "../helpers/shared.js";

const CURRENT_FOLDER_PATH = join(
  new URL(import.meta.url).pathname.slice(1),
  ".."
);
const RESULT_OUTPUT_PATH = join(
  CURRENT_FOLDER_PATH,
  "results",
  `${type().toLowerCase()}`
);
await executeMultipleTests({
  algorithmsPath: join(
    CURRENT_FOLDER_PATH,
    "..",
    "helpers",
    "compiled",
    "algorithms.js"
  ),
  resultOutputPath: RESULT_OUTPUT_PATH,
  algorithms: [
    shared.ALGORITHMS.BASIC.AVERAGE,
    shared.ALGORITHMS.BASIC.MAX,
    shared.ALGORITHMS.SEARCH.BINARY_SEARCH,
    shared.ALGORITHMS.SEARCH.INTERPOLATION_SEARCH,
    shared.ALGORITHMS.SEARCH.META_BINARY_SEARCH,
    shared.ALGORITHMS.SORT.MERGE_SORT,
    shared.ALGORITHMS.SORT.QUICK_SORT,
    shared.ALGORITHMS.SORT.SELECTION_SORT,
    shared.ALGORITHMS.SORT.BUBBLE_SORT,
    shared.ALGORITHMS.MATRIX.MATRIX_ADDITION,
    shared.ALGORITHMS.MATRIX.MATRIX_MULTIPLICATION,
  ],
  types: ["f64", "f32", "u32", "i32", "u16", "i16", "u8", "i8"],
  languages: ["js", "c", "asm"],
  steps: shared.calculateSteps(1, 12, 0.5),
  wasmPageSizes: [2],
  repitionInNodeJs: 1,
  repitionInBrowser: 1,
});
