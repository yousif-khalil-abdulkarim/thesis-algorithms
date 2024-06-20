export function binarySearch_u64_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_i64_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_f64_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_f32_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_u32_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_i32_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_u16_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_i16_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_u8_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
export function binarySearch_i8_js(array, target) {
    let l = 0;
    let r = array.length - 1;
    let mid = -1;
    while (r >= l) {
        mid = l + Math.floor((r - l) / 2);
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
