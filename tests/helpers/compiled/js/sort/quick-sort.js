import { swapTwo } from "../shared.js";
function getPivotIndex(array, start = 0, end = array.length - 1) {
    let swapIdx = start;
    let pivotValue = array[start];
    for (let i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIdx++;
            swapTwo(array, i, swapIdx);
        }
    }
    swapTwo(array, start, swapIdx);
    return swapIdx;
}
function _quickSort(array, left, right) {
    if (left < right) {
        let pivotIndex = getPivotIndex(array, left, right);
        _quickSort(array, left, pivotIndex - 1);
        _quickSort(array, pivotIndex + 1, right);
    }
    return array;
}
export function quickSort_u64_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i64_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_f64_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_f32_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_u32_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i32_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_u16_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i16_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_u8_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
export function quickSort_i8_js(array) {
    return _quickSort(array, 0, array.length - 1);
}
