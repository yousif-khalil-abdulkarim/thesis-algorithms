export const memory: WebAssembly.Memory;

export function free(pointer: number): void;
export const memory: WebAssembly.Memory;
export function malloc(sizeInBytes: number): number;

export function initArray1d_u64_c(array: ArrayLike<bigint>): number;
export function initArray1d_i64_c(array: ArrayLike<bigint>): number;
export function initArray1d_f64_c(array: ArrayLike<number>): number;
export function initArray1d_f32_c(array: ArrayLike<number>): number;
export function initArray1d_u32_c(array: ArrayLike<number>): number;
export function initArray1d_i32_c(array: ArrayLike<number>): number;
export function initArray1d_u16_c(array: ArrayLike<number>): number;
export function initArray1d_i16_c(array: ArrayLike<number>): number;
export function initArray1d_u8_c(array: ArrayLike<number>): number;
export function initArray1d_i8_c(array: ArrayLike<number>): number;

export function initMatrix_u64_c(matrix: ArrayLike<ArrayLike<bigint>>): number;
export function initMatrix_i64_c(matrix: ArrayLike<ArrayLike<bigint>>): number;
export function initMatrix_f64_c(matrix: ArrayLike<ArrayLike<number>>): number;
export function initMatrix_f32_c(matrix: ArrayLike<ArrayLike<number>>): number;
export function initMatrix_u32_c(matrix: ArrayLike<ArrayLike<number>>): number;
export function initMatrix_i32_c(matrix: ArrayLike<ArrayLike<number>>): number;
export function initMatrix_u16_c(matrix: ArrayLike<ArrayLike<number>>): number;
export function initMatrix_i16_c(matrix: ArrayLike<ArrayLike<number>>): number;
export function initMatrix_u8_c(matrix: ArrayLike<ArrayLike<number>>): number;
export function initMatrix_i8_c(matrix: ArrayLike<ArrayLike<number>>): number;

export function deleteArray1d_f32_c(arrayPointer: number): void;
export function deleteArray1d_f64_c(arrayPointer: number): void;
export function deleteArray1d_i8_c(arrayPointer: number): void;
export function deleteArray1d_i16_c(arrayPointer: number): void;
export function deleteArray1d_i32_c(arrayPointer: number): void;
export function deleteArray1d_i64_c(arrayPointer: number): void;
export function deleteArray1d_u8_c(arrayPointer: number): void;
export function deleteArray1d_u16_c(arrayPointer: number): void;
export function deleteArray1d_u32_c(arrayPointer: number): void;
export function deleteArray1d_u64_c(arrayPointer: number): void;

export function deleteMatrix_u64_c(matrixPointer: number): void;
export function deleteMatrix_i64_c(matrixPointer: number): void;
export function deleteMatrix_f64_c(matrixPointer: number): void;
export function deleteMatrix_f32_c(matrixPointer: number): void;
export function deleteMatrix_u32_c(matrixPointer: number): void;
export function deleteMatrix_i32_c(matrixPointer: number): void;
export function deleteMatrix_u16_c(matrixPointer: number): void;
export function deleteMatrix_i16_c(matrixPointer: number): void;
export function deleteMatrix_u8_c(matrixPointer: number): void;
export function deleteMatrix_i8_c(matrixPointer: number): void;

export function average_f32_c(arrayPointer: number): number;
export function average_f64_c(arrayPointer: number): number;
export function average_i8_c(arrayPointer: number): number;
export function average_i16_c(arrayPointer: number): number;
export function average_i32_c(arrayPointer: number): number;
export function average_i64_c(arrayPointer: number): number;
export function average_u8_c(arrayPointer: number): number;
export function average_u16_c(arrayPointer: number): number;
export function average_u32_c(arrayPointer: number): number;
export function average_u64_c(arrayPointer: number): number;

export function binarySearch_f32_c(
  arrayPointer: number,
  target: number
): number;
export function binarySearch_f64_c(
  arrayPointer: number,
  target: number
): number;
export function binarySearch_i8_c(arrayPointer: number, target: number): number;
export function binarySearch_i16_c(
  arrayPointer: number,
  target: number
): number;
export function binarySearch_i32_c(
  arrayPointer: number,
  target: number
): number;
export function binarySearch_i64_c(
  arrayPointer: number,
  target: number
): number;
export function binarySearch_u8_c(arrayPointer: number, target: number): number;
export function binarySearch_u16_c(
  arrayPointer: number,
  target: number
): number;
export function binarySearch_u32_c(
  arrayPointer: number,
  target: number
): number;
export function binarySearch_u64_c(
  arrayPointer: number,
  target: number
): number;

export function bubbleSort_f32_c(arrayPointer: number): number;
export function bubbleSort_f64_c(arrayPointer: number): number;
export function bubbleSort_i8_c(arrayPointer: number): number;
export function bubbleSort_i16_c(arrayPointer: number): number;
export function bubbleSort_i32_c(arrayPointer: number): number;
export function bubbleSort_i64_c(arrayPointer: number): number;
export function bubbleSort_u8_c(arrayPointer: number): number;
export function bubbleSort_u16_c(arrayPointer: number): number;
export function bubbleSort_u32_c(arrayPointer: number): number;
export function bubbleSort_u64_c(arrayPointer: number): number;

export function interpolationSearch_f32_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_f64_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_i8_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_i16_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_i32_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_i64_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_u8_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_u16_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_u32_c(
  arrayPointer: number,
  target: number
): number;
export function interpolationSearch_u64_c(
  arrayPointer: number,
  target: number
): number;

export function matrixAddition_f32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_f64_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_i8_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_i16_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_i32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_i64_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_u8_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_u16_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_u32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixAddition_u64_c(
  matrixAPointer: number,
  matrixBPointer
): number;

export function matrixMultiplication_f32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_f64_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_i8_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_i16_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_i32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_i64_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_u8_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_u16_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_u32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixMultiplication_u64_c(
  matrixAPointer: number,
  matrixBPointer
): number;

export function matrixSubtraction_f32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_f64_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_i8_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_i16_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_i32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_i64_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_u8_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_u16_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_u32_c(
  matrixAPointer: number,
  matrixBPointer
): number;
export function matrixSubtraction_u64_c(
  matrixAPointer: number,
  matrixBPointer
): number;

export function max_f32_c(arrayPointer: number): number;
export function max_f64_c(arrayPointer: number): number;
export function max_i8_c(arrayPointer: number): number;
export function max_i16_c(arrayPointer: number): number;
export function max_i32_c(arrayPointer: number): number;
export function max_i64_c(arrayPointer: number): number;
export function max_u8_c(arrayPointer: number): number;
export function max_u16_c(arrayPointer: number): number;
export function max_u32_c(arrayPointer: number): number;
export function max_u64_c(arrayPointer: number): number;

export function mergeSort_f32_c(arrayPointer: number): number;
export function mergeSort_f64_c(arrayPointer: number): number;
export function mergeSort_i8_c(arrayPointer: number): number;
export function mergeSort_i16_c(arrayPointer: number): number;
export function mergeSort_i32_c(arrayPointer: number): number;
export function mergeSort_i64_c(arrayPointer: number): number;
export function mergeSort_u8_c(arrayPointer: number): number;
export function mergeSort_u16_c(arrayPointer: number): number;
export function mergeSort_u32_c(arrayPointer: number): number;
export function mergeSort_u64_c(arrayPointer: number): number;

export function metaBinarySearch_f32_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_f64_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_i8_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_i16_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_i32_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_i64_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_u8_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_u16_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_u32_c(
  arrayPointer: number,
  target: number
): number;
export function metaBinarySearch_u64_c(
  arrayPointer: number,
  target: number
): number;

export function min_f32_c(arrayPointer: number): number;
export function min_f64_c(arrayPointer: number): number;
export function min_i8_c(arrayPointer: number): number;
export function min_i16_c(arrayPointer: number): number;
export function min_i32_c(arrayPointer: number): number;
export function min_i64_c(arrayPointer: number): number;
export function min_u8_c(arrayPointer: number): number;
export function min_u16_c(arrayPointer: number): number;
export function min_u32_c(arrayPointer: number): number;
export function min_u64_c(arrayPointer: number): number;

export function quickSort_f32_c(arrayPointer: number): number;
export function quickSort_f64_c(arrayPointer: number): number;
export function quickSort_i8_c(arrayPointer: number): number;
export function quickSort_i16_c(arrayPointer: number): number;
export function quickSort_i32_c(arrayPointer: number): number;
export function quickSort_i64_c(arrayPointer: number): number;
export function quickSort_u8_c(arrayPointer: number): number;
export function quickSort_u16_c(arrayPointer: number): number;
export function quickSort_u32_c(arrayPointer: number): number;
export function quickSort_u64_c(arrayPointer: number): number;

export function selectionSort_f32_c(arrayPointer: number): number;
export function selectionSort_f64_c(arrayPointer: number): number;
export function selectionSort_i8_c(arrayPointer: number): number;
export function selectionSort_i16_c(arrayPointer: number): number;
export function selectionSort_i32_c(arrayPointer: number): number;
export function selectionSort_i64_c(arrayPointer: number): number;
export function selectionSort_u8_c(arrayPointer: number): number;
export function selectionSort_u16_c(arrayPointer: number): number;
export function selectionSort_u32_c(arrayPointer: number): number;
export function selectionSort_u64_c(arrayPointer: number): number;

export function sum_f32_c(arrayPointer: number): number;
export function sum_f64_c(arrayPointer: number): number;
export function sum_i8_c(arrayPointer: number): number;
export function sum_i16_c(arrayPointer: number): number;
export function sum_i32_c(arrayPointer: number): number;
export function sum_i64_c(arrayPointer: number): number;
export function sum_u8_c(arrayPointer: number): number;
export function sum_u16_c(arrayPointer: number): number;
export function sum_u32_c(arrayPointer: number): number;
export function sum_u64_c(arrayPointer: number): number;
