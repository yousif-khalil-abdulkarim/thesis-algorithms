#include "basic/max/max.h";

u64 max_uint64_c(u64* array, int arrayLength) {
    u64 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u64 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
i64 max_int64_c(i64* array, int arrayLength) {
    i64 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i64 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
f64 max_float64_c(f64* array, int arrayLength) {
    f64 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f64 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
f32 max_float32_c(f32* array, int arrayLength) {
    f32 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f32 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
u32 max_uint32_c(u32* array, int arrayLength) {
    u32 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u32 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
i32 max_int32_c(i32* array, int arrayLength) {
    i32 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i32 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
u16 max_uint16_c(u16* array, int arrayLength) {
    u16 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u16 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
i16 max_int16_c(i16* array, int arrayLength) {
    i16 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i16 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
u8 max_uint8_c(u8* array, int arrayLength) {
    u8 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u8 item = array[i];
        if (item > max) max = item;
    }
    return max;
}
i8 max_int8_c(i8* array, int arrayLength) {
    i8 max = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i8 item = array[i];
        if (item > max) max = item;
    }
    return max;
}