import {
  mergeSort_uint64_asm,
  mergeSort_int64_asm,
  mergeSort_float64_asm,
  mergeSort_float32_asm,
  mergeSort_uint32_asm,
  mergeSort_int32_asm,
  mergeSort_uint16_asm,
  mergeSort_int16_asm,
  mergeSort_uint8_asm,
  mergeSort_int8_asm,
} from "./dist/release.js";

const numbers = [5, 3, 1, 2, 6, 4];
console.log(mergeSort_uint64_asm(new BigUint64Array(numbers.map(BigInt))));
console.log(mergeSort_int64_asm(new BigInt64Array(numbers.map(BigInt))));
console.log(mergeSort_float64_asm(new Float64Array(numbers)));
console.log(mergeSort_float32_asm(new Float32Array(numbers)));
console.log(mergeSort_uint32_asm(new Uint32Array(numbers)));
console.log(mergeSort_int32_asm(new Int32Array(numbers)));
console.log(mergeSort_uint16_asm(new Uint16Array(numbers)));
console.log(mergeSort_int16_asm(new Int16Array(numbers)));
console.log(mergeSort_uint8_asm(new Uint8Array(numbers)));
console.log(mergeSort_int8_asm(new Int8Array(numbers)));
