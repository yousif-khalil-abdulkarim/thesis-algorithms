#include <stdlib.h>
#include "src/sort/selection-sort/selection-sort.h";

void selectionSort_sortTwo_uint64_c(u64* array, int a, int b) {
    u64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_int64_c(i64* array, int a, int b) {
    i64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_float64_c(f64* array, int a, int b) {
    f64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_float32_c(f32* array, int a, int b) {
    f32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_uint32_c(u32* array, int a, int b) {
    u32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_int32_c(i32* array, int a, int b) {
    i32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_uint16_c(u16* array, int a, int b) {
    u16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_int16_c(i16* array, int a, int b) {
    i16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_uint8_c(u8* array, int a, int b) {
    u8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void selectionSort_sortTwo_int8_c(i8* array, int a, int b) {
    i8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}

void selectionSort_swapTwo_uint64_c(u64* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_uint64_c(array, a, b);
    }
}
void selectionSort_swapTwo_int64_c(i64* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_int64_c(array, a, b);
    }
}
void selectionSort_swapTwo_float64_c(f64* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_float64_c(array, a, b);
    }
}
void selectionSort_swapTwo_float32_c(f32* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_float32_c(array, a, b);
    }
}
void selectionSort_swapTwo_uint32_c(u32* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_uint32_c(array, a, b);
    }
}
void selectionSort_swapTwo_int32_c(i32* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_int32_c(array, a, b);
    }
}
void selectionSort_swapTwo_uint16_c(u16* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_uint16_c(array, a, b);
    }
}
void selectionSort_swapTwo_int16_c(i16* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_int16_c(array, a, b);
    }
}
void selectionSort_swapTwo_uint8_c(u8* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_uint8_c(array, a, b);
    }
}
void selectionSort_swapTwo_int8_c(i8* array, int a, int b) {
    if (array[a] < array[b]) {
        selectionSort_sortTwo_int8_c(array, a, b);
    }
}

u64* selectionSort_uint64_c(u64* array, int arrayLength) {
    int min;
    for (int i = 0; i < arrayLength; i++) {
        min = i;
        for (int j = i + 1; j < arrayLength; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
            if (min != i) {
                selectionSort_swapTwo_uint64_c(array, min, i);
            }
        }
    } 
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
                selectionSort_swapTwo_int64_c(array, min, i);
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
                selectionSort_swapTwo_float64_c(array, min, i);
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
                selectionSort_swapTwo_float32_c(array, min, i);
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
                selectionSort_swapTwo_uint32_c(array, min, i);
            }
        }
    } 
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
                selectionSort_swapTwo_int32_c(array, min, i);
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
                selectionSort_swapTwo_uint16_c(array, min, i);
            }
        }
    } 
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
                selectionSort_swapTwo_int16_c(array, min, i);
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
                selectionSort_swapTwo_uint8_c(array, min, i);
            }
        }
    } 
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
                selectionSort_swapTwo_int8_c(array, min, i);
            }
        }
    }
}
