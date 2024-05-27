#ifndef MERGE_SORT
#define MERGE_SORT
#include "shared.h"
void merge_uint64_c(u64* arr, int l, int m, int r);
void _mergeSort_uint64_c(u64* arr, int l, int r);
u64* mergeSort_uint64_c(u64* arr, int arrayLength);

void merge_int64_c(i64* arr, int l, int m, int r);
void _mergeSort_int64_c(i64* arr, int l, int r);
i64* mergeSort_int64_c(i64* arr, int arrayLength);

void merge_float64_c(f64* arr, int l, int m, int r);
void _mergeSort_float64_c(f64* arr, int l, int r);
f64* mergeSort_float64_c(f64* arr, int arrayLength);

void merge_float32_c(f32* arr, int l, int m, int r);
void _mergeSort_float32_c(f32* arr, int l, int r);
f32* mergeSort_float32_c(f32* arr, int arrayLength);

void merge_uint32_c(u32* arr, int l, int m, int r);
void _mergeSort_uint32_c(u32* arr, int l, int r);
u32* mergeSort_uint32_c(u32* arr, int arrayLength);

void merge_int32_c(i32* arr, int l, int m, int r);
void _mergeSort_int32_c(i32* arr, int l, int r);
i32* mergeSort_int32_c(i32* arr, int arrayLength);

void merge_uint16_c(u16* arr, int l, int m, int r);
void _mergeSort_uint16_c(u16* arr, int l, int r);
u16* mergeSort_uint16_c(u16* arr, int arrayLength);

void merge_int16_c(i16* arr, int l, int m, int r);
void _mergeSort_int16_c(i16* arr, int l, int r);
i16* mergeSort_int16_c(i16* arr, int arrayLength);

void merge_uint8_c(u8* arr, int l, int m, int r);
void _mergeSort_uint8_c(u8* arr, int l, int r);
u8* mergeSort_uint8_c(u8* arr, int arrayLength);

void merge_int8_c(i8* arr, int l, int m, int r);
void _mergeSort_int8_c(i8* arr, int l, int r);
i8* mergeSort_int8_c(i8* arr, int arrayLength);
#endif