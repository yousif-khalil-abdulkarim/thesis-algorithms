#include "src/sort/bubble-sort/bubble-sort.h";

void bubbleSort_sortTwo_uint64_c(u64* array, int a, int b) {
    u64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_int64_c(i64* array, int a, int b) {
    i64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_float64_c(f64* array, int a, int b) {
    f64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_float32_c(f32* array, int a, int b) {
    f32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_uint32_c(u32* array, int a, int b) {
    u32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_int32_c(i32* array, int a, int b) {
    i32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_uint16_c(u16* array, int a, int b) {
    u16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_int16_c(i16* array, int a, int b) {
    i16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_uint8_c(u8* array, int a, int b) {
    u8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void bubbleSort_sortTwo_int8_c(i8* array, int a, int b) {
    i8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}

void bubbleSort_swapTwo_uint64_c(u64* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_uint64_c(array, a, b);
    }
}
void bubbleSort_swapTwo_int64_c(i64* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_int64_c(array, a, b);
    }
}
void bubbleSort_swapTwo_float64_c(f64* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_float64_c(array, a, b);
    }
}
void bubbleSort_swapTwo_float32_c(f32* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_float32_c(array, a, b);
    }
}
void bubbleSort_swapTwo_uint32_c(u32* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_uint32_c(array, a, b);
    }
}
void bubbleSort_swapTwo_int32_c(i32* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_int32_c(array, a, b);
    }
}
void bubbleSort_swapTwo_uint16_c(u16* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_uint16_c(array, a, b);
    }
}
void bubbleSort_swapTwo_int16_c(i16* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_int16_c(array, a, b);
    }
}
void bubbleSort_swapTwo_uint8_c(u8* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_uint8_c(array, a, b);
    }
}
void bubbleSort_swapTwo_int8_c(i8* array, int a, int b) {
    if (array[a] < array[b]) {
        bubbleSort_sortTwo_int8_c(array, a, b);
    }
}

u64* bubbleSort_uint64_c(u64* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_uint64_c(array, j + 1, j);
        }
    }
}
i64* bubbleSort_int64_c(i64* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_int64_c(array, j + 1, j);
        }
    }
}
f64* bubbleSort_float64_c(f64* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_float64_c(array, j + 1, j);
        }
    }
}
f32* bubbleSort_float32_c(f32* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_float32_c(array, j + 1, j);
        }
    }
}
u32* bubbleSort_uint32_c(u32* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_uint32_c(array, j + 1, j);
        }
    }
}
i32* bubbleSort_int32_c(i32* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_int32_c(array, j + 1, j);
        }
    }
}
u16* bubbleSort_uint16_c(u16* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_uint16_c(array, j + 1, j);
        }
    }
}
i16* bubbleSort_int16_c(i16* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_int16_c(array, j + 1, j);
        }
    }
}
u8* bubbleSort_uint8_c(u8* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_uint8_c(array, j + 1, j);
        }
    }
}
i8* bubbleSort_int8_c(i8* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            bubbleSort_swapTwo_int8_c(array, j + 1, j);
        }
    }
}
