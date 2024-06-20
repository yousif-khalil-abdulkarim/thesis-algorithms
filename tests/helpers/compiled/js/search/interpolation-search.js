function interpolationSearch_small(array, startOffset, endOffset, target) {
    let pos = -1;
    if (startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]) {
        pos =
            startOffset +
                Math.floor(((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                    (target - array[startOffset]));
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
function interpolationSearch_large(array, startOffset, endOffset, target) {
    let pos = -1;
    if (startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]) {
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
export function interpolationSearch_u64_js(array, target) {
    return interpolationSearch_large(array, 0, array.length - 1, target);
}
export function interpolationSearch_i64_js(array, target) {
    return interpolationSearch_large(array, 0, array.length - 1, target);
}
export function interpolationSearch_f64_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_f32_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_u32_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_i32_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_u16_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_i16_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_u8_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
export function interpolationSearch_i8_js(array, target) {
    return interpolationSearch_small(array, 0, array.length - 1, target);
}
