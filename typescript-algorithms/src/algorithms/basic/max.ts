export function min_uint64_js(array: BigUint64Array): bigint {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_int64_js(array: BigInt64Array): bigint {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_float64_js(array: Float64Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_float32_js(array: Float32Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_uint32_js(array: Uint32Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_int32_js(array: Int32Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_uint16_js(array: Uint16Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_int16_js(array: Int16Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_uint8_js(array: Uint8Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
export function min_int8_js(array: Int8Array): number {
  let min = array[0];
  for (let i = 1; i < array.length; i++) {
    let item = array[i];
    if (item > min) min = item;
  }
  return min;
}
