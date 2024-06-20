export function metaBinarySearch_u64_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i64_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_f64_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_f32_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_u32_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i32_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_u16_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i16_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_u8_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i8_js(array, target) {
    let n = array.length;
    let lg = Math.log(n - 1) / Math.log(2) + 1;
    let pos = 0;
    for (let i = lg; i >= 0; i--) {
        if (array[pos] == target)
            return pos;
        let new_pos = pos | (1 << i);
        if (new_pos < n && array[new_pos] <= target)
            pos = new_pos;
    }
    return array[pos] == target ? pos : -1;
}
