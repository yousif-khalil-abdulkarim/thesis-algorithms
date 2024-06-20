function merge_u64_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new BigUint64Array(n1);
    const R = new BigUint64Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_i64_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new BigInt64Array(n1);
    const R = new BigInt64Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_f64_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Float64Array(n1);
    const R = new Float64Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_f32_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Float32Array(n1);
    const R = new Float32Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_u32_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Uint32Array(n1);
    const R = new Uint32Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_i32_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Int32Array(n1);
    const R = new Int32Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_u16_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Uint16Array(n1);
    const R = new Uint16Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_i16_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Int16Array(n1);
    const R = new Int16Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_u8_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Uint8Array(n1);
    const R = new Uint8Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function merge_i8_js(arr, l, m, r) {
    const n1 = m - l + 1;
    const n2 = r - m;
    // Create temp arrays
    const L = new Int8Array(n1);
    const R = new Int8Array(n2);
    // Copy data to temp arrays L[] and R[]
    for (let i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (let j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];
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
        }
        else {
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
function _mergeSort_u64_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_u64_js(arr, l, m);
    _mergeSort_u64_js(arr, m + 1, r);
    merge_u64_js(arr, l, m, r);
}
function _mergeSort_i64_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_i64_js(arr, l, m);
    _mergeSort_i64_js(arr, m + 1, r);
    merge_i64_js(arr, l, m, r);
}
function _mergeSort_f64_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_f64_js(arr, l, m);
    _mergeSort_f64_js(arr, m + 1, r);
    merge_f64_js(arr, l, m, r);
}
function _mergeSort_f32_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_f32_js(arr, l, m);
    _mergeSort_f32_js(arr, m + 1, r);
    merge_f32_js(arr, l, m, r);
}
function _mergeSort_u32_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_u32_js(arr, l, m);
    _mergeSort_u32_js(arr, m + 1, r);
    merge_u32_js(arr, l, m, r);
}
function _mergeSort_i32_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_i32_js(arr, l, m);
    _mergeSort_i32_js(arr, m + 1, r);
    merge_i32_js(arr, l, m, r);
}
function _mergeSort_u16_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_u16_js(arr, l, m);
    _mergeSort_u16_js(arr, m + 1, r);
    merge_u16_js(arr, l, m, r);
}
function _mergeSort_i16_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_i16_js(arr, l, m);
    _mergeSort_i16_js(arr, m + 1, r);
    merge_i16_js(arr, l, m, r);
}
function _mergeSort_u8_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_u8_js(arr, l, m);
    _mergeSort_u8_js(arr, m + 1, r);
    merge_u8_js(arr, l, m, r);
}
function _mergeSort_i8_js(arr, l, r) {
    if (l >= r) {
        return;
    }
    const m = l + Math.floor((r - l) / 2);
    _mergeSort_i8_js(arr, l, m);
    _mergeSort_i8_js(arr, m + 1, r);
    merge_i8_js(arr, l, m, r);
}
export function mergeSort_u64_js(arr) {
    _mergeSort_u64_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_i64_js(arr) {
    _mergeSort_i64_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_f64_js(arr) {
    _mergeSort_f64_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_f32_js(arr) {
    _mergeSort_f32_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_u32_js(arr) {
    _mergeSort_u32_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_i32_js(arr) {
    _mergeSort_i32_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_u16_js(arr) {
    _mergeSort_u16_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_i16_js(arr) {
    _mergeSort_i16_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_u8_js(arr) {
    _mergeSort_u8_js(arr, 0, arr.length - 1);
    return arr;
}
export function mergeSort_i8_js(arr) {
    _mergeSort_i8_js(arr, 0, arr.length - 1);
    return arr;
}
