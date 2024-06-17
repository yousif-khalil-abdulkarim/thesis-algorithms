#include <emscripten.h>
#include <math.h>
#include "shared/shared.h"
#include "search/meta-binary-search/meta-binary-search.h";

EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u64_c(Array1d_u64* array, u64 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i64_c(Array1d_i64* array, i64 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_f64_c(Array1d_f64* array, f64 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_f32_c(Array1d_f32* array, f32 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u32_c(Array1d_u32* array, u32 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i32_c(Array1d_i32* array, i32 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u16_c(Array1d_u16* array, u16 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i16_c(Array1d_i16* array, i16 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u8_c(Array1d_u8* array, u8 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i8_c(Array1d_i8* array, i8 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally construct the
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
