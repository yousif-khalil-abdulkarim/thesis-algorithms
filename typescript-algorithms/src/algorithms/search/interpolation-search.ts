function interpolationSearch_small(
  array:
    | Float64Array
    | Float32Array
    | Uint32Array
    | Int32Array
    | Uint16Array
    | Int16Array
    | Uint8Array
    | Int8Array,
  startOffset: number,
  endOffset: number,
  target: number
): number {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return interpolationSearch_small(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return interpolationSearch_small(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
function interpolationSearch_large(
  array: BigUint64Array | BigInt64Array,
  startOffset: number,
  endOffset: number,
  target: bigint
): number {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      ((endOffset - startOffset) /
        (Number(array[endOffset]) - Number(array[startOffset]))) *
        (Number(target) - Number(array[startOffset]));

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return interpolationSearch_large(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return interpolationSearch_large(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}

export function interpolationSearch_u64_js(
  array: BigUint64Array,
  target: bigint
): number {
  return interpolationSearch_large(array, 0, array.length - 1, target);
}
export function interpolationSearch_i64_js(
  array: BigInt64Array,
  target: bigint
): number {
  return interpolationSearch_large(array, 0, array.length - 1, target);
}
export function interpolationSearch_f64_js(
  array: Float64Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_f32_js(
  array: Float32Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_u32_js(
  array: Uint32Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_i32_js(
  array: Int32Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_u16_js(
  array: Uint16Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_i16_js(
  array: Int16Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_u8_js(
  array: Uint8Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_i8_js(
  array: Int8Array,
  target: number
): number {
  return interpolationSearch_small(array, 0, array.length - 1, target);
}
