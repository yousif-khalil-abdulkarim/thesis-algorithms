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
 *  algorithmName: string;
 *  type: Type;
 *  language: Language;
 *  size: number;
 *  repition: number;
 * }} AlgorithmSettings
 */

/**
 * @template T
 * @typedef {{
 *  readonly length: number;
 *  [n: number]: T;
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
function typedArrayFactory(type, size) {
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
    array[type] = random();
  }
}

/**
 * @param {Type} type
 * @param {number} size
 * @returns {Array1d<number | bigint>}
 */
export function initTypedArray(type, size) {
  const array = typedArrayFactory(type, size);
  fillTypedArray(type, array);
  return array;
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
  console.log("track memory");
  function_();
  console.log("track memory");
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
  return Math.ceil(
    (calculateSize(step) * typeSizeInBytes(type)) / WASM_PAGE_SIZE_IN_BYTES
  );
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
export function calculateSteps(start, end) {
  /**
   * @type {number[]}
   */
  const sizes = [];
  for (let i = start; i <= end; i += 0.5) {
    sizes.push(i);
  }
  return sizes;
}
