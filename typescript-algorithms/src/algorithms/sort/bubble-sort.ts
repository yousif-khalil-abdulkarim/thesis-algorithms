import { sortTwo } from "../shared";

export function bubbleSort_uint64_js(array: BigUint64Array): BigUint64Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int64_js(array: BigInt64Array): BigInt64Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_float64_js(array: Float64Array): Float64Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_float32_js(array: Float32Array): Float32Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_uint32_js(array: Uint32Array): Uint32Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int32_js(array: Int32Array): Int32Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_uint16_js(array: Uint16Array): Uint16Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int16_js(array: Int16Array): Int16Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_uint8_js(array: Uint8Array): Uint8Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
export function bubbleSort_int8_js(array: Int8Array): Int8Array {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length - i - 1; j++) {
      sortTwo(array, j + 1, j);
    }
  }
  return array;
}
