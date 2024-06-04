#ifndef SHARED
#define SHARED
#include <stdlib.h>

typedef char boolean;
typedef unsigned long int u64;
typedef long int i64;
typedef double f64;
typedef float f32;
typedef unsigned int u32;
typedef int i32;
typedef unsigned short int u16;
typedef short int i16;
typedef unsigned char u8;
typedef char i8;

struct Array1d_u64 {
    u64* items;
    int length;
};
struct Array1d_i64 {
    i64* items;
    int length;
};
struct Array1d_f64 {
    f64* items;
    int length;
};
struct Array1d_f32 {
    f32* items;
    int length;
};
struct Array1d_u32 {
    u32* items;
    int length;
};
struct Array1d_i32 {
    i32* items;
    int length;
};
struct Array1d_u16 {
    u16* items;
    int length;
};
struct Array1d_i16 {
    i16* items;
    int length;
};
struct Array1d_u8 {
    u8* items;
    int length;
};
struct Array1d_i8 {
    i8* items;
    int length;
};

struct Array1d_u64* makeArray1d_u64(int length);
struct Array1d_i64* makeArray1d_i64(int length);
struct Array1d_f64* makeArray1d_f64(int length);
struct Array1d_f32* makeArray1d_f32(int length);
struct Array1d_u32* makeArray1d_u32(int length);
struct Array1d_i32* makeArray1d_i32(int length);
struct Array1d_u16* makeArray1d_u16(int length);
struct Array1d_i16* makeArray1d_i16(int length);
struct Array1d_u8* makeArray1d_u8(int length);
struct Array1d_i8* makeArray1d_i8(int length);

void deleteArray1d_u64(struct Array1d_u64* array);
void deleteArray1d_i64(struct Array1d_i64* array);
void deleteArray1d_f64(struct Array1d_f64* array);
void deleteArray1d_f32(struct Array1d_f32* array);
void deleteArray1d_u32(struct Array1d_u32* array);
void deleteArray1d_i32(struct Array1d_i32* array);
void deleteArray1d_u16(struct Array1d_u16* array);
void deleteArray1d_i16(struct Array1d_i16* array);
void deleteArray1d_u8(struct Array1d_u8* array);
void deleteArray1d_i8(struct Array1d_i8* array);

struct Matrix_u64 {
    u64** data;
    int width;
    int height;
};
struct Matrix_i64 {
    i64** data;
    int width;
    int height;
};
struct Matrix_f64 {
    f64** data;
    int width;
    int height;
};
struct Matrix_f32 {
    f32** data;
    int width;
    int height;
};
struct Matrix_u32 {
    u32** data;
    int width;
    int height;
};
struct Matrix_i32 {
    i32** data;
    int width;
    int height;
};
struct Matrix_u16 {
    u16** data;
    int width;
    int height;
};
struct Matrix_i16 {
    i16** data;
    int width;
    int height;
};
struct Matrix_u8 {
    u8** data;
    int width;
    int height;
};
struct Matrix_i8 {
    i8** data;
    int width;
    int height;
};

struct Matrix_u64* makeMatrix_u64(int width, int height);
struct Matrix_i64* makeMatrix_i64(int width, int height);
struct Matrix_f64* makeMatrix_f64(int width, int height);
struct Matrix_f32* makeMatrix_f32(int width, int height);
struct Matrix_u32* makeMatrix_u32(int width, int height);
struct Matrix_i32* makeMatrix_i32(int width, int height);
struct Matrix_u16* makeMatrix_u16(int width, int height);
struct Matrix_i16* makeMatrix_i16(int width, int height);
struct Matrix_u8* makeMatrix_u8(int width, int height);
struct Matrix_i8* makeMatrix_i8(int width, int height);

void deleteMatrix_u64(struct Matrix_u64* matrix);
void deleteMatrix_i64(struct Matrix_i64* matrix);
void deleteMatrix_f64(struct Matrix_f64* matrix);
void deleteMatrix_f32(struct Matrix_f32* matrix);
void deleteMatrix_u32(struct Matrix_u32* matrix);
void deleteMatrix_i32(struct Matrix_i32* matrix);
void deleteMatrix_u16(struct Matrix_u16* matrix);
void deleteMatrix_i16(struct Matrix_i16* matrix);
void deleteMatrix_u8(struct Matrix_u8* matrix);
void deleteMatrix_i8(struct Matrix_i8* matrix);

void swapTwo_u64_c(u64* array, int a, int b);
void swapTwo_i64_c(i64* array, int a, int b);
void swapTwo_f64_c(f64* array, int a, int b);
void swapTwo_f32_c(f32* array, int a, int b);
void swapTwo_u32_c(u32* array, int a, int b);
void swapTwo_i32_c(i32* array, int a, int b);
void swapTwo_u16_c(u16* array, int a, int b);
void swapTwo_i16_c(i16* array, int a, int b);
void swapTwo_u8_c(u8* array, int a, int b);
void swapTwo_i8_c(i8* array, int a, int b);

void sortTwo_u64_c(u64* array, int a, int b);
void sortTwo_i64_c(i64* array, int a, int b);
void sortTwo_f64_c(f64* array, int a, int b);
void sortTwo_f32_c(f32* array, int a, int b);
void sortTwo_u32_c(u32* array, int a, int b);
void sortTwo_i32_c(i32* array, int a, int b);
void sortTwo_u16_c(u16* array, int a, int b);
void sortTwo_i16_c(i16* array, int a, int b);
void sortTwo_u8_c(u8* array, int a, int b);
void sortTwo_i8_c(i8* array, int a, int b);
#endif