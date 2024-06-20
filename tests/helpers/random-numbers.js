// @ts-check
/**
 * @param {bigint} number
 * @param {number} power
 * @returns {bigint}
 */
function powBigInt(number, power) {
  if (power === 0) {
    return 1n;
  }
  let result = number;
  for (let i = 0; i < power - 1; i++) {
    result = result * number;
  }
  return result;
}
const MAX_VALUES = {
  U64: powBigInt(2n, BigUint64Array.BYTES_PER_ELEMENT * 8),
  I64: powBigInt(2n, BigInt64Array.BYTES_PER_ELEMENT * 8 - 1),
  F64: Number.MAX_VALUE,
  F32: 3.4028235e38,
  U32: Math.pow(2, Uint32Array.BYTES_PER_ELEMENT * 8),
  I32: Math.pow(2, Int32Array.BYTES_PER_ELEMENT * 8 - 1),
  U16: Math.pow(2, Uint16Array.BYTES_PER_ELEMENT * 8),
  I16: Math.pow(2, Int16Array.BYTES_PER_ELEMENT * 8 - 1),
  U8: Math.pow(2, Uint8Array.BYTES_PER_ELEMENT * 8),
  I8: Math.pow(2, Int8Array.BYTES_PER_ELEMENT * 8 - 1),
};
const MIN_VALUES = {
  U64: 0n,
  I64: -powBigInt(2n, BigInt64Array.BYTES_PER_ELEMENT * 8 - 1),
  F64: Number.MIN_VALUE,
  F32: -3.4028235e38,
  U32: 0,
  I32: -Math.pow(2, Int32Array.BYTES_PER_ELEMENT * 8 - 1),
  U16: 0,
  I16: -Math.pow(2, Int16Array.BYTES_PER_ELEMENT * 8 - 1),
  U8: 0,
  I8: -Math.pow(2, Int8Array.BYTES_PER_ELEMENT * 8 - 1),
};

/**
 * @param {number} min
 * @param {number} max
 * @param {boolean} isInteger
 * @returns {number}
 */
function randomNumber(min, max, isInteger) {
  const number = Math.random() * (max - min) + min;
  return isInteger ? Math.round(number) : number;
}
/**
 * @param {bigint} min
 * @param {bigint} max
 * @returns {bigint}
 */
function randomNumberBigInt(min, max) {
  return (
    (BigInt(Math.round(Math.random() * 100)) * (max - min) + min * 100n) / 100n
  );
}

/**
 * @returns {bigint}
 */
export function randomNumber_u64() {
  return randomNumberBigInt(MIN_VALUES.U64, MAX_VALUES.U64 / 2n);
}
/**
 * @returns {bigint}
 */
export function randomNumber_i64() {
  return randomNumberBigInt(MIN_VALUES.I64 / 2n, MAX_VALUES.I64 / 2n);
}
/**
 * @returns {number}
 */
export function randomNumber_f64() {
  return randomNumber(MIN_VALUES.F64, MAX_VALUES.F64 / 2, false);
}
/**
 * @returns {number}
 */
export function randomNumber_f32() {
  return randomNumber(MIN_VALUES.F32, MAX_VALUES.F32 / 2, false);
}
/**
 * @returns {number}
 */
export function randomNumber_u32() {
  return randomNumber(MIN_VALUES.U32, MAX_VALUES.U32 / 2, true);
}
/**
 * @returns {number}
 */
export function randomNumber_i32() {
  return randomNumber(MIN_VALUES.I32 / 2, MAX_VALUES.I32 / 2, true);
}
/**
 * @returns {number}
 */
export function randomNumber_u16() {
  return randomNumber(MIN_VALUES.U16, MAX_VALUES.U16 / 2, true);
}
/**
 * @returns {number}
 */
export function randomNumber_i16() {
  return randomNumber(MIN_VALUES.I16 / 2, MAX_VALUES.I16 / 2, true);
}
/**
 * @returns {number}
 */
export function randomNumber_u8() {
  return randomNumber(MIN_VALUES.U8, MAX_VALUES.U8 / 2, true);
}
/**
 * @returns {number}
 */
export function randomNumber_i8() {
  return randomNumber(MIN_VALUES.I8 / 2, MAX_VALUES.I8 / 2, true);
}
