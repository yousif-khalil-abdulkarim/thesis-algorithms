import { swapTwo } from "../shared";

export function selectionSort_uint64_js(array: BigUint64Array): BigUint64Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_int64_js(array: BigInt64Array): BigInt64Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_float64_js(array: Float64Array): Float64Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_float32_js(array: Float32Array): Float32Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_uint32_js(array: Uint32Array): Uint32Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_int32_js(array: Int32Array): Int32Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_uint16_js(array: Uint16Array): Uint16Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_int16_js(array: Int16Array): Int16Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_uint8_js(array: Uint8Array): Uint8Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
export function selectionSort_int8_js(array: Int8Array): Int8Array {
  let min: number;
  for (let i = 0; i < array.length; i++) {
    min = i;
    for (let j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min !== i) {
      swapTwo(array, min, i);
    }
  }
  return array;
}
