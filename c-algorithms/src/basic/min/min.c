#include "basic/min/min.h";

u64 min_uint64_c(u64* array, int arrayLength) {
    u64 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u64 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
i64 min_int64_c(i64* array, int arrayLength) {
    i64 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i64 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
f64 min_float64_c(f64* array, int arrayLength) {
    f64 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f64 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
f32 min_float32_c(f32* array, int arrayLength) {
    f32 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f32 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
u32 min_uint32_c(u32* array, int arrayLength) {
    u32 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u32 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
i32 min_int32_c(i32* array, int arrayLength) {
    i32 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i32 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
u16 min_uint16_c(u16* array, int arrayLength) {
    u16 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u16 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
i16 min_int16_c(i16* array, int arrayLength) {
    i16 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i16 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
u8 min_uint8_c(u8* array, int arrayLength) {
    u8 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u8 item = array[i];
        if (item < min) min = item;
    }
    return min;
}
i8 min_int8_c(i8* array, int arrayLength) {
    i8 min = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i8 item = array[i];
        if (item < min) min = item;
    }
    return min;
}