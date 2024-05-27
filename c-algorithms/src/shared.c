#include "shared.h"

void swapTwo_uint64_c(u64* array, int a, int b) {
    u64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_int64_c(i64* array, int a, int b) {
    i64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_float64_c(f64* array, int a, int b) {
    f64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_float32_c(f32* array, int a, int b) {
    f32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_uint32_c(u32* array, int a, int b) {
    u32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_int32_c(i32* array, int a, int b) {
    i32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_uint16_c(u16* array, int a, int b) {
    u16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_int16_c(i16* array, int a, int b) {
    i16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_uint8_c(u8* array, int a, int b) {
    u8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_int8_c(i8* array, int a, int b) {
    i8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}

void sortTwo_uint64_c(u64* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_uint64_c(array, a, b);
    }
}
void sortTwo_int64_c(i64* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_int64_c(array, a, b);
    }
}
void sortTwo_float64_c(f64* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_float64_c(array, a, b);
    }
}
void sortTwo_float32_c(f32* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_float32_c(array, a, b);
    }
}
void sortTwo_uint32_c(u32* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_uint32_c(array, a, b);
    }
}
void sortTwo_int32_c(i32* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_int32_c(array, a, b);
    }
}
void sortTwo_uint16_c(u16* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_uint16_c(array, a, b);
    }
}
void sortTwo_int16_c(i16* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_int16_c(array, a, b);
    }
}
void sortTwo_uint8_c(u8* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_uint8_c(array, a, b);
    }
}
void sortTwo_int8_c(i8* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_int8_c(array, a, b);
    }
}
