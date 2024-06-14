#include "basic/max/max.h";

u64 max_u64_c(struct Array1d_u64* array) {
    u64 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
i64 max_i64_c(struct Array1d_i64* array) {
    i64 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i64 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
f64 max_f64_c(struct Array1d_f64* array) {
    f64 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f64 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
f32 max_f32_c(struct Array1d_f32* array) {
    f32 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f32 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
u32 max_u32_c(struct Array1d_u32* array) {
    u32 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u32 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
i32 max_i32_c(struct Array1d_i32* array) {
    i32 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i32 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
u16 max_u16_c(struct Array1d_u16* array) {
    u16 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u16 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
i16 max_i16_c(struct Array1d_i16* array) {
    i16 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i16 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
u8 max_u8_c(struct Array1d_u8* array) {
    u8  max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u8  item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
i8 max_i8_c(struct Array1d_i8* array) {
    i8  max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i8  item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
