import { sortTwo } from "../shared.js";

export function bubbleSort_u64_js(array: BigUint64Array): BigUint64Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_i64_js(array: BigInt64Array): BigInt64Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_f64_js(array: Float64Array): Float64Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_f32_js(array: Float32Array): Float32Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_u32_js(array: Uint32Array): Uint32Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_i32_js(array: Int32Array): Int32Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_u16_js(array: Uint16Array): Uint16Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_i16_js(array: Int16Array): Int16Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_u8_js(array: Uint8Array): Uint8Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_i8_js(array: Int8Array): Int8Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
