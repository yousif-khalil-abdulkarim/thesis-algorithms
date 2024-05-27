export function min_uint64_asm(array: StaticArray<u64>): u64 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_int64_asm(array: StaticArray<i64>): i64 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_float64_asm(array: StaticArray<f64>): f64 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_float32_asm(array: StaticArray<f32>): f32 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_uint32_asm(array: StaticArray<u32>): u32 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_int32_asm(array: StaticArray<i32>): i32 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_uint16_asm(array: StaticArray<u16>): u16 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_int16_asm(array: StaticArray<i16>): i16 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_uint8_asm(array: StaticArray<u8>): u8 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
export function min_int8_asm(array: StaticArray<i8>): i8 {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item < min) min = item;
  }
  return min;
}
