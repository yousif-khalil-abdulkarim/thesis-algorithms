export function sum_uint64_asm(array: StaticArray<u64>): u64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_int64_asm(array: StaticArray<i64>): i64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_float64_asm(array: StaticArray<f64>): f64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_float32_asm(array: StaticArray<f32>): f32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_uint32_asm(array: StaticArray<u32>): u32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_int32_asm(array: StaticArray<i32>): i32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_uint16_asm(array: StaticArray<u16>): u16 {
    array.length
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_int16_asm(array: StaticArray<i16>): i16 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_uint8_asm(array: StaticArray<u8>): u8 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
export function sum_int8_asm(array: StaticArray<i8>): i8 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum;
}
