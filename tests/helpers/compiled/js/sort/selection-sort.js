import { swapTwo } from "../shared.js";
export function selectionSort_u64_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_i64_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_f64_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_f32_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_u32_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_i32_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_u16_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_i16_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_u8_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
export function selectionSort_i8_js(array) {
    let min;
    for (let i = 0; i < array.length; i++) {
        min = i;
        for (let j = i + 1; j < array.length; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        if (min !== i) {
            swapTwo(array, min, i);
        }
    }
    return array;
}
