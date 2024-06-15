#ifndef QUICK_SORT
#define QUICK_SORT
#include "shared/shared.h"

int getPivotIndex_u64_c(u64* array, int start, int end);
int getPivotIndex_i64_c(i64* array, int start, int end);
int getPivotIndex_f64_c(f64* array, int start, int end);
int getPivotIndex_f32_c(f32* array, int start, int end);
int getPivotIndex_u32_c(u32* array, int start, int end);
int getPivotIndex_i32_c(i32* array, int start, int end);
int getPivotIndex_u16_c(u16* array, int start, int end);
int getPivotIndex_i16_c(i16* array, int start, int end);
int getPivotIndex_u8_c(u8* array, int start, int end);
int getPivotIndex_i8_c(i8* array, int start, int end);

u64* _quickSort_u64_c(u64* array, int left, int right);
i64* _quickSort_i64_c(i64* array, int left, int right);
f64* _quickSort_f64_c(f64* array, int left, int right);
f32* _quickSort_f32_c(f32* array, int left, int right);
u32* _quickSort_u32_c(u32* array, int left, int right);
i32* _quickSort_i32_c(i32* array, int left, int right);
u16* _quickSort_u16_c(u16* array, int left, int right);
i16* _quickSort_i16_c(i16* array, int left, int right);
u8* _quickSort_u8_c(u8* array, int left, int right);
i8* _quickSort_i8_c(i8* array, int left, int right);

Array1d_u64* quickSort_u64_c(Array1d_u64* array);
Array1d_i64* quickSort_i64_c(Array1d_i64* array);
Array1d_f64* quickSort_f64_c(Array1d_f64* array);
Array1d_f32* quickSort_f32_c(Array1d_f32* array);
Array1d_u32* quickSort_u32_c(Array1d_u32* array);
Array1d_i32* quickSort_i32_c(Array1d_i32* array);
Array1d_u16* quickSort_u16_c(Array1d_u16* array);
Array1d_i16* quickSort_i16_c(Array1d_i16* array);
Array1d_u8* quickSort_u8_c(Array1d_u8* array);
Array1d_i8* quickSort_i8_c(Array1d_i8* array);
#endif