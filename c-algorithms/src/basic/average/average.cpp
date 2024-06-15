#include "basic/average/average.h";

u64 average_u64_c(Array1d_u64* array) {
    u64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
i64 average_i64_c(Array1d_i64* array) {
    i64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i64 item = array->items[i];
        sum += item;
    }
    return sum;
}
f64 average_f64_c(Array1d_f64* array) {
    f64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        f64 item = array->items[i];
        sum += item;
    }
    return sum;
}
f32 average_f32_c(Array1d_f32* array) {
    f32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        f32 item = array->items[i];
        sum += item;
    }
    return sum;
}
u32 average_u32_c(Array1d_u32* array) {
    u32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u32 item = array->items[i];
        sum += item;
    }
    return sum;
}
i32 average_i32_c(Array1d_i32* array) {
    i32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i32 item = array->items[i];
        sum += item;
    }
    return sum;
}
u16 average_u16_c(Array1d_u16* array) {
    u16 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u16 item = array->items[i];
        sum += item;
    }
    return sum;
}
i16 average_i16_c(Array1d_i16* array) {
    i16 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i16 item = array->items[i];
        sum += item;
    }
    return sum;
}
u8 average_u8_c(Array1d_u8* array) {
    u8 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u8 item = array->items[i];
        sum += item;
    }
    return sum;
}
i8 average_i8_c(Array1d_i8* array) {
    i8 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i8 item = array->items[i];
        sum += item;
    }
    return sum;
}
