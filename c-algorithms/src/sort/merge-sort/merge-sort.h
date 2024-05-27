#ifndef MERGE_SORT
#define MERGE_SORT
#include "src/data-types.h"
u64* mergeSort_uint64_c(u64* array1, int array1Length, u64* array2, int array2Length);
i64* mergeSort_int64_c(i64* array1, int array1Length, i64* array2, int array2Length);
f64* mergeSort_float64_c(f64* array1, int array1Length, f64* array2, int array2Length);
f32* mergeSort_float32_c(f32* array1, int array1Length, f32* array2, int array2Length);
u32* mergeSort_uint32_c(u32* array1, int array1Length, u32* array2, int array2Length);
i32* mergeSort_int32_c(i32* array1, int array1Length, i32* array2, int array2Length);
u16* mergeSort_uint16_c(u16* array1, int array1Length, u16* array2, int array2Length);
i16* mergeSort_int16_c(i16* array1, int array1Length, i16* array2, int array2Length);
u8* mergeSort_uint8_c(u8* array1, int array1Length, u8* array2, int array2Length);
i8* mergeSort_int8_c(i8* array1, int array1Length, i8* array2, int array2Length);
#endif