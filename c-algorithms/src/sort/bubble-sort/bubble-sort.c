#include "sort/bubble-sort/bubble-sort.h";

u64* bubbleSort_uint64_c(u64* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_uint64_c(array, j + 1, j);
        }
    }
    return array;
}
i64* bubbleSort_int64_c(i64* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_int64_c(array, j + 1, j);
        }
    }
    return array;
}
f64* bubbleSort_float64_c(f64* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_float64_c(array, j + 1, j);
        }
    }
    return array;
}
f32* bubbleSort_float32_c(f32* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_float32_c(array, j + 1, j);
        }
    }
    return array;
}
u32* bubbleSort_uint32_c(u32* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_uint32_c(array, j + 1, j);
        }
    }
    return array;
}
i32* bubbleSort_int32_c(i32* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_int32_c(array, j + 1, j);
        }
    }
    return array;
}
u16* bubbleSort_uint16_c(u16* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_uint16_c(array, j + 1, j);
        }
    }
    return array;
}
i16* bubbleSort_int16_c(i16* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_int16_c(array, j + 1, j);
        }
    }
    return array;
}
u8* bubbleSort_uint8_c(u8* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_uint8_c(array, j + 1, j);
        }
    }
    return array;
}
i8* bubbleSort_int8_c(i8* array, int arrayLength) {
    for (int i = 0; i < arrayLength; i++) {
        for (int j = 0; j < arrayLength - i - 1; j++) {
            sortTwo_int8_c(array, j + 1, j);
        }
    }
    return array;
}
