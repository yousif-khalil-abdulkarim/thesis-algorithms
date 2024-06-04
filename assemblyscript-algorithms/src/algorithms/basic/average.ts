export function average_u64_asm(array: StaticArray<u64>): u64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u64>array.length;
}
export function average_i64_asm(array: StaticArray<i64>): i64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <i64>array.length;
}
export function average_f64_asm(array: StaticArray<f64>): f64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <f64>array.length;
}
export function average_f32_asm(array: StaticArray<f32>): f32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <f32>array.length;
}
export function average_i32_asm(array: StaticArray<i32>): i32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_u32_asm(array: StaticArray<u32>): u32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u32>array.length;
}
export function average_u16_asm(array: StaticArray<u16>): u16 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u16>array.length;
}
export function average_i16_asm(array: StaticArray<i16>): i16 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <i16>array.length;
}
export function average_u8_asm(array: StaticArray<u8>): u8 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u8>array.length;
}
export function average_i8_asm(array: StaticArray<i8>): i8 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <i8>array.length;
}
