#ifndef BUBBLE_SORT
#define BUBBLE_SORT
#include "src/data-types.h"
void bubbleSort_sortTwo_uint64_c(u64* array, int a, int b);
void bubbleSort_sortTwo_int64_c(i64* array, int a, int b);
void bubbleSort_sortTwo_float64_c(f64* array, int a, int b);
void bubbleSort_sortTwo_float32_c(f32* array, int a, int b);
void bubbleSort_sortTwo_uint32_c(u32* array, int a, int b);
void bubbleSort_sortTwo_int32_c(i32* array, int a, int b);
void bubbleSort_sortTwo_uint16_c(u16* array, int a, int b);
void bubbleSort_sortTwo_int16_c(i16* array, int a, int b);
void bubbleSort_sortTwo_uint8_c(u8* array, int a, int b);
void bubbleSort_sortTwo_int8_c(i8* array, int a, int b);

void bubbleSort_swapTwo_uint64_c(u64* array, int a, int b);
void bubbleSort_swapTwo_int64_c(i64* array, int a, int b);
void bubbleSort_swapTwo_float64_c(f64* array, int a, int b);
void bubbleSort_swapTwo_float32_c(f32* array, int a, int b);
void bubbleSort_swapTwo_uint32_c(u32* array, int a, int b);
void bubbleSort_swapTwo_int32_c(i32* array, int a, int b);
void bubbleSort_swapTwo_uint16_c(u16* array, int a, int b);
void bubbleSort_swapTwo_int16_c(i16* array, int a, int b);
void bubbleSort_swapTwo_uint8_c(u8* array, int a, int b);
void bubbleSort_swapTwo_int8_c(i8* array, int a, int b);

u64* bubbleSort_uint64_c(u64* array, int arrayLength);
i64* bubbleSort_int64_c(i64* array, int arrayLength);
f64* bubbleSort_float64_c(f64* array, int arrayLength);
f32* bubbleSort_float32_c(f32* array, int arrayLength);
u32* bubbleSort_uint32_c(u32* array, int arrayLength);
i32* bubbleSort_int32_c(i32* array, int arrayLength);
u16* bubbleSort_uint16_c(u16* array, int arrayLength);
i16* bubbleSort_int16_c(i16* array, int arrayLength);
u8* bubbleSort_uint8_c(u8* array, int arrayLength);
i8* bubbleSort_int8_c(i8* array, int arrayLength);
#endif