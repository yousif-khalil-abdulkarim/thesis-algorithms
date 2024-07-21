// @ts-check
import * as shared from "../../../../shared.js";
import * as randomNumbers from "../random-numbers.js";

/**
 * @param {shared.Type} type
 * @param {number} size
 * @returns {shared.Array1d<number | bigint>}
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
 * @param {shared.Type} type
 * @param {shared.Array1d<number | bigint>} array
 * @returns {void}
 */
function fillTypedArray(type, array) {
  const random = randomNumbers[`randomNumber_${type}`];
  for (let i = 0; i < array.length; i++) {
    array[i] = random();
  }
}

/**
 * @param {shared.Type} type
 * @param {number} size
 * @returns {shared.Array1d<number | bigint>}
 */
export function initArray(type, size) {
  const array = typedArrayFactory(type, size);
  fillTypedArray(type, array);
  return array;
}
