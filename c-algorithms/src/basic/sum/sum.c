#include "basic/sum/sum.h";

u64 sum_uint64_c(u64* array, int arrayLength) {
    u64 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u64 item = array[i];
        sum += item;
    }
    return sum;
}
i64 sum_int64_c(i64* array, int arrayLength) {
    i64 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i64 item = array[i];
        sum += item;
    }
    return sum;
}
f64 sum_float64_c(f64* array, int arrayLength) {
    f64 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f64 item = array[i];
        sum += item;
    }
    return sum;
}
f32 sum_float32_c(f32* array, int arrayLength) {
    f32 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f32 item = array[i];
        sum += item;
    }
    return sum;
}
u32 sum_uint32_c(u32* array, int arrayLength) {
    u32 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u32 item = array[i];
        sum += item;
    }
    return sum;
}
i32 sum_int32_c(i32* array, int arrayLength) {
    i32 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i32 item = array[i];
        sum += item;
    }
    return sum;
}
u16 sum_uint16_c(u16* array, int arrayLength) {
    u16 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u16 item = array[i];
        sum += item;
    }
    return sum;
}
i16 sum_int16_c(i16* array, int arrayLength) {
    i16 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i16 item = array[i];
        sum += item;
    }
    return sum;
}
u8 sum_uint8_c(u8* array, int arrayLength) {
    u8 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u8 item = array[i];
        sum += item;
    }
    return sum;
}
i8 sum_int8_c(i8* array, int arrayLength) {
    i8 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i8 item = array[i];
        sum += item;
    }
    return sum;
}
