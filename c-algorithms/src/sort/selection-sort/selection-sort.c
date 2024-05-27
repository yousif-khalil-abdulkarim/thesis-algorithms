#include <stdlib.h>
#include "sort/selection-sort/selection-sort.h";

u64* selectionSort_uint64_c(u64* array, int arrayLength) {
    int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_uint64_c(array, min, i);
            }
        }
    } 
    return array;
}
i64* selectionSort_int64_c(i64* array, int arrayLength) {
   int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_int64_c(array, min, i);
            }
        }
    }
}
f64* selectionSort_float64_c(f64* array, int arrayLength) {
    int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_float64_c(array, min, i);
            }
        }
    }
}
f32* selectionSort_float32_c(f32* array, int arrayLength) {
    int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_float32_c(array, min, i);
            }
        }
    }
}
u32* selectionSort_uint32_c(u32* array, int arrayLength) {
    int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_uint32_c(array, min, i);
            }
        }
    } 
    return array;
}
i32* selectionSort_int32_c(i32* array, int arrayLength) {
   int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_int32_c(array, min, i);
            }
        }
    }
}
u16* selectionSort_uint16_c(u16* array, int arrayLength) {
    int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_uint16_c(array, min, i);
            }
        }
    } 
    return array;
}
i16* selectionSort_int16_c(i16* array, int arrayLength) {
   int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_int16_c(array, min, i);
            }
        }
    }
}
u8* selectionSort_uint8_c(u8* array, int arrayLength) {
    int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_uint8_c(array, min, i);
            }
        }
    } 
    return array;
}
i8* selectionSort_int8_c(i8* array, int arrayLength) {
   int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_int8_c(array, min, i);
            }
        }
    }
}
