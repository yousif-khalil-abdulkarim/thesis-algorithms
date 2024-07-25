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

typedef struct Array1d_u64 {
    u64* items;
    int length;
} Array1d_u64;
typedef struct Array1d_i64 {
    i64* items;
    int length;
} Array1d_i64;
typedef struct Array1d_f64 {
    f64* items;
    int length;
} Array1d_f64;
typedef struct Array1d_f32 {
    f32* items;
    int length;
} Array1d_f32;
typedef struct Array1d_u32 {
    u32* items;
    int length;
} Array1d_u32;
typedef struct Array1d_i32 {
    i32* items;
    int length;
} Array1d_i32;
typedef struct Array1d_u16 {
    u16* items;
    int length;
} Array1d_u16;
typedef struct Array1d_i16 {
    i16* items;
    int length;
} Array1d_i16;
typedef struct Array1d_u8 {
    u8* items;
    int length;
} Array1d_u8;
typedef struct Array1d_i8 {
    i8* items;
    int length;
} Array1d_i8;

Array1d_u64* makeArray1d_u64(int length);
Array1d_i64* makeArray1d_i64(int length);
Array1d_f64* makeArray1d_f64(int length);
Array1d_f32* makeArray1d_f32(int length);
Array1d_u32* makeArray1d_u32(int length);
Array1d_i32* makeArray1d_i32(int length);
Array1d_u16* makeArray1d_u16(int length);
Array1d_i16* makeArray1d_i16(int length);
Array1d_u8* makeArray1d_u8(int length);
Array1d_i8* makeArray1d_i8(int length);

void setArray1d_u64_c(Array1d_u64* array, int index, u64 value);
void setArray1d_i64_c(Array1d_i64* array, int index, i64 value);
void setArray1d_f64_c(Array1d_f64* array, int index, f64 value);
void setArray1d_f32_c(Array1d_f32* array, int index, f32 value);
void setArray1d_u32_c(Array1d_u32* array, int index, u32 value);
void setArray1d_i32_c(Array1d_i32* array, int index, i32 value);
void setArray1d_u16_c(Array1d_u16* array, int index, u16 value);
void setArray1d_i16_c(Array1d_i16* array, int index, i16 value);
void setArray1d_u8_c(Array1d_u8* array, int index, u8 value);
void setArray1d_i8_c(Array1d_i8* array, int index, i8 value);

void deleteArray1d_u64(Array1d_u64* array);
void deleteArray1d_i64(Array1d_i64* array);
void deleteArray1d_f64(Array1d_f64* array);
void deleteArray1d_f32_c(Array1d_f32* array);
void deleteArray1d_u32(Array1d_u32* array);
void deleteArray1d_i32(Array1d_i32* array);
void deleteArray1d_u16(Array1d_u16* array);
void deleteArray1d_i16(Array1d_i16* array);
void deleteArray1d_u8(Array1d_u8* array);
void deleteArray1d_i8(Array1d_i8* array);

typedef struct Matrix_u64 {
    u64** data;
    int width;
    int height;
} Matrix_u64;
typedef struct Matrix_i64 {
    i64** data;
    int width;
    int height;
} Matrix_i64;
typedef struct Matrix_f64 {
    f64** data;
    int width;
    int height;
} Matrix_f64;
typedef struct Matrix_f32 {
    f32** data;
    int width;
    int height;
} Matrix_f32;
typedef struct Matrix_u32 {
    u32** data;
    int width;
    int height;
} Matrix_u32;
typedef struct Matrix_i32 {
    i32** data;
    int width;
    int height;
} Matrix_i32;
typedef struct Matrix_u16 {
    u16** data;
    int width;
    int height;
} Matrix_u16;
typedef struct Matrix_i16 {
    i16** data;
    int width;
    int height;
} Matrix_i16;
typedef struct Matrix_u8 {
    u8** data;
    int width;
    int height;
} Matrix_u8;
typedef struct Matrix_i8 {
    i8** data;
    int width;
    int height;
} Matrix_i8;

Matrix_u64* makeMatrix_u64(int height, int width);
Matrix_i64* makeMatrix_i64(int height, int width);
Matrix_f64* makeMatrix_f64(int height, int width);
Matrix_f32* makeMatrix_f32(int height, int width);
Matrix_u32* makeMatrix_u32(int height, int width);
Matrix_i32* makeMatrix_i32(int height, int width);
Matrix_u16* makeMatrix_u16(int height, int width);
Matrix_i16* makeMatrix_i16(int height, int width);
Matrix_u8* makeMatrix_u8(int height, int width);
Matrix_i8* makeMatrix_i8(int height, int width);

void setMatrix_u64_c(Matrix_u64* matrix, int x, int y, u64 value);
void setMatrix_i64_c(Matrix_i64* matrix, int x, int y, i64 value);
void setMatrix_f64_c(Matrix_f64* matrix, int x, int y, f64 value);
void setMatrix_f32_c(Matrix_f32* matrix, int x, int y, f32 value);
void setMatrix_u32_c(Matrix_u32* matrix, int x, int y, u32 value);
void setMatrix_i32_c(Matrix_i32* matrix, int x, int y, i32 value);
void setMatrix_u16_c(Matrix_u16* matrix, int x, int y, u16 value);
void setMatrix_i16_c(Matrix_i16* matrix, int x, int y, i16 value);
void setMatrix_u8_c(Matrix_u8* matrix, int x, int y, u8 value);
void setMatrix_i8_c(Matrix_i8* matrix, int x, int y, i8 value);

void deleteMatrix_u64(Matrix_u64* matrix);
void deleteMatrix_i64(Matrix_i64* matrix);
void deleteMatrix_f64(Matrix_f64* matrix);
void deleteMatrix_f32(Matrix_f32* matrix);
void deleteMatrix_u32(Matrix_u32* matrix);
void deleteMatrix_i32(Matrix_i32* matrix);
void deleteMatrix_u16(Matrix_u16* matrix);
void deleteMatrix_i16(Matrix_i16* matrix);
void deleteMatrix_u8(Matrix_u8* matrix);
void deleteMatrix_i8(Matrix_i8* matrix);

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