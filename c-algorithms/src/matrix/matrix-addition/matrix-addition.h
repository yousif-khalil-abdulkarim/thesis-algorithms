#ifndef MATRIX_ADDITION
#define MATRIX_ADDITION
#include "shared/shared.h"

Matrix_u64* matrixAddition_u64_c(Matrix_u64* matrixA, Matrix_u64* matrixB);
Matrix_i64* matrixAddition_i64_c(Matrix_i64* matrixA, Matrix_u64* matrixB);
Matrix_f64* matrixAddition_f64_c(Matrix_f64* matrixA, Matrix_u64* matrixB);
Matrix_f32* matrixAddition_f32_c(Matrix_f32* matrixA, Matrix_u64* matrixB);
Matrix_u32* matrixAddition_u32_c(Matrix_u32* matrixA, Matrix_u64* matrixB);
Matrix_i32* matrixAddition_i32_c(Matrix_i32* matrixA, Matrix_u64* matrixB);
Matrix_u16* matrixAddition_u16_c(Matrix_u16* matrixA, Matrix_u64* matrixB);
Matrix_i16* matrixAddition_i16_c(Matrix_i16* matrixA, Matrix_u64* matrixB);
Matrix_u8* matrixAddition_u8_c(Matrix_u8* matrixA, Matrix_u64* matrixB);
Matrix_i8* matrixAddition_i8_c(Matrix_i8* matrixA, Matrix_u64* matrixB);
#endif