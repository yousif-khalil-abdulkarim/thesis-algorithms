#include "sort/bubble-sort/bubble-sort.h";

u64* bubbleSort_u64_c(struct Array1d_u64* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u64_c(array->items, j + 1, j);
        }
    }
    return array;
}
i64* bubbleSort_i64_c(struct Array1d_i64* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i64_c(array->items, j + 1, j);
        }
    }
    return array;
}
f64* bubbleSort_f64_c(struct Array1d_f64* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_f64_c(array->items, j + 1, j);
        }
    }
    return array;
}
f32* bubbleSort_f32_c(struct Array1d_f32* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_f32_c(array->items, j + 1, j);
        }
    }
    return array;
}
u32* bubbleSort_u32_c(struct Array1d_u32* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u32_c(array->items, j + 1, j);
        }
    }
    return array;
}
i32* bubbleSort_i32_c(struct Array1d_i32* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i32_c(array->items, j + 1, j);
        }
    }
    return array;
}
u16* bubbleSort_u16_c(struct Array1d_u16* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u16_c(array->items, j + 1, j);
        }
    }
    return array;
}
i16* bubbleSort_i16_c(struct Array1d_i16* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i16_c(array->items, j + 1, j);
        }
    }
    return array;
}
u8* bubbleSort_u8_c(struct Array1d_u8* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u8_c(array->items, j + 1, j);
        }
    }
    return array;
}
i8* bubbleSort_i8_c(struct Array1d_i8* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i8_c(array->items, j + 1, j);
        }
    }
    return array;
}
