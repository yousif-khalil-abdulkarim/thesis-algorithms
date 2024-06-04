export function binarySearch_u64_js(
  array: BigUint64Array,
  target: bigint
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_i64_js(
  array: BigInt64Array,
  target: bigint
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_f64_js(
  array: Float64Array,
  target: number
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_f32_js(
  array: Float32Array,
  target: number
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_u32_js(
  array: Uint32Array,
  target: number
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_i32_js(
  array: Int32Array,
  target: number
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_u16_js(
  array: Uint16Array,
  target: number
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_i16_js(
  array: Int16Array,
  target: number
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_u8_js(
  array: Uint8Array,
  target: number
): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
export function binarySearch_i8_js(array: Int8Array, target: number): number {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + Math.floor((r - l) / 2);
    if (array[mid] == target) {
      return mid;
    }
    if (array[mid] > target) {
      r = mid - 1;
    } else {
      l = mid + 1;
    }
  }
  return -1;
}
