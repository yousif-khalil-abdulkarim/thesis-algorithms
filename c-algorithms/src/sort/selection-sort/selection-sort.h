#ifndef SELECTION_SORT
#define SELECTION_SORT
#include "src/data-types.h"
void selectionSort_sortTwo_uint64_c(u64* array, int a, int b);
void selectionSort_sortTwo_int64_c(i64* array, int a, int b);
void selectionSort_sortTwo_float64_c(f64* array, int a, int b);
void selectionSort_sortTwo_float32_c(f32* array, int a, int b);
void selectionSort_sortTwo_uint32_c(u32* array, int a, int b);
void selectionSort_sortTwo_int32_c(i32* array, int a, int b);
void selectionSort_sortTwo_uint16_c(u16* array, int a, int b);
void selectionSort_sortTwo_int16_c(i16* array, int a, int b);
void selectionSort_sortTwo_uint8_c(u8* array, int a, int b);
void selectionSort_sortTwo_int8_c(i8* array, int a, int b);

void selectionSort_swapTwo_uint64_c(u64* array, int a, int b);
void selectionSort_swapTwo_int64_c(i64* array, int a, int b);
void selectionSort_swapTwo_float64_c(f64* array, int a, int b);
void selectionSort_swapTwo_float32_c(f32* array, int a, int b);
void selectionSort_swapTwo_uint32_c(u32* array, int a, int b);
void selectionSort_swapTwo_int32_c(i32* array, int a, int b);
void selectionSort_swapTwo_uint16_c(u16* array, int a, int b);
void selectionSort_swapTwo_int16_c(i16* array, int a, int b);
void selectionSort_swapTwo_uint8_c(u8* array, int a, int b);
void selectionSort_swapTwo_int8_c(i8* array, int a, int b);

u64* selectionSort_uint64_c(u64* array, int arrayLength);
i64* selectionSort_int64_c(i64* array, int arrayLength);
f64* selectionSort_float64_c(f64* array, int arrayLength);
f32* selectionSort_float32_c(f32* array, int arrayLength);
u32* selectionSort_uint32_c(u32* array, int arrayLength);
i32* selectionSort_int32_c(i32* array, int arrayLength);
u16* selectionSort_uint16_c(u16* array, int arrayLength);
i16* selectionSort_int16_c(i16* array, int arrayLength);
u8* selectionSort_uint8_c(u8* array, int arrayLength);
i8* selectionSort_int8_c(i8* array, int arrayLength);
#endif