import { sortTwo } from "../shared";

export function bubbleSort_uint64_asm(array: StaticArray<u64>): StaticArray<u64> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int64_asm(array: StaticArray<i64>): StaticArray<i64> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_float64_asm(array: StaticArray<f64>): StaticArray<f64> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_float32_asm(array: StaticArray<f32>): StaticArray<f32> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_uint32_asm(array: StaticArray<u32>): StaticArray<u32> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int32_asm(array: StaticArray<i32>): StaticArray<i32> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_uint16_asm(array: StaticArray<u16>): StaticArray<u16> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int16_asm(array: StaticArray<i16>): StaticArray<i16> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_uint8_asm(array: StaticArray<u8>): StaticArray<u8> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int8_asm(array: StaticArray<i8>): StaticArray<i8> {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
