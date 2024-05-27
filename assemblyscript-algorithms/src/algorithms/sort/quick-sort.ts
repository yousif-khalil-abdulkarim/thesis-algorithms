import { swapTwo } from "../shared";

function getPivotIndex<T>(
  array: StaticArray<T>,
  start: i32 = 0,
  end: i32 = array.length - 1
): i32 {
  let swapIdx: i32 = start;
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
function _quickSort<T>(
  array: StaticArray<T>,
  left: i32,
  right: i32
): StaticArray<T> {
  if (left < right) {
    let pivotIndex = getPivotIndex(array, left, right);
    getPivotIndex(array, left, pivotIndex - 1);
    getPivotIndex(array, pivotIndex + 1, right);
  }
  return array;
}

export function quickSort_uint64_asm(array: StaticArray<u64>): StaticArray<u64> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int64_asm(array: StaticArray<i64>): StaticArray<i64> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_float64_asm(array: StaticArray<f64>): StaticArray<f64> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_float32_asm(array: StaticArray<f32>): StaticArray<f32> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_uint32_asm(array: StaticArray<u32>): StaticArray<u32> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int32_asm(array: StaticArray<i32>): StaticArray<i32> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_uint16_asm(array: StaticArray<i16>): StaticArray<i16> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int16_asm(array: StaticArray<u16>): StaticArray<u16> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_uint8_asm(array: StaticArray<u8>): StaticArray<u8> {
  return _quickSort(array, 0, array.length - 1);
}
export function quickSort_int8_asm(array: StaticArray<i8>): StaticArray<i8> {
  return _quickSort(array, 0, array.length - 1);
}
