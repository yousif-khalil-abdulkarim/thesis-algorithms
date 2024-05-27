function merge<T>(arr: StaticArray<T>, l: i32, m: i32, r: i32): void {
  const n1 = m - l + 1;
  const n2 = r - m;

  // Create temp arrays
  const L = new StaticArray<T>(n1);
  const R = new StaticArray<T>(n2);

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
function _mergeSort<T>(arr: StaticArray<T>, l: i32, r: i32): void {
  if (l >= r) {
    return;
  }
  const m = l + (r - l) / 2;
  _mergeSort(arr, l, m);
  _mergeSort(arr, m + 1, r);
  merge(arr, l, m, r);
}
function mergeSort<T>(arr: StaticArray<T>): StaticArray<T> {
  _mergeSort(arr, 0, arr.length - 1);
  return arr;
}
export function mergeSort_uint64_asm(arr: StaticArray<u64>): StaticArray<u64> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_int64_asm(arr: StaticArray<i64>): StaticArray<i64> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_float64_asm(arr: StaticArray<f64>): StaticArray<f64> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_float32_asm(arr: StaticArray<f32>): StaticArray<f32> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_uint32_asm(arr: StaticArray<u32>): StaticArray<u32> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_int32_asm(arr: StaticArray<i32>): StaticArray<i32> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_uint16_asm(arr: StaticArray<u16>): StaticArray<u16> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_int16_asm(arr: StaticArray<i16>): StaticArray<i16> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_uint8_asm(arr: StaticArray<u8>): StaticArray<u8> {
  mergeSort(arr);
  return arr;
}
export function mergeSort_int8_asm(arr: StaticArray<i8>): StaticArray<i8> {
  mergeSort(arr);
  return arr;
}
