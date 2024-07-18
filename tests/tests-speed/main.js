// @ts-check
import { join } from "node:path";
import * as sharedModule from "../helpers/shared.js";
import * as executeTestModule from "../helpers/execute-test.js";
import { executeMultipleTests } from "../helpers/execute-multiple-tests.js";

const CURRENT_FILE_PATH = new URL(import.meta.url).pathname.slice(1);

await executeMultipleTests({
  ALGORITHMS_PATH: join(
    CURRENT_FILE_PATH,
    "../../helpers/compiled/algorithms.js"
  ),
  MATRIX_ALGORITHM_EXECUTION_PATH: join(
    CURRENT_FILE_PATH,
    "../../helpers/execute-matrix-algorithm.js"
  ),
  ARRAY_ALGORITHM_EXECUTION_PATH: join(
    CURRENT_FILE_PATH,
    "../../helpers/execute-array-algorithm.js"
  ),
  SEARCH_ALGORITHM_EXECUTION_PATH: join(
    CURRENT_FILE_PATH,
    "../../helpers/execute-search-algorithm.js"
  ),
  OUTPUT: join(CURRENT_FILE_PATH, "../results"),
  WASM_PAGE_SIZES: [2],
  REPITION: 1,
  STEPS: sharedModule.calculateSteps(1, 12),
  LANGUAGES: ["js", "asm", "c"],
  TYPES: ["f64", "f32", "i32", "u32", "i16", "u16", "i8", "u8"],
  ARRAY_ALGORITHMS: [
    ...Object.values(executeTestModule.ALGORITHMS.BASIC),
    ...Object.values(executeTestModule.ALGORITHMS.SORT),
  ],
  MATRIX_ALGORITHMS: [...Object.values(executeTestModule.ALGORITHMS.MATRIX)],
  SEARCH_ALGORITHMS: [...Object.values(executeTestModule.ALGORITHMS.SEARCH)],
});
