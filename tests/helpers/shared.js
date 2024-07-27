// @ts-check

/**
 * @typedef {"u64" | "i64" | "f64" | "f32" | "u32" | "i32" | "u16" | "i16" | "u8" | "i8"} Type
 */

/**
 * @typedef {"c" |"asm" | "js"} Language
 */

/**
 * @typedef {{
 *  REPITION: number;
 *  STEPS: number[];
 *  ALGORITHMS_PATH: string;
 *  MATRIX_ALGORITHM_EXECUTION_PATH: string;
 *  ARRAY_ALGORITHM_EXECUTION_PATH: string;
 *  SEARCH_ALGORITHM_EXECUTION_PATH: string;
 *  WASM_PAGE_SIZES: number[];
 *  LANGUAGES: Language[];
 *  TYPES: Type[];
 *  ARRAY_ALGORITHMS: string[];
 *  MATRIX_ALGORITHMS: string[];
 *  SEARCH_ALGORITHMS: string[];
 *  OUTPUT: string;
 * }} TestConfig
 */

/**
 * @template T
 * @typedef {{
 *  readonly length: number;
 *  [n: number]: T;
 *  sort(): void;
 * }} Array1d
 */

/**
 * @template T
 * @typedef {Array1d<Array1d<T>>} Matrix
 */

/**
 * @typedef {[
 *  x: number | bigint,
 *  y: number | bigint,
 * ]} Point
 */

/**
 * @typedef {{
 *  algorithmName: string;
 *  type: Type;
 *  language: Language;
 *  repition: number;
 *  wasmPageSize: number;
 *  size: number;
 * }} AlgorithmSettings
 */

/**
 * @template T
 * @template K
 * @param {Array1d<T>} array
 * @param {(item: T) => K} function_
 * @return {Array1d<K>}
 */
export function map(array, function_) {
  /**
   * @type {K[]}
   */
  const newArray = [];
  for (let i = 0; i < array.length; i++) {
    const item = array[i];
    newArray.push(function_(item));
  }
  return newArray;
}

export const DATA_IDENTIFIER = {
  ALGORITHM_TIME: "algorithm-execution-time",
  INIT_WASM_ATA_TIME: "init-wasm-data-time",
};

const BASIC_ALGORIHMS = {
  /**
   * Time complexity: O(n)
   * Space complexity: O(n)
   */
  AVERAGE: "average",
  /**
   * Time complexity: O(n)
   * Space complexity: O(n)
   */
  MAX: "max",
  /**
   * Time complexity: O(n)
   * Space complexity: O(n)
   */
  MIN: "min",
  /**
   * Time complexity: O(n)
   * Space complexity: O(n)
   */
  SUM: "sum",
};
const MATRIX_ALGORITHMS = {
  /**
   * Time complexity: O(n^2)
   * Space complexity: O(n^2)
   */
  MATRIX_ADDITION: "matrixAddition",
  /**
   * Time complexity: O(n^2)
   * Space complexity: O(n^2)
   */
  MATRIX_SUBTRACTION: "matrixSubtraction",
  /**
   * Time complexity: O(n^3)
   * Space complexity: O(n^2)
   */
  MATRIX_MULTIPLICATION: "matrixMultiplication",
};
const SEARCH_ALGORITHMS = {
  /**
   * Time complexity: O(log(n))
   * Space complexity: O(n)
   */
  BINARY_SEARCH: "binarySearch",
  /**
   * Time complexity: O(log(n))
   * Space complexity: O(n)
   */
  META_BINARY_SEARCH: "metaBinarySearch",
  /**
   * Time complexity: O(log(log(n)))
   * Space complexity: O(n)
   */
  INTERPOLATION_SEARCH: "interpolationSearch",
};
const SORT_ALGORITHMS = {
  /**
   * Time complexity: O(n*log(n))
   * Space complexity: O(n)
   */
  MERGE_SORT: "mergeSort",
  /**
   * Time complexity: O(n*log(n))
   * Space complexity: O(n)
   */
  QUICK_SORT: "quickSort",
  /**
   * Time complexity: O(n^2)
   * Space complexity: O(n)
   */
  SELECTION_SORT: "selectionSort",
  /**
   * Time complexity: O(n^2)
   * Space complexity: O(n),
   */
  BUBBLE_SORT: "bubbleSort",
};
export const STATICS_ALGORITHMS = {
  /**
   * Time complexity: O(n)
   */
  K_MEAN: "kMean",
};
export const ALGORITHMS = {
  BASIC: BASIC_ALGORIHMS,
  MATRIX: MATRIX_ALGORITHMS,
  SEARCH: SEARCH_ALGORITHMS,
  SORT: SORT_ALGORITHMS,
  STATICS: STATICS_ALGORITHMS,
};

/**
 * @template T
 * @param {string} identifier
 * @param {() => T} function_
 *  (): void;
 * }} function_
 * @returns {T | null}
 */
export function trackMetrics(identifier, function_) {
  const startTime = performance.now();
  try {
    return function_();
  } catch (error) {
    console.error(error.name, error.message);
  } finally {
    const endTime = performance.now();
    const time = endTime - startTime;
    console.log(identifier, time);
  }
  return null;
}

/**
 * 1 kib in bytes
 */
const KIB = 1024;
/**
 * Wasm page size in kib
 */
const WASM_PAGE_SIZE = 64;

const WASM_PAGE_SIZE_IN_BYTES = WASM_PAGE_SIZE * KIB;

/**
 * @param {Type} type
 * @returns {number}
 */
function typeBytesAmount(type) {
  return Number(type.slice(1)) / 8;
}

/**
 * f(x) = 2^x * 10_000
 * @param {number} x
 * @returns {number}
 */
export function fastAlgorithmSize(x) {
  return Math.ceil(Math.pow(2, x) * 10_000);
}
/**
 * @param {Type} type
 * @param {number} x
 * @returns {number}
 */
export function fastAlgorithmWasmPageSize(type, x) {
  const totalaAmountOfBytes = typeBytesAmount(type) * fastAlgorithmSize(x);
  return Math.ceil(totalaAmountOfBytes / WASM_PAGE_SIZE_IN_BYTES);
}

/**
 * f(x) = 2^(log2(8) / 12 * x) * 10_000
 * @param {number} x
 * @returns {number}
 */
export function slowAlgorithmSize(x) {
  return Math.ceil(Math.pow(2, (Math.log2(8) / 12) * x) * 10_000);
}
/**
 * @param {Type} type
 * @param {number} x
 * @returns {number}
 */
export function slowAlgorithmWasmPageSize(type, x) {
  const totalaAmountOfBytes = typeBytesAmount(type) * slowAlgorithmSize(x);
  return Math.ceil(totalaAmountOfBytes / WASM_PAGE_SIZE_IN_BYTES);
}

/**
 * @param {number} x
 * @returns {number}
 */
export function matrixMultiplicationAlgorithmSize(x) {
  return Math.ceil(Math.pow(2, x / 12) * 600);
}
/**
 * @param {Type} type
 * @param {number} x
 * @returns {number}
 */
export function matrixMultiplicationAlgorithmWasmPageSize(type, x) {
  const totalaAmountOfBytes =
    typeBytesAmount(type) * Math.pow(matrixMultiplicationAlgorithmSize(x), 2);
  return Math.ceil(totalaAmountOfBytes / WASM_PAGE_SIZE_IN_BYTES);
}

/**
 * @param {number} x
 * @returns
 */
export function matrixAdditionAlgorithmSize(x) {
  return Math.ceil(Math.pow(2, (Math.log2(10) * x) / 12) * 1000);
}
/**
 * @param {Type} type
 * @param {number} x
 * @returns {number}
 */
export function matrixAdditionAlgorithmWasmPageSize(type, x) {
  const totalaAmountOfBytes =
    typeBytesAmount(type) * Math.pow(matrixAdditionAlgorithmSize(x), 2);
  return Math.ceil(totalaAmountOfBytes / WASM_PAGE_SIZE_IN_BYTES);
}

/**
 * Returns the size of WebAssembly memory in wasm pages
 * @param {WebAssembly.Memory} memory
 * @returns {number}
 */
export function getWasmMemory(memory) {
  return Math.ceil(memory.buffer.byteLength / WASM_PAGE_SIZE_IN_BYTES);
}

/**
 * Returns the size of WebAssembly memory in wasm pages
 * @param {WebAssembly.Memory} memory
 * @param {number} wasmPageSize
 * @returns {void}
 */
export function setWasmMemory(memory, wasmPageSize) {
  const currentMemory = getWasmMemory(memory);
  const growSize = wasmPageSize - currentMemory;
  if (growSize === 0) {
    return;
  }
  if (growSize < 0) {
    throw new Error(
      `wasmPageSize is ${wasmPageSize} but it must be larger than the current size ${currentMemory}`
    );
  }
  memory.grow(growSize);
}

/**
 * @param {number} step
 * @param {Type} type
 * @returns {number} Wasm page size
 */
export function calculateWasmPageSize(step, type) {
  const size = Math.ceil(
    (fastAlgorithmSize(step) * typeBytesAmount(type)) / WASM_PAGE_SIZE_IN_BYTES
  );
  if (size < 2) {
    return 2;
  }
  return size;
}

/**
 * @param {{
 *  start: number;
 *  end?: number;
 *  jump?: number;
 * }} settings
 * @returns {number[]}
 */
export function calculateSteps({ start, end = start, jump = 1 }) {
  /**
   * @type {number[]}
   */
  const sizes = [];
  for (let i = start; i <= end; i += jump) {
    sizes.push(i);
  }
  return sizes;
}
