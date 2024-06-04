export function binarySearch_u64_asm(
  array: StaticArray<u64>,
  target: u64
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
export function binarySearch_i64_asm(
  array: StaticArray<i64>,
  target: i64
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
export function binarySearch_f64_asm(
  array: StaticArray<f64>,
  target: f64
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + floor((r - l) / 2);
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
export function binarySearch_f32_asm(
  array: StaticArray<f32>,
  target: f32
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + floor((r - l) / 2);
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
export function binarySearch_u32_asm(
  array: StaticArray<u32>,
  target: u32
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
export function binarySearch_i32_asm(
  array: StaticArray<i32>,
  target: i32
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
export function binarySearch_u16_asm(
  array: StaticArray<u16>,
  target: u16
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
export function binarySearch_i16_asm(
  array: StaticArray<i16>,
  target: i16
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
export function binarySearch_u8_asm(
  array: StaticArray<i8>,
  target: i8
): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
export function binarySearch_i8_asm(array: StaticArray<u8>, target: u8): i32 {
  let l = 0;
  let r = array.length - 1;
  let mid = -1;
  while (r >= l) {
    mid = l + (r - l) / 2;
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
