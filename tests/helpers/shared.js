// @ts-check
import * as randomNumbers from "./random-numbers.js";

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
 * @typedef {{
 *  cpuModel: string;
 *  cpuArchitecture: string;
 *  operatingSystem: string;
 *  operatingSystemVersion: string;
 * }} SystemInfo
 */

/**
 * @typedef {{
 *  algorithmName: string;
 *  type: Type;
 *  language: Language;
 *  size: number;
 *  repition: number;
 *  wasmPageSize: number;
 * }} AlgorithmSettings
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
 * @param {Type} type
 * @param {number} size
 * @returns {Array1d<number | bigint>}
 */
export function typedArrayFactory(type, size) {
  if (type === "u64") {
    return new BigUint64Array(size);
  } else if (type === "i64") {
    return new BigInt64Array(size);
  } else if (type === "f64") {
    return new Float64Array(size);
  } else if (type === "f32") {
    return new Float32Array(size);
  } else if (type === "u32") {
    return new Uint32Array(size);
  } else if (type === "i32") {
    return new Int32Array(size);
  } else if (type === "u16") {
    return new Uint16Array(size);
  } else if (type === "i16") {
    return new Int16Array(size);
  } else if (type === "u8") {
    return new Uint8Array(size);
  } else if (type === "i8") {
    return new Int8Array(size);
  }
  throw new Error(`Unsupported type: ${type}`);
}

/**
 * @param {Type} type
 * @param {Array1d<number | bigint>} array
 * @returns {void}
 */
function fillTypedArray(type, array) {
  const random = randomNumbers[`randomNumber_${type}`];
  for (let i = 0; i < array.length; i++) {
    array[i] = random();
  }
}

/**
 * @param {Type} type
 * @param {number} size
 * @param {boolean} sorted
 * @returns {Array1d<number | bigint>}
 */
export function initTypedArray(type, size, sorted = false) {
  const array = typedArrayFactory(type, size);
  fillTypedArray(type, array);
  if (sorted) {
    array.sort();
  }
  return array;
}

/**
 * @param {Type} type
 * @param {number} width
 * @param {number} height
 * @returns {Matrix<number | bigint>}
 */
export function initTypedMatrix(type, width, height) {
  /**
   * @type {Matrix<number | bigint>}
   */
  const matrix = new Array(height);
  for (let i = 0; i < matrix.length; i++) {
    matrix[i] = initTypedArray(type, width);
  }
  return matrix;
}

/**
 * @param {number} size
 * @returns {number}
 */
function squareAmountOfItems(size) {
  return Math.floor(Math.sqrt(size));
}

/**
 * @param {number} size
 * @returns {{
 *  width: number;
 *  height: number;
 * }}
 */
function rectangleAmountOfItems(size) {
  const widthA = Math.sqrt(2 * size);
  const heightA = widthA / 2;
  return {
    width: Math.floor(widthA),
    height: Math.floor(heightA),
  };
}

/**
 * @param {Type} type
 * @param {number} amountOfItems
 * @param {boolean} isMultiplication
 * @returns {{
 *  matrixA: Matrix<number | bigint>;
 *  matrixB: Matrix<number | bigint>;
 * }}
 */
export function initTypedMatrices(type, amountOfItems, isMultiplication) {
  if (isMultiplication) {
    const { width, height } = rectangleAmountOfItems(amountOfItems);
    return {
      matrixA: initTypedMatrix(type, width, height),
      matrixB: initTypedMatrix(type, height, width),
    };
  }
  const size = squareAmountOfItems(amountOfItems);
  return {
    matrixA: initTypedMatrix(type, size, size),
    matrixB: initTypedMatrix(type, size, size),
  };
}

/**
 * @param {string} name
 * @param {{
 *  (): void;
 * }} function_
 * @returns {void}
 */
export function trackMetrics(name, function_) {
  console.log(name);

  const startTime = performance.now();
  function_();
  const endTime = performance.now();

  const time = endTime - startTime;
  console.log("time:", time);
}

/**
 * f(x) = 2^x * 10_000
 * @param {number} x
 * @returns {number}
 */
export function calculateSize(x) {
  return Math.floor(Math.pow(2, x) * 10_000);
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
    (calculateSize(step) * typeSizeInBytes(type)) / WASM_PAGE_SIZE_IN_BYTES
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
 * @returns {number[]}
 */
export function calculateSteps(start, end = start) {
  /**
   * @type {number[]}
   */
  const sizes = [];
  for (let i = start; i <= end; i += 0.5) {
    sizes.push(i);
  }
  return sizes;
}
