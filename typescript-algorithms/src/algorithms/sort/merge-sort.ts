function merge_uint64_js(
  array1: BigUint64Array,
  array2: BigUint64Array
): BigUint64Array {
  const mergedArray = new BigUint64Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int64_js(
  array1: BigInt64Array,
  array2: BigInt64Array
): BigInt64Array {
  const mergedArray = new BigInt64Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_float64_js(
  array1: Float64Array,
  array2: Float64Array
): Float64Array {
  const mergedArray = new Float64Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_float32_js(
  array1: Float32Array,
  array2: Float32Array
): Float32Array {
  const mergedArray = new Float32Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_uint32_js(
  array1: Uint32Array,
  array2: Uint32Array
): Uint32Array {
  const mergedArray = new Uint32Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int32_js(array1: Int32Array, array2: Int32Array): Int32Array {
  const mergedArray = new Int32Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_uint16_js(
  array1: Uint16Array,
  array2: Uint16Array
): Uint16Array {
  const mergedArray = new Uint16Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int16_js(array1: Int16Array, array2: Int16Array): Int16Array {
  const mergedArray = new Int16Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_uint8_js(array1: Uint8Array, array2: Uint8Array): Uint8Array {
  const mergedArray = new Uint8Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int8_js(array1: Int8Array, array2: Int8Array): Int8Array {
  const mergedArray = new Int8Array(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}

export function mergeSort_uint64_js(array: BigUint64Array): BigUint64Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_uint64_js(array.slice(0, mid));
  let right = mergeSort_uint64_js(array.slice(mid));
  return merge_uint64_js(left, right);
}
export function mergeSort_int64_js(array: BigInt64Array): BigInt64Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_int64_js(array.slice(0, mid));
  let right = mergeSort_int64_js(array.slice(mid));
  return merge_int64_js(left, right);
}
export function mergeSort_float64_js(array: Float64Array): Float64Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_float64_js(array.slice(0, mid));
  let right = mergeSort_float64_js(array.slice(mid));
  return merge_float64_js(left, right);
}
export function mergeSort_float32_js(array: Float32Array): Float32Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_float32_js(array.slice(0, mid));
  let right = mergeSort_float32_js(array.slice(mid));
  return merge_float32_js(left, right);
}
export function mergeSort_uint32_js(array: Uint32Array): Uint32Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_uint32_js(array.slice(0, mid));
  let right = mergeSort_uint32_js(array.slice(mid));
  return merge_uint32_js(left, right);
}
export function mergeSort_int32_js(array: Int32Array): Int32Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_int32_js(array.slice(0, mid));
  let right = mergeSort_int32_js(array.slice(mid));
  return merge_int32_js(left, right);
}
export function mergeSort_uint16_js(array: Uint16Array): Uint16Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_uint16_js(array.slice(0, mid));
  let right = mergeSort_uint16_js(array.slice(mid));
  return merge_uint16_js(left, right);
}
export function mergeSort_int16_js(array: Int16Array): Int16Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_int16_js(array.slice(0, mid));
  let right = mergeSort_int16_js(array.slice(mid));
  return merge_int16_js(left, right);
}
export function mergeSort_uint8_js(array: Uint8Array): Uint8Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_uint8_js(array.slice(0, mid));
  let right = mergeSort_uint8_js(array.slice(mid));
  return merge_uint8_js(left, right);
}
export function mergeSort_int8_js(array: Int8Array): Int8Array {
  if (array.length <= 1) return array;
  let mid = Math.floor(array.length / 2);
  let left = mergeSort_int8_js(array.slice(0, mid));
  let right = mergeSort_int8_js(array.slice(mid));
  return merge_int8_js(left, right);
}
