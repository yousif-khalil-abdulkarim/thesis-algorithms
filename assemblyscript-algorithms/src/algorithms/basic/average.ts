export function average_uint64_wasm(array: StaticArray<u64>): u64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u64>array.length;
}
export function average_int64_wasm(array: StaticArray<i64>): i64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <i64>array.length;
}
export function average_float64_wasm(array: StaticArray<f64>): f64 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <f64>array.length;
}
export function average_float32_wasm(array: StaticArray<f32>): f32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <f32>array.length;
}
export function average_int32_wasm(array: StaticArray<i32>): i32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_uint32_wasm(array: StaticArray<u32>): u32 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u32>array.length;
}
export function average_uint16_wasm(array: StaticArray<u16>): u16 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u16>array.length;
}
export function average_int16_wasm(array: StaticArray<i16>): i16 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <i16>array.length;
}
export function average_uint8_wasm(array: StaticArray<u8>): u8 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <u8>array.length;
}
export function average_int8_wasm(array: StaticArray<i8>): i8 {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / <i8>array.length;
}
