// @ts-check
import { MAX_VALUES, MIN_VALUES } from "../random-numbers.js";
import * as shared from "../shared.js";

/**
 * @param {number} nbr
 * @param {number} min
 * @param {number} max
 * @returns {number}
 */
function clamp(nbr, min, max) {
  return Math.max(min, Math.min(nbr, max));
}

function negative() {
  return Boolean(Math.round(Math.random())) ? 1 : -1;
}

/**
 * @param {shared.Type} type
 * @param {number} size
 * @returns {shared.Array1d<number | bigint>}
 */
export function initSearchArray(type, size) {
  if (type === "u64") {
    return BigUint64Array.from(
      Array.from({
        length: size,
      })
        .fill("")
        .map((index) =>
          BigInt(
            Math.round(clamp(index + 1, 0, MAX_VALUES.I32 / Math.pow(2, 1)))
          )
        )
        .sort()
    );
  } else if (type === "i64") {
    return BigInt64Array.from(
      Array.from({
        length: size,
      })
        .fill("")
        .map((_, index) =>
          BigInt(
            negative() *
              clamp(
                index + 1,
                MIN_VALUES.I32 / Math.pow(2, 2),
                MAX_VALUES.I32 / Math.pow(2, 2)
              )
          )
        )
        .sort()
    );
  } else if (type === "f64") {
    return Float64Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map(
        (_, index) =>
          negative() *
          clamp(
            index,
            MIN_VALUES.I32 / Math.pow(2, 2),
            MAX_VALUES.I32 / Math.pow(2, 2)
          )
      )
      .sort();
  } else if (type === "f32") {
    return Float32Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map(
        (_, index) =>
          negative() *
          clamp(
            index,
            MIN_VALUES.I32 / Math.pow(2, 2),
            MAX_VALUES.I32 / Math.pow(2, 2)
          )
      )
      .sort();
  } else if (type === "u32") {
    return Uint32Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I32 / Math.pow(2, 1)))
      )
      .sort();
  } else if (type === "i32") {
    return Int32Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I32 / Math.pow(2, 1)))
      )
      .sort();
  } else if (type === "u16") {
    return Uint16Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I16 / Math.pow(2, 2)))
      )
      .sort();
  } else if (type === "i16") {
    return Int16Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I16 / Math.pow(2, 6)))
      )
      .sort();
  } else if (type === "u8") {
    return Uint8Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I8 / Math.pow(2, 2)))
      )
      .sort();
  } else if (type === "i8") {
    return Int8Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I8 / Math.pow(2, 6)))
      )
      .sort();
  }
  throw new Error(`Unsupported type: ${type}`);
}
