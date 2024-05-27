#include "src/basic/average/average.h";

u64 average_uint64_c(u64* array, int arrayLength) {
    u64 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u64 item = array[i];
        sum += item;
    }
    return sum / (u64)arrayLength;
}
i64 average_int64_c(i64* array, int arrayLength) {
    i64 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i64 item = array[i];
        sum += item;
    }
    return sum / (i64)arrayLength;
}
f64 average_float64_c(f64* array, int arrayLength) {
    f64 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f64 item = array[i];
        sum += item;
    }
    return sum / (f64)arrayLength;
}
f32 average_float32_c(f32* array, int arrayLength) {
    f32 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        f32 item = array[i];
        sum += item;
    }
    return sum / (f32)arrayLength;
}
u32 average_uint64_c(u32* array, int arrayLength) {
    u32 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u32 item = array[i];
        sum += item;
    }
    return sum / (u32)arrayLength;
}
i32 average_int64_c(i32* array, int arrayLength) {
    i32 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i32 item = array[i];
        sum += item;
    }
    return sum / (i32)arrayLength;
}
u16 average_uint64_c(u16* array, int arrayLength) {
    u16 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u16 item = array[i];
        sum += item;
    }
    return sum / (u16)arrayLength;
}
i16 average_int64_c(i16* array, int arrayLength) {
    i16 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i16 item = array[i];
        sum += item;
    }
    return sum / (i16)arrayLength;
}
u8 average_uint64_c(u8* array, int arrayLength) {
    u8 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        u8 item = array[i];
        sum += item;
    }
    return sum / (u8)arrayLength;
}
i8 average_int64_c(i8* array, int arrayLength) {
    i8 sum = array[0];
    for (int i = 1; i < arrayLength; i++) {
        i8 item = array[i];
        sum += item;
    }
    return sum / (i8)arrayLength;
}