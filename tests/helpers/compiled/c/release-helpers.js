// @ts-check
import InitModule from "./release.js";

const module = await InitModule();

/**
 * @type {WebAssembly.Memory}
 */
export const memory = Object.values(module.asm).filter((item) => item instanceof WebAssembly.Memory)[0];
export const { _free: free } = module;

export function initPoints_u64_c(pointArray) {
  const pointer = module._makePoints_u64_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u64_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
export function initPoints_i64_c(pointArray) {
  const pointer = module._makePoints_i64_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i64_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
}
export function initPoints_f64_c(pointArray) {
  const pointer = module._makePoints_f64_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_f64_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
export function initPoints_f32_c(pointArray) {
  const pointer = module._makePoints_f32_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_f32_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
}
export function initPoints_u32_c(pointArray) {
  const pointer = module._makePoints_u32_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u32_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
export function initPoints_i32_c(pointArray) {
  const pointer = module._makePoints_i32_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i32_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
}
export function initPoints_u16_c(pointArray) {
  const pointer = module._makePoints_u16_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u16_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
export function initPoints_i16_c(pointArray) {
  const pointer = module._makePoints_i16_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i16_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
}
export function initPoints_u8_c(pointArray) {
  const pointer = module._makePoints_u8_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_u8_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
  return pointer;
}
export function initPoints_i8_c(pointArray) {
  const pointer = module._makePoints_i8_c(pointArray.length);
  for (let i = 0; i < pointArray.length; i++) {
    module._setPoint_i8_c(pointer, i, pointArray[i][0], pointArray[i][1]);
  }
}

export function initArray1d_u64_c(array) {
  const pointer = module._makeArray1d_u64_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u64_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_i64_c(array) {
  const pointer = module._makeArray1d_i64_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i64_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_f64_c(array) {
  const pointer = module._makeArray1d_f64_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_f64_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_f32_c(array) {
  const pointer = module._makeArray1d_f32_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_f32_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_u32_c(array) {
  const pointer = module._makeArray1d_u32_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u32_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_i32_c(array) {
  const pointer = module._makeArray1d_i32_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i32_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_u16_c(array) {
  const pointer = module._makeArray1d_u16_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u16_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_i16_c(array) {
  const pointer = module._makeArray1d_i16_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i16_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_u8_c(array) {
  const pointer = module._makeArray1d_u8_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_u8_c(pointer, i, array[i]);
  }
  return pointer;
}
export function initArray1d_i8_c(array) {
  const pointer = module._makeArray1d_i8_c(array.length);
  for (let i = 0; i < array.length; i++) {
    module._setArray1d_i8_c(pointer, i, array[i]);
  }
  return pointer;
}

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

export const {
  _deleteArray2d_u64_c: deleteArray2d_u64_c,
  _deleteArray2d_i64_c: deleteArray2d_i64_c,
  _deleteArray2d_f64_c: deleteArray2d_f64_c,
  _deleteArray2d_f32_c: deleteArray2d_f32_c,
  _deleteArray2d_u32_c: deleteArray2d_u32_c,
  _deleteArray2d_i32_c: deleteArray2d_i32_c,
  _deleteArray2d_u16_c: deleteArray2d_u16_c,
  _deleteArray2d_i16_c: deleteArray2d_i16_c,
  _deleteArray2d_u8_c: deleteArray2d_u8_c,
  _deleteArray2d_i8_c: deleteArray2d_i8_c,

  _shallowDeleteArray2d_u64_c: shallowDeleteArray2d_u64_c,
  _shallowDeleteArray2d_i64_c: shallowDeleteArray2d_i64_c,
  _shallowDeleteArray2d_f64_c: shallowDeleteArray2d_f64_c,
  _shallowDeleteArray2d_f32_c: shallowDeleteArray2d_f32_c,
  _shallowDeleteArray2d_u32_c: shallowDeleteArray2d_u32_c,
  _shallowDeleteArray2d_i32_c: shallowDeleteArray2d_i32_c,
  _shallowDeleteArray2d_u16_c: shallowDeleteArray2d_u16_c,
  _shallowDeleteArray2d_i16_c: shallowDeleteArray2d_i16_c,
  _shallowDeleteArray2d_u8_c: shallowDeleteArray2d_u8_c,
  _shallowDeleteArray2d_i8_c: shallowDeleteArray2d_i8_c,

  _deleteArray3d_u64_c: deleteArray3d_u64_c,
  _deleteArray3d_i64_c: deleteArray3d_i64_c,
  _deleteArray3d_f64_c: deleteArray3d_f64_c,
  _deleteArray3d_f32_c: deleteArray3d_f32_c,
  _deleteArray3d_u32_c: deleteArray3d_u32_c,
  _deleteArray3d_i32_c: deleteArray3d_i32_c,
  _deleteArray3d_u16_c: deleteArray3d_u16_c,
  _deleteArray3d_i16_c: deleteArray3d_i16_c,
  _deleteArray3d_u8_c: deleteArray3d_u8_c,
  _deleteArray3d_i8_c: deleteArray3d_i8_c,

  _deleteArray1d_f32_c: deleteArray1d_f32_c,
  _deleteArray1d_f64_c: deleteArray1d_f64_c,
  _deleteArray1d_i8_c: deleteArray1d_i8_c,
  _deleteArray1d_i16_c: deleteArray1d_i16_c,
  _deleteArray1d_i32_c: deleteArray1d_i32_c,
  _deleteArray1d_i64_c: deleteArray1d_i64_c,
  _deleteArray1d_u8_c: deleteArray1d_u8_c,
  _deleteArray1d_u16_c: deleteArray1d_u16_c,
  _deleteArray1d_u32_c: deleteArray1d_u32_c,
  _deleteArray1d_u64_c: deleteArray1d_u64_c,

  _deleteMatrix_f32_c: deleteMatrix_f32_c,
  _deleteMatrix_f64_c: deleteMatrix_f64_c,
  _deleteMatrix_i8_c: deleteMatrix_i8_c,
  _deleteMatrix_i16_c: deleteMatrix_i16_c,
  _deleteMatrix_i32_c: deleteMatrix_i32_c,
  _deleteMatrix_i64_c: deleteMatrix_i64_c,
  _deleteMatrix_u8_c: deleteMatrix_u8_c,
  _deleteMatrix_u16_c: deleteMatrix_u16_c,
  _deleteMatrix_u32_c: deleteMatrix_u32_c,
  _deleteMatrix_u64_c: deleteMatrix_u64_c,

  _average_f32_c: average_f32_c,
  _average_f64_c: average_f64_c,
  _average_i8_c: average_i8_c,
  _average_i16_c: average_i16_c,
  _average_i32_c: average_i32_c,
  _average_i64_c: average_i64_c,
  _average_u8_c: average_u8_c,
  _average_u16_c: average_u16_c,
  _average_u32_c: average_u32_c,
  _average_u64_c: average_u64_c,

  _binarySearch_f32_c: binarySearch_f32_c,
  _binarySearch_f64_c: binarySearch_f64_c,
  _binarySearch_i8_c: binarySearch_i8_c,
  _binarySearch_i16_c: binarySearch_i16_c,
  _binarySearch_i32_c: binarySearch_i32_c,
  _binarySearch_i64_c: binarySearch_i64_c,
  _binarySearch_u8_c: binarySearch_u8_c,
  _binarySearch_u16_c: binarySearch_u16_c,
  _binarySearch_u32_c: binarySearch_u32_c,
  _binarySearch_u64_c: binarySearch_u64_c,
  _bubbleSort_f32_c: bubbleSort_f32_c,
  _bubbleSort_f64_c: bubbleSort_f64_c,
  _bubbleSort_i8_c: bubbleSort_i8_c,
  _bubbleSort_i16_c: bubbleSort_i16_c,
  _bubbleSort_i32_c: bubbleSort_i32_c,
  _bubbleSort_i64_c: bubbleSort_i64_c,
  _bubbleSort_u8_c: bubbleSort_u8_c,
  _bubbleSort_u16_c: bubbleSort_u16_c,
  _bubbleSort_u32_c: bubbleSort_u32_c,
  _bubbleSort_u64_c: bubbleSort_u64_c,

  _interpolationSearch_f32_c: interpolationSearch_f32_c,
  _interpolationSearch_f64_c: interpolationSearch_f64_c,
  _interpolationSearch_i8_c: interpolationSearch_i8_c,
  _interpolationSearch_i16_c: interpolationSearch_i16_c,
  _interpolationSearch_i32_c: interpolationSearch_i32_c,
  _interpolationSearch_i64_c: interpolationSearch_i64_c,
  _interpolationSearch_u8_c: interpolationSearch_u8_c,
  _interpolationSearch_u16_c: interpolationSearch_u16_c,
  _interpolationSearch_u32_c: interpolationSearch_u32_c,
  _interpolationSearch_u64_c: interpolationSearch_u64_c,

  _matrixAddition_f32_c: matrixAddition_f32_c,
  _matrixAddition_f64_c: matrixAddition_f64_c,
  _matrixAddition_i8_c: matrixAddition_i8_c,
  _matrixAddition_i16_c: matrixAddition_i16_c,
  _matrixAddition_i32_c: matrixAddition_i32_c,
  _matrixAddition_i64_c: matrixAddition_i64_c,
  _matrixAddition_u8_c: matrixAddition_u8_c,
  _matrixAddition_u16_c: matrixAddition_u16_c,
  _matrixAddition_u32_c: matrixAddition_u32_c,
  _matrixAddition_u64_c: matrixAddition_u64_c,

  _matrixMultiplication_f32_c: matrixMultiplication_f32_c,
  _matrixMultiplication_f64_c: matrixMultiplication_f64_c,
  _matrixMultiplication_i8_c: matrixMultiplication_i8_c,
  _matrixMultiplication_i16_c: matrixMultiplication_i16_c,
  _matrixMultiplication_i32_c: matrixMultiplication_i32_c,
  _matrixMultiplication_i64_c: matrixMultiplication_i64_c,
  _matrixMultiplication_u8_c: matrixMultiplication_u8_c,
  _matrixMultiplication_u16_c: matrixMultiplication_u16_c,
  _matrixMultiplication_u32_c: matrixMultiplication_u32_c,
  _matrixMultiplication_u64_c: matrixMultiplication_u64_c,

  _matrixSubtraction_f32_c: matrixSubtraction_f32_c,
  _matrixSubtraction_f64_c: matrixSubtraction_f64_c,
  _matrixSubtraction_i8_c: matrixSubtraction_i8_c,
  _matrixSubtraction_i16_c: matrixSubtraction_i16_c,
  _matrixSubtraction_i32_c: matrixSubtraction_i32_c,
  _matrixSubtraction_i64_c: matrixSubtraction_i64_c,
  _matrixSubtraction_u8_c: matrixSubtraction_u8_c,
  _matrixSubtraction_u16_c: matrixSubtraction_u16_c,
  _matrixSubtraction_u32_c: matrixSubtraction_u32_c,
  _matrixSubtraction_u64_c: matrixSubtraction_u64_c,

  _max_f32_c: max_f32_c,
  _max_f64_c: max_f64_c,
  _max_i8_c: max_i8_c,
  _max_i16_c: max_i16_c,
  _max_i32_c: max_i32_c,
  _max_i64_c: max_i64_c,
  _max_u8_c: max_u8_c,
  _max_u16_c: max_u16_c,
  _max_u32_c: max_u32_c,
  _max_u64_c: max_u64_c,

  _mergeSort_f32_c: mergeSort_f32_c,
  _mergeSort_f64_c: mergeSort_f64_c,
  _mergeSort_i8_c: mergeSort_i8_c,
  _mergeSort_i16_c: mergeSort_i16_c,
  _mergeSort_i32_c: mergeSort_i32_c,
  _mergeSort_i64_c: mergeSort_i64_c,
  _mergeSort_u8_c: mergeSort_u8_c,
  _mergeSort_u16_c: mergeSort_u16_c,
  _mergeSort_u32_c: mergeSort_u32_c,
  _mergeSort_u64_c: mergeSort_u64_c,

  _metaBinarySearch_f32_c: metaBinarySearch_f32_c,
  _metaBinarySearch_f64_c: metaBinarySearch_f64_c,
  _metaBinarySearch_i8_c: metaBinarySearch_i8_c,
  _metaBinarySearch_i16_c: metaBinarySearch_i16_c,
  _metaBinarySearch_i32_c: metaBinarySearch_i32_c,
  _metaBinarySearch_i64_c: metaBinarySearch_i64_c,
  _metaBinarySearch_u8_c: metaBinarySearch_u8_c,
  _metaBinarySearch_u16_c: metaBinarySearch_u16_c,
  _metaBinarySearch_u32_c: metaBinarySearch_u32_c,
  _metaBinarySearch_u64_c: metaBinarySearch_u64_c,

  _min_f32_c: min_f32_c,
  _min_f64_c: min_f64_c,
  _min_i8_c: min_i8_c,
  _min_i16_c: min_i16_c,
  _min_i32_c: min_i32_c,
  _min_i64_c: min_i64_c,
  _min_u8_c: min_u8_c,
  _min_u16_c: min_u16_c,
  _min_u32_c: min_u32_c,
  _min_u64_c: min_u64_c,

  _quickSort_f32_c: quickSort_f32_c,
  _quickSort_f64_c: quickSort_f64_c,
  _quickSort_i8_c: quickSort_i8_c,
  _quickSort_i16_c: quickSort_i16_c,
  _quickSort_i32_c: quickSort_i32_c,
  _quickSort_i64_c: quickSort_i64_c,
  _quickSort_u8_c: quickSort_u8_c,
  _quickSort_u16_c: quickSort_u16_c,
  _quickSort_u32_c: quickSort_u32_c,
  _quickSort_u64_c: quickSort_u64_c,

  _selectionSort_f32_c: selectionSort_f32_c,
  _selectionSort_f64_c: selectionSort_f64_c,
  _selectionSort_i8_c: selectionSort_i8_c,
  _selectionSort_i16_c: selectionSort_i16_c,
  _selectionSort_i32_c: selectionSort_i32_c,
  _selectionSort_i64_c: selectionSort_i64_c,
  _selectionSort_u8_c: selectionSort_u8_c,
  _selectionSort_u16_c: selectionSort_u16_c,
  _selectionSort_u32_c: selectionSort_u32_c,
  _selectionSort_u64_c: selectionSort_u64_c,

  _sum_f32_c: sum_f32_c,
  _sum_f64_c: sum_f64_c,
  _sum_i8_c: sum_i8_c,
  _sum_i16_c: sum_i16_c,
  _sum_i32_c: sum_i32_c,
  _sum_i64_c: sum_i64_c,
  _sum_u8_c: sum_u8_c,
  _sum_u16_c: sum_u16_c,
  _sum_u32_c: sum_u32_c,
  _sum_u64_c: sum_u64_c,
  _kMean_u64_c: kMean_u64_c,
  _kMean_i64_c: kMean_i64_c,
  _kMean_f64_c: kMean_f64_c,
  _kMean_f32_c: kMean_f32_c,
  _kMean_u32_c: kMean_u32_c,
  _kMean_i32_c: kMean_i32_c,
  _kMean_u16_c: kMean_u16_c,
  _kMean_i16_c: kMean_i16_c,
  _kMean_u8_c: kMean_u8_c,
  _kMean_i8_c: kMean_i8_c,
} = module;
