export function average_u64_js(array: BigUint64Array): bigint {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / BigInt(array.length);
}
export function average_i64_js(array: BigInt64Array): bigint {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / BigInt(array.length);
}
export function average_f64_js(array: Float64Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_f32_js(array: Float32Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_u32_js(array: Uint32Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_i32_js(array: Int32Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_u16_js(array: Uint16Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_i16_js(array: Int16Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_u8_js(array: Uint8Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
export function average_i8_js(array: Int8Array): number {
  let sum = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    sum += item;
  }
  return sum / array.length;
}
