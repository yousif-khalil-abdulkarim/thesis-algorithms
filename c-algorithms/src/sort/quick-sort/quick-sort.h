#ifndef QUICK_SORT
#define QUICK_SORT
#include "src/data-types.h"
void quickSort_sortTwo_uint64_c(u64* array, int a, int b);
void quickSort_sortTwo_int64_c(i64* array, int a, int b);
void quickSort_sortTwo_float64_c(f64* array, int a, int b);
void quickSort_sortTwo_float32_c(f32* array, int a, int b);
void quickSort_sortTwo_uint32_c(u32* array, int a, int b);
void quickSort_sortTwo_int32_c(i32* array, int a, int b);
void quickSort_sortTwo_uint16_c(u16* array, int a, int b);
void quickSort_sortTwo_int16_c(i16* array, int a, int b);
void quickSort_sortTwo_uint8_c(u8* array, int a, int b);
void quickSort_sortTwo_int8_c(i8* array, int a, int b);

void quickSort_swapTwo_uint64_c(u64* array, int a, int b);
void quickSort_swapTwo_int64_c(i64* array, int a, int b);
void quickSort_swapTwo_float64_c(f64* array, int a, int b);
void quickSort_swapTwo_float32_c(f32* array, int a, int b);
void quickSort_swapTwo_uint32_c(u32* array, int a, int b);
void quickSort_swapTwo_int32_c(i32* array, int a, int b);
void quickSort_swapTwo_uint16_c(u16* array, int a, int b);
void quickSort_swapTwo_int16_c(i16* array, int a, int b);
void quickSort_swapTwo_uint8_c(u8* array, int a, int b);
void quickSort_swapTwo_int8_c(i8* array, int a, int b);

u64* _quickSort_uint64_c(u64* array, int left, int right);
i64* _quickSort_int64_c(i64* array, int left, int right);
f64* _quickSort_float64_c(f64* array, int left, int right);
f32* _quickSort_float32_c(f32* array, int left, int right);
u32* _quickSort_uint32_c(u32* array, int left, int right);
i32* _quickSort_int32_c(i32* array, int left, int right);
u16* _quickSort_uint16_c(u16* array, int left, int right);
i16* _quickSort_int16_c(i16* array, int left, int right);
u8* _quickSort_uint8_c(u8* array, int left, int right);
i8* _quickSort_int8_c(i8* array, int left, int right);

u64* quickSort_uint64_c(u64* array, int left, int right);
i64* quickSort_int64_c(i64* array, int left, int right);
f64* quickSort_float64_c(f64* array, int left, int right);
f32* quickSort_float32_c(f32* array, int left, int right);
u32* quickSort_uint32_c(u32* array, int left, int right);
i32* quickSort_int32_c(i32* array, int left, int right);
u16* quickSort_uint16_c(u16* array, int left, int right);
i16* quickSort_int16_c(i16* array, int left, int right);
u8* quickSort_uint8_c(u8* array, int left, int right);
i8* quickSort_int8_c(i8* array, int left, int right);
#endif