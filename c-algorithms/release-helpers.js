// @ts-check
import InitModule from "./dist/release.js";
import * as shared from "../tests/helpers/shared.js";

const module = await InitModule();

/**
 * @type {WebAssembly.Memory}
 */
export const memory = Object.values(module.asm).filter(
  (item) => item instanceof WebAssembly.Memory
)[0];
export const { _free: free } = module;

/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_u64_c(pointArray) {
  const pointer = module._makePoints_u64_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u64_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_i64_c(pointArray) {
  const pointer = module._makePoints_i64_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i64_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_f64_c(pointArray) {
  const pointer = module._makePoints_f64_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_f64_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_f32_c(pointArray) {
  const pointer = module._makePoints_f32_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_f32_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_u32_c(pointArray) {
  const pointer = module._makePoints_u32_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u32_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_i32_c(pointArray) {
  const pointer = module._makePoints_i32_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i32_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_u16_c(pointArray) {
  const pointer = module._makePoints_u16_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u16_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_i16_c(pointArray) {
  const pointer = module._makePoints_i16_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i16_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_u8_c(pointArray) {
  const pointer = module._makePoints_u8_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u8_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<shared.Point>} pointArray
 * @returns {number}
 */
export function initPoints_i8_c(pointArray) {
  const pointer = module._makePoints_i8_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i8_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}

/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_u64_c(array) {
  const pointer = module._makeArray1d_u64_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u64_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_i64_c(array) {
  const pointer = module._makeArray1d_i64_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i64_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_f64_c(array) {
  const pointer = module._makeArray1d_f64_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_f64_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_f32_c(array) {
  const pointer = module._makeArray1d_f32_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_f32_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_u32_c(array) {
  const pointer = module._makeArray1d_u32_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u32_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_i32_c(array) {
  const pointer = module._makeArray1d_i32_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i32_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_u16_c(array) {
  const pointer = module._makeArray1d_u16_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u16_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_i16_c(array) {
  const pointer = module._makeArray1d_i16_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i16_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_u8_c(array) {
  const pointer = module._makeArray1d_u8_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u8_c(pointer, i, array[i]);
  }
  return pointer;
}
/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
export function initArray1d_i8_c(array) {
  const pointer = module._makeArray1d_i8_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i8_c(pointer, i, array[i]);
  }
  return pointer;
}

/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_u64_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_u64_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_u64_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_i64_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_i64_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_i64_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_f64_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_f64_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_f64_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_f32_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_f32_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_f32_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_u32_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_u32_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_u32_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_i32_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_i32_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_i32_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_u16_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_u16_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_u16_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_i16_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_i16_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_i16_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_u8_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_u8_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_u8_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}
/**
 * @param {shared.Matrix<number | bigint>} matrix
 * @returns {number}
 */
export function initMatrix_i8_c(matrix) {
  const height = matrix.length;
  const width = matrix[0].length;
  const pointer = module._makeMatrix_i8_c(height, width);
  for (let y = 0; y < height; y++) {
    for (let x = 0; x < width; x++) {
      module._setMatrix_i8_c(pointer, x, y, matrix[y][x]);
    }
  }
  return pointer;
}

/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_u64_c = module._deleteArray2d_u64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_i64_c = module._deleteArray2d_i64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_f64_c = module._deleteArray2d_f64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_f32_c = module._deleteArray2d_f32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_u32_c = module._deleteArray2d_u32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_i32_c = module._deleteArray2d_i32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_u16_c = module._deleteArray2d_u16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_i16_c = module._deleteArray2d_i16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_u8_c = module._deleteArray2d_u8_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray2d_i8_c = module._deleteArray2d_i8_c;

/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_u64_c = module._shallowDeleteArray2d_u64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_i64_c = module._shallowDeleteArray2d_i64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_f64_c = module._shallowDeleteArray2d_f64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_f32_c = module._shallowDeleteArray2d_f32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_u32_c = module._shallowDeleteArray2d_u32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_i32_c = module._shallowDeleteArray2d_i32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_u16_c = module._shallowDeleteArray2d_u16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_i16_c = module._shallowDeleteArray2d_i16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_u8_c = module._shallowDeleteArray2d_u8_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const shallowDeleteArray2d_i8_c = module._shallowDeleteArray2d_i8_c;

/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_u64_c = module._deleteArray3d_u64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_i64_c = module._deleteArray3d_i64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_f64_c = module._deleteArray3d_f64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_f32_c = module._deleteArray3d_f32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_u32_c = module._deleteArray3d_u32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_i32_c = module._deleteArray3d_i32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_u16_c = module._deleteArray3d_u16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_i16_c = module._deleteArray3d_i16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_u8_c = module._deleteArray3d_u8_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray3d_i8_c = module._deleteArray3d_i8_c;

/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_f32_c = module._deleteArray1d_f32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_f64_c = module._deleteArray1d_f64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_i8_c = module._deleteArray1d_i8_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_i16_c = module._deleteArray1d_i16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_i32_c = module._deleteArray1d_i32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_i64_c = module._deleteArray1d_i64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_u8_c = module._deleteArray1d_u8_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_u16_c = module._deleteArray1d_u16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_u32_c = module._deleteArray1d_u32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteArray1d_u64_c = module._deleteArray1d_u64_c;

/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_f32_c = module._deleteMatrix_f32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_f64_c = module._deleteMatrix_f64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_i8_c = module._deleteMatrix_i8_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_i16_c = module._deleteMatrix_i16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_i32_c = module._deleteMatrix_i32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_i64_c = module._deleteMatrix_i64_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_u8_c = module._deleteMatrix_u8_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_u16_c = module._deleteMatrix_u16_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_u32_c = module._deleteMatrix_u32_c;
/**
 * @type {(arrayPointer: number) => void}
 */
export const deleteMatrix_u64_c = module._deleteMatrix_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const average_f32_c = module._average_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_f64_c = module._average_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_i8_c = module._average_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_i16_c = module._average_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_i32_c = module._average_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_i64_c = module._average_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_u8_c = module._average_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_u16_c = module._average_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_u32_c = module._average_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const average_u64_c = module._average_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const max_f32_c = module._max_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_f64_c = module._max_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_i8_c = module._max_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_i16_c = module._max_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_i32_c = module._max_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_i64_c = module._max_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_u8_c = module._max_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_u16_c = module._max_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_u32_c = module._max_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const max_u64_c = module._max_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const min_f32_c = module._min_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_f64_c = module._min_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_i8_c = module._min_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_i16_c = module._min_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_i32_c = module._min_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_i64_c = module._min_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_u8_c = module._min_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_u16_c = module._min_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_u32_c = module._min_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const min_u64_c = module._min_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_f32_c = module._sum_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_f64_c = module._sum_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_i8_c = module._sum_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_i16_c = module._sum_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_i32_c = module._sum_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_i64_c = module._sum_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_u8_c = module._sum_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_u16_c = module._sum_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_u32_c = module._sum_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const sum_u64_c = module._sum_u64_c;

/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_f32_c = module._binarySearch_f32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_f64_c = module._binarySearch_f64_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_i8_c = module._binarySearch_i8_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_i16_c = module._binarySearch_i16_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_i32_c = module._binarySearch_i32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_i64_c = module._binarySearch_i64_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_u8_c = module._binarySearch_u8_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_u16_c = module._binarySearch_u16_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_u32_c = module._binarySearch_u32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const binarySearch_u64_c = module._binarySearch_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_f32_c = module._bubbleSort_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_f64_c = module._bubbleSort_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_i8_c = module._bubbleSort_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_i16_c = module._bubbleSort_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_i32_c = module._bubbleSort_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_i64_c = module._bubbleSort_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_u8_c = module._bubbleSort_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_u16_c = module._bubbleSort_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_u32_c = module._bubbleSort_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const bubbleSort_u64_c = module._bubbleSort_u64_c;

/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_f32_c = module._interpolationSearch_f32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_f64_c = module._interpolationSearch_f64_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_i8_c = module._interpolationSearch_i8_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_i16_c = module._interpolationSearch_i16_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_i32_c = module._interpolationSearch_i32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_i64_c = module._interpolationSearch_i64_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_u8_c = module._interpolationSearch_u8_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_u16_c = module._interpolationSearch_u16_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_u32_c = module._interpolationSearch_u32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const interpolationSearch_u64_c = module._interpolationSearch_u64_c;

/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_f32_c = module._metaBinarySearch_f32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_f64_c = module._metaBinarySearch_f64_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_i8_c = module._metaBinarySearch_i8_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_i16_c = module._metaBinarySearch_i16_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_i32_c = module._metaBinarySearch_i32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_i64_c = module._metaBinarySearch_i64_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_u8_c = module._metaBinarySearch_u8_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_u16_c = module._metaBinarySearch_u16_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_u32_c = module._metaBinarySearch_u32_c;
/**
 * @type {(arrayPointer: number, target: number | bigint) => number}
 */
export const metaBinarySearch_u64_c = module._metaBinarySearch_u64_c;

/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_f32_c = module._matrixAddition_f32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_f64_c = module._matrixAddition_f64_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_i8_c = module._matrixAddition_i8_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_i16_c = module._matrixAddition_i16_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_i32_c = module._matrixAddition_i32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_i64_c = module._matrixAddition_i64_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_u8_c = module._matrixAddition_u8_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_u16_c = module._matrixAddition_u16_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_u32_c = module._matrixAddition_u32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixAddition_u64_c = module._matrixAddition_u64_c;

/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_f32_c = module._matrixMultiplication_f32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_f64_c = module._matrixMultiplication_f64_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_i8_c = module._matrixMultiplication_i8_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_i16_c = module._matrixMultiplication_i16_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_i32_c = module._matrixMultiplication_i32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_i64_c = module._matrixMultiplication_i64_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_u8_c = module._matrixMultiplication_u8_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_u16_c = module._matrixMultiplication_u16_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_u32_c = module._matrixMultiplication_u32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixMultiplication_u64_c = module._matrixMultiplication_u64_c;

/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_f32_c = module._matrixSubtraction_f32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_f64_c = module._matrixSubtraction_f64_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_i8_c = module._matrixSubtraction_i8_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_i16_c = module._matrixSubtraction_i16_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_i32_c = module._matrixSubtraction_i32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_i64_c = module._matrixSubtraction_i64_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_u8_c = module._matrixSubtraction_u8_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_u16_c = module._matrixSubtraction_u16_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_u32_c = module._matrixSubtraction_u32_c;
/**
 * @type {(matrixAPointer: number, matrixBPointer: number) => number}
 */
export const matrixSubtraction_u64_c = module._matrixSubtraction_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_f32_c = module._mergeSort_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_f64_c = module._mergeSort_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_i8_c = module._mergeSort_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_i16_c = module._mergeSort_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_i32_c = module._mergeSort_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_i64_c = module._mergeSort_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_u8_c = module._mergeSort_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_u16_c = module._mergeSort_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_u32_c = module._mergeSort_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const mergeSort_u64_c = module._mergeSort_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_f32_c = module._quickSort_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_f64_c = module._quickSort_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_i8_c = module._quickSort_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_i16_c = module._quickSort_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_i32_c = module._quickSort_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_i64_c = module._quickSort_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_u8_c = module._quickSort_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_u16_c = module._quickSort_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_u32_c = module._quickSort_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const quickSort_u64_c = module._quickSort_u64_c;

/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_f32_c = module._selectionSort_f32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_f64_c = module._selectionSort_f64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_i8_c = module._selectionSort_i8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_i16_c = module._selectionSort_i16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_i32_c = module._selectionSort_i32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_i64_c = module._selectionSort_i64_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_u8_c = module._selectionSort_u8_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_u16_c = module._selectionSort_u16_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_u32_c = module._selectionSort_u32_c;
/**
 * @type {(arrayPointer: number) => number}
 */
export const selectionSort_u64_c = module._selectionSort_u64_c;

/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_u64_c = module._kMean_u64_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_i64_c = module._kMean_i64_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_f64_c = module._kMean_f64_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_f32_c = module._kMean_f32_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_u32_c = module._kMean_u32_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_i32_c = module._kMean_i32_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_u16_c = module._kMean_u16_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_i16_c = module._kMean_i16_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_u8_c = module._kMean_u8_c;
/**
 * @type {(numberOfCluster: number, points: number, maxLoops: number, tolerance: number) => number}
 */
export const kMean_i8_c = module._kMean_i8_c;
