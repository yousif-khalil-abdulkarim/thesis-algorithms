import { swapTwo } from "../shared";

function getPivotIndex_float64_js<
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
  let swapIdx: number = start;
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
    let pivotIndex = getPivotIndex_float64_js(array, left, right);
    getPivotIndex_float64_js(array, left, pivotIndex - 1);
    getPivotIndex_float64_js(array, pivotIndex + 1, right);
  }
  return array;
}

export function quickSort_uint64_js(array: BigUint64Array): BigUint64Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int64_js(array: BigInt64Array): BigInt64Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_float64_js(array: Float64Array): Float64Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_float32_js(array: Float32Array): Float32Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_uint32_js(array: Uint32Array): Uint32Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int32_js(array: Int32Array): Int32Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_uint16_js(array: Uint16Array): Uint16Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int16_js(array: Int16Array): Int16Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_uint8_js(array: Uint8Array): Uint8Array {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int8_js(array: Int8Array): Int8Array {
  return _quickSort(array, 0, array.length - 1);
}
