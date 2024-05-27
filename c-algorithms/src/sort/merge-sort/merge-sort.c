#include <stdlib.h>
#include "src/sort/merge-sort/merge-sort.h";

u64* mergeSort_uint64_c(u64* array1, int array1Length, u64* array2, int array2Length) {
    u64* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (u64**)malloc((mergedArrayLength) * sizeof(u64));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
i64* mergeSort_int64_c(i64* array1, int array1Length, i64* array2, int array2Length) {
    i64* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (i64**)malloc((mergedArrayLength) * sizeof(i64));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
f64* mergeSort_float64_c(f64* array1, int array1Length, f64* array2, int array2Length) {
    f64* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (f64**)malloc((mergedArrayLength) * sizeof(f64));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
f32* mergeSort_float32_c(f32* array1, int array1Length, f32* array2, int array2Length) {
    f32* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (f32**)malloc((mergedArrayLength) * sizeof(f32));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
u32* mergeSort_uint32_c(u32* array1, int array1Length, u32* array2, int array2Length) {
    u32* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (u32**)malloc((mergedArrayLength) * sizeof(u32));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
i32* mergeSort_int32_c(i32* array1, int array1Length, i32* array2, int array2Length) {
    i32* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (i32**)malloc((mergedArrayLength) * sizeof(i32));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
u16* mergeSort_uint16_c(u16* array1, int array1Length, u16* array2, int array2Length) {
    u16* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (u16**)malloc((mergedArrayLength) * sizeof(u16));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
i16* mergeSort_int16_c(i16* array1, int array1Length, i16* array2, int array2Length) {
    i16* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (i16**)malloc((mergedArrayLength) * sizeof(i16));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
u8* mergeSort_uint8_c(u8* array1, int array1Length, u8* array2, int array2Length) {
    u8* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (u8**)malloc((mergedArrayLength) * sizeof(u8));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
i8* mergeSort_int8_c(i8* array1, int array1Length, i8* array2, int array2Length) {
    i8* mergedArray;
    int mergedArrayLength = array1Length + array2Length;
    mergedArray = (i8**)malloc((mergedArrayLength) * sizeof(i8));
    for (int i = 0; i < array1Length; i++) {
        mergedArray[i] = array1[i];
    }
    for (int i = array1Length; i < mergedArrayLength; i++) {
        mergedArray[i] = array2[i - array1Length];
    }
    return mergedArray;
}
