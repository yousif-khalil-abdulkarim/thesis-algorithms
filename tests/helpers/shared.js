// @ts-check

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
 * @param {string} identifier
 * @param {() => void} function_
 *  (): void;
 * }} function_
 */
export function trackMetrics(identifier, function_) {
  const startTime = performance.now();
  try {
    function_();
  } catch (error) {
    console.error(error.name, error.message);
  }
  const endTime = performance.now();

  const time = endTime - startTime;
  console.log(identifier, time);
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
 * @typedef {"64" | "32" | "16" | "8"} TypeSize
 */

/**
 * @param {TypeSize} type
 */
function typeSizeInBytes(type) {
  if (type === "64") {
    return BigUint64Array.BYTES_PER_ELEMENT;
  } else if (type === "32") {
    return Uint32Array.BYTES_PER_ELEMENT;
  } else if (type === "16") {
    return Uint16Array.BYTES_PER_ELEMENT;
  } else if (type === "8") {
    return Uint8Array.BYTES_PER_ELEMENT;
  }
  throw new Error(`Unsupported type: ${type}`);
}

/**
 * @param {number} step
 * @param {TypeSize} type
 * @returns {number} Wasm page size
 */
export function calculateWasmPageSize(step, type) {
  const size = Math.ceil(
    (fastAlgorithmSize(step) * typeSizeInBytes(type)) / WASM_PAGE_SIZE_IN_BYTES
  );
  if (size < 2) {
    return 2;
  }
  return size;
}

/**
 * @param {number} step
 * @param {TypeSize} type
 * @returns {number} Wasm page size
 */
export function calculateWasmPageSizeInBytes(step, type) {
  return calculateWasmPageSize(step, type) * WASM_PAGE_SIZE_IN_BYTES;
}

/**
 * @param {number} start
 * @param {number} end
 * @param {number} jump
 * @returns {number[]}
 */
export function calculateSteps(start, end = start, jump = 0.5) {
  /**
   * @type {number[]}
   */
  const sizes = [];
  for (let i = start; i <= end; i += jump) {
    sizes.push(i);
  }
  return sizes;
}

/**
 * Algorithm sum, average, min, max, binary search, meta binary search, interpolation search, merge sort time:
 * 3 for all languages js, asm, c
 * 8 for all types f64, f32, u32, i32, u16, i16, u8, i8
 * Step 8: 2560000 * 3 * 8 element time will take 7s
 * Step 9: 5120000 * 3 * 8  element time will take 2 minutes
 * Step 11: 20480000 * 3 * 8  element time will take 7 minutes
 * Step 12: 40960000 * 3 * 8  element time will take 16 minutes
 */

/**
 * Algorithm matrix multiplication, matrix addition, matrix subtraction time:
 * 500 element time will take 0.8s
 * 1000 element time will take 3.5s
 * 1050 element time will take 5s
 * 2000 element time will take 1.6 minutes
 * 3000 element time will take 6.5 minutes
 * 3100 element time will take 10 minutes
 * 3175 element time will take 17 minutes
 */

/**
 * Quick sort, selection sort, bubble sort time:
 * Step 12: 64000 elements time will take 15min
 */

/**
 * f(x) = 2^x * 10_000
 * @param {number} x
 * @returns {number}
 */
export function fastAlgorithmSize(x) {
  return Math.floor(Math.pow(2, x) * 10_000);
}

/**
 * f(x) = 2^(log2(8) / 12 * x) * 10_000
 * @param {number} x
 * @returns {number}
 */
export function slowAlgorithmSize(x) {
  return Math.floor(Math.pow(2, (Math.log2(8) / 12) * x) * 10_000);
}

/**
 * @param {number} x
 * @returns {number}
 */
export function matrixMultiplicationAlgorithmSize(x) {
  return Math.floor(Math.pow(2, x / 12) * 600);
}

/**
 * @param {number} x
 * @returns
 */
export function matrixAdditionAlgorithmSize(x) {
  return Math.floor(Math.pow(2, (Math.log2(10) * x) / 12) * 1000);
}

const BASIC_ALGORIHMS = {
  /**
   *  O(n)
   */
  AVERAGE: "average",
  /**
   *  O(n)
   */
  MAX: "max",
  /**
   *  O(n)
   */
  MIN: "min",
  /**
   *  O(n)
   */
  SUM: "sum",
};
const MATRIX_ALGORITHMS = {
  /**
   *  O(n^2)
   */
  MATRIX_ADDITION: "matrixAddition",
  /**
   *  O(n^2)
   */
  MATRIX_SUBTRACTION: "matrixSubtraction",
  /**
   *  O(n^3)
   */
  MATRIX_MULTIPLICATION: "matrixMultiplication",
};
const SEARCH_ALGORITHMS = {
  /**
   * O(log(n))
   */
  BINARY_SEARCH: "binarySearch",
  /**
   * O(log(n))
   */
  META_BINARY_SEARCH: "metaBinarySearch",
  /**
   * Best case: O(log(log(n)))
   * Worst case: O(n)
   */
  INTERPOLATION_SEARCH: "interpolationSearch",
};
const SORT_ALGORITHMS = {
  /**
   * O(n*log(n))
   */
  MERGE_SORT: "mergeSort",
  /**
   * Best case: O(n*log(n))
   * Worst case: O(n^2)
   */
  QUICK_SORT: "quickSort",
  /**
   * O(n^2)
   */
  SELECTION_SORT: "selectionSort",
  /**
   * O(n^2)
   */
  BUBBLE_SORT: "bubbleSort",
};
export const ALGORITHMS = {
  BASIC: BASIC_ALGORIHMS,
  MATRIX: MATRIX_ALGORITHMS,
  SEARCH: SEARCH_ALGORITHMS,
  SORT: SORT_ALGORITHMS,
};
