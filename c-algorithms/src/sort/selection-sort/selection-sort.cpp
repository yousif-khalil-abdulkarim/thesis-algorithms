#include <stdlib.h>
#include "sort/selection-sort/selection-sort.h";

u64* selectionSort_u64_c(struct Array1d_u64* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u64_c(array->items, min, i);
            }
        }
    } 
    return array;
}
i64* selectionSort_i64_c(struct Array1d_i64* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i64_c(array->items, min, i);
            }
        }
    }
}
f64* selectionSort_f64_c(struct Array1d_f64* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_f64_c(array->items, min, i);
            }
        }
    }
}
f32* selectionSort_f32_c(struct Array1d_f32* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_f32_c(array->items, min, i);
            }
        }
    }
}
u32* selectionSort_u32_c(struct Array1d_u32* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u32_c(array->items, min, i);
            }
        }
    } 
    return array;
}
i32* selectionSort_i32_c(struct Array1d_i32* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i32_c(array->items, min, i);
            }
        }
    }
}
u16* selectionSort_u16_c(struct Array1d_u16* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u16_c(array->items, min, i);
            }
        }
    } 
    return array;
}
i16* selectionSort_i16_c(struct Array1d_i16* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i16_c(array->items, min, i);
            }
        }
    }
}
u8* selectionSort_u8_c(struct Array1d_u8* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u8_c(array->items, min, i);
            }
        }
    } 
    return array;
}
i8* selectionSort_i8_c(struct Array1d_i8* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i8_c(array->items, min, i);
            }
        }
    }
}
