function merge_uint64_js(
  arr: BigUint64Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new BigUint64Array(n1);
  const R = new BigUint64Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_int64_js(
  arr: BigInt64Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new BigInt64Array(n1);
  const R = new BigInt64Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_float64_js(
  arr: Float64Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Float64Array(n1);
  const R = new Float64Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_float32_js(
  arr: Float32Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Float32Array(n1);
  const R = new Float32Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_uint32_js(
  arr: Uint32Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Uint32Array(n1);
  const R = new Uint32Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_int32_js(
  arr: Int32Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Int32Array(n1);
  const R = new Int32Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_uint16_js(
  arr: Uint16Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Uint16Array(n1);
  const R = new Uint16Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_int16_js(
  arr: Int16Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Int16Array(n1);
  const R = new Int16Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_uint8_js(
  arr: Uint8Array,
  l: number,
  m: number,
  r: number
): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Uint8Array(n1);
  const R = new Uint8Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}
function merge_int8_js(arr: Int8Array, l: number, m: number, r: number): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new Int8Array(n1);
  const R = new Int8Array(n2);

  // Copy data to temp arrays L[] and R[]
  for (let i = 0; i < n1; i++) L[i] = arr[l + i];
  for (let j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

  // Merge the temp arrays back into arr[l..r]

  // Initial index of first subarray
  let i = 0;

  // Initial index of second subarray
  let j = 0;

  // Initial index of merged subarray
  let k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of
  // L[], if there are any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of
  // R[], if there are any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}

function _mergeSort_uint64_js(arr: BigUint64Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_uint64_js(arr, l, m);
  _mergeSort_uint64_js(arr, m + 1, r);
  merge_uint64_js(arr, l, m, r);
}
function _mergeSort_int64_js(arr: BigInt64Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_int64_js(arr, l, m);
  _mergeSort_int64_js(arr, m + 1, r);
  merge_int64_js(arr, l, m, r);
}
function _mergeSort_float64_js(arr: Float64Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_float64_js(arr, l, m);
  _mergeSort_float64_js(arr, m + 1, r);
  merge_float64_js(arr, l, m, r);
}
function _mergeSort_float32_js(arr: Float32Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_float32_js(arr, l, m);
  _mergeSort_float32_js(arr, m + 1, r);
  merge_float32_js(arr, l, m, r);
}
function _mergeSort_uint32_js(arr: Uint32Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_uint32_js(arr, l, m);
  _mergeSort_uint32_js(arr, m + 1, r);
  merge_uint32_js(arr, l, m, r);
}
function _mergeSort_int32_js(arr: Int32Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_int32_js(arr, l, m);
  _mergeSort_int32_js(arr, m + 1, r);
  merge_int32_js(arr, l, m, r);
}
function _mergeSort_uint16_js(arr: Uint16Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_uint16_js(arr, l, m);
  _mergeSort_uint16_js(arr, m + 1, r);
  merge_uint16_js(arr, l, m, r);
}
function _mergeSort_int16_js(arr: Int16Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_int16_js(arr, l, m);
  _mergeSort_int16_js(arr, m + 1, r);
  merge_int16_js(arr, l, m, r);
}
function _mergeSort_uint8_js(arr: Uint8Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_uint8_js(arr, l, m);
  _mergeSort_uint8_js(arr, m + 1, r);
  merge_uint8_js(arr, l, m, r);
}
function _mergeSort_int8_js(arr: Int8Array, l: number, r: number): void {
  if (l >= r) {
    return;
  }
  const m = l + Math.floor((r - l) / 2);
  _mergeSort_int8_js(arr, l, m);
  _mergeSort_int8_js(arr, m + 1, r);
  merge_int8_js(arr, l, m, r);
}

export function mergeSort_uint64_js(arr: BigUint64Array): BigUint64Array {
  _mergeSort_uint64_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_int64_js(arr: BigInt64Array): BigInt64Array {
  _mergeSort_int64_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_float64_js(arr: Float64Array): Float64Array {
  _mergeSort_float64_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_float32_js(arr: Float32Array): Float32Array {
  _mergeSort_float32_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_uint32_js(arr: Uint32Array): Uint32Array {
  _mergeSort_uint32_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_int32_js(arr: Int32Array): Int32Array {
  _mergeSort_int32_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_uint16_js(arr: Uint16Array): Uint16Array {
  _mergeSort_uint16_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_int16_js(arr: Int16Array): Int16Array {
  _mergeSort_int16_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_uint8_js(arr: Uint8Array): Uint8Array {
  _mergeSort_uint8_js(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_int8_js(arr: Int8Array): Int8Array {
  _mergeSort_int8_js(arr, 0, arr.length - 1);
  return arr;
}
