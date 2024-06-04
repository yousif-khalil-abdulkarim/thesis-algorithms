export function max_u64_js(array: BigUint64Array): bigint {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_i64_js(array: BigInt64Array): bigint {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_f64_js(array: Float64Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_f32_js(array: Float32Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_u32_js(array: Uint32Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_i32_js(array: Int32Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_u16_js(array: Uint16Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_i16_js(array: Int16Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_u8_js(array: Uint8Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
export function max_i8_js(array: Int8Array): number {
  let max = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > max) max = item;
  }
  return max;
}
