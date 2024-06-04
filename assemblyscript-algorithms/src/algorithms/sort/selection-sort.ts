import { swapTwo } from "../shared";

export function selectionSort_u64_asm(array: StaticArray<u64>): StaticArray<u64> {
  let min: i32;
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
export function selectionSort_i64_asm(array: StaticArray<i64>): StaticArray<i64> {
  let min: i32;
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
export function selectionSort_f64_asm(array: StaticArray<f64>): StaticArray<f64> {
  let min: i32;
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
export function selectionSort_f32_asm(array: StaticArray<f32>): StaticArray<f32> {
  let min: i32;
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
export function selectionSort_u32_asm(array: StaticArray<u32>): StaticArray<u32> {
  let min: i32;
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
export function selectionSort_i32_asm(array: StaticArray<i32>): StaticArray<i32> {
  let min: i32;
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
export function selectionSort_u16_asm(array: StaticArray<u16>): StaticArray<u16> {
  let min: i32;
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
export function selectionSort_i16_asm(array: StaticArray<i16>): StaticArray<i16> {
  let min: i32;
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
export function selectionSort_u8_asm(array: StaticArray<u8>): StaticArray<u8> {
  let min: i32;
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
export function selectionSort_i8_asm(array: StaticArray<i8>): StaticArray<i8> {
  let min: i32;
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
