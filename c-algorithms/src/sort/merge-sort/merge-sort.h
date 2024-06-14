#ifndef MERGE_SORT
#define MERGE_SORT
#include "shared/shared.h"

void merge_u64_c(u64* arr, int l, int m, int r);
void _mergeSort_u64_c(u64* arr, int l, int r);
struct Array1d_u64* mergeSort_u64_c(struct Array1d_u64* arr);

void merge_i64_c(i64* arr, int l, int m, int r);
void _mergeSort_i64_c(i64* arr, int l, int r);
struct Array1d_i64* mergeSort_i64_c(struct Array1d_i64* arr);

void merge_f64_c(f64* arr, int l, int m, int r);
void _mergeSort_f64_c(f64* arr, int l, int r);
struct Array1d_f64* mergeSort_f64_c(struct Array1d_f64* arr);

void merge_f32_c(f32* arr, int l, int m, int r);
void _mergeSort_f32_c(f32* arr, int l, int r);
struct Array1d_f32* mergeSort_f32_c(struct Array1d_f32* arr);

void merge_u32_c(u32* arr, int l, int m, int r);
void _mergeSort_u32_c(u32* arr, int l, int r);
struct Array1d_u32* mergeSort_u32_c(struct Array1d_u32* arr);

void merge_i32_c(i32* arr, int l, int m, int r);
void _mergeSort_i32_c(i32* arr, int l, int r);
struct Array1d_i32* mergeSort_i32_c(struct Array1d_i32* arr);

void merge_u16_c(u16* arr, int l, int m, int r);
void _mergeSort_u16_c(u16* arr, int l, int r);
struct Array1d_u16* mergeSort_u16_c(struct Array1d_u16* arr);

void merge_i16_c(i16* arr, int l, int m, int r);
void _mergeSort_i16_c(i16* arr, int l, int r);
struct Array1d_i16* mergeSort_i16_c(struct Array1d_i16* arr);

void merge_u8_c(u8* arr, int l, int m, int r);
void _mergeSort_u8_c(u8* arr, int l, int r);
struct Array1d_u8* mergeSort_u8_c(struct Array1d_u8* arr);

void merge_i8_c(i8* arr, int l, int m, int r);
void _mergeSort_i8_c(i8* arr, int l, int r);
struct Array1d_i8* mergeSort_i8_c(struct Array1d_i8* arr);
#endif