export function metaBinarySearch_uint64_js(
  array: BigUint64Array,
  target: bigint
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_int64_js(
  array: BigInt64Array,
  target: bigint
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_float64_js(
  array: Float64Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_float32_js(
  array: Float32Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_uint32_js(
  array: Uint32Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_int32_js(
  array: Int32Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_uint16_js(
  array: Uint16Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_int16_js(
  array: Int16Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_uint8_js(
  array: Uint8Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_int8_js(
  array: Int8Array,
  target: number
): number {
  let n = array.length;
  let lg = Math.log(n - 1) / Math.log(2) + 1;

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
