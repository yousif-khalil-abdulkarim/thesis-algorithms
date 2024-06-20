import { swapTwo } from "../shared.js";

function getPivotIndex<
  T extends
    | BigUint64Array
    | BigInt64Array
    | Float64Array
    | Float32Array
    | Uint32Array
    | Int32Array
    | Uint16Array
    | Int16Array
    | Uint8Array
    | Int8Array
>(array: T, start: number = 0, end: number = array.length - 1): number {
  let swapIdx = start;
  let pivotValue = array[start];
  for (let i = start + 1; i <= end; i++) {
    if (array[i] < pivotValue) {
      swapIdx++;
      swapTwo(array, i, swapIdx);
    }
  }
  swapTwo(array, start, swapIdx);
  return swapIdx;
}
function _quickSort<
  T extends
    | BigUint64Array
    | BigInt64Array
    | Float64Array
    | Float32Array
    | Uint32Array
    | Int32Array
    | Uint16Array
    | Int16Array
    | Uint8Array
    | Int8Array
>(array: T, left: number, right: number): T {
  if (left < right) {
    let pivotIndex = getPivotIndex(array, left, right);
    _quickSort(array, left, pivotIndex - 1);
    _quickSort(array, pivotIndex + 1, right);
  }
  return array;
}

export function quickSort_u64_js(array: BigUint64Array): BigUint64Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i64_js(array: BigInt64Array): BigInt64Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_f64_js(array: Float64Array): Float64Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_f32_js(array: Float32Array): Float32Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_u32_js(array: Uint32Array): Uint32Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i32_js(array: Int32Array): Int32Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_u16_js(array: Uint16Array): Uint16Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i16_js(array: Int16Array): Int16Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_u8_js(array: Uint8Array): Uint8Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i8_js(array: Int8Array): Int8Array {
  return _quickSort(array, 0, array.length - 1);
}
