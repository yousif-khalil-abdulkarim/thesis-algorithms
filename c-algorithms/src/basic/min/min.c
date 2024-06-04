#include "basic/min/min.h";

u64 min_u64_c(struct Array1d_u64* array) {
    u64 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
i64 min_i64_c(struct Array1d_i64* array) {
    i64 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i64 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
f64 min_f64_c(struct Array1d_f64* array) {
    f64 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f64 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
f32 min_f32_c(struct Array1d_f32* array) {
    f32 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f32 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
u32 min_u32_c(struct Array1d_u32* array) {
    u32 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u32 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
i32 min_i32_c(struct Array1d_i32* array) {
    i32 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i32 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
u16 min_u16_c(struct Array1d_u16* array) {
    u16 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u16 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
i16 min_i16_c(struct Array1d_i16* array) {
    i16 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i16 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
u8 min_u8_cArray1d_(struct Array1d_u8* array) {
    u8  min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u8  item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
i8 min_i8_cArray1d_(struct Array1d_i8* array) {
    i8  min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i8  item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}