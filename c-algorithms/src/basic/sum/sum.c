#include "basic/sum/sum.h";
#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
u64 sum_u64_c(Array1d_u64* array) {
    u64 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i64 sum_i64_c(Array1d_i64* array) {
    i64 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
f64 sum_f64_c(Array1d_f64* array) {
    f64 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
f32 sum_f32_c(Array1d_f32* array) {
    f32 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u32 sum_u32_c(Array1d_u32* array) {
    u32 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i32 sum_i32_c(Array1d_i32* array) {
    i32 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u16 sum_u16_c(Array1d_u16* array) {
    u16 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i16 sum_i16_c(Array1d_i16* array) {
    i16 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u8 sum_u8_c(Array1d_u8* array) {
    u8  sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i8 sum_i8_c(Array1d_i8* array) {
    i8  sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
