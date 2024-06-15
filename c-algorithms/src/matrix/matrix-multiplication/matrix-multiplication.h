#ifndef MATRIX_MULTIPLICATION
#define MATRIX_MULTIPLICATION
#include "shared/shared.h"
Matrix_u64* matrixMultiplication_u64_c(Matrix_u64* matrixA, Matrix_u64* matrixB);
Matrix_i64* matrixMultiplication_i64_c(Matrix_i64* matrixA, Matrix_u64* matrixB);
Matrix_f64* matrixMultiplication_f64_c(Matrix_f64* matrixA, Matrix_u64* matrixB);
Matrix_f32* matrixMultiplication_f32_c(Matrix_f32* matrixA, Matrix_u64* matrixB);
Matrix_u32* matrixMultiplication_u32_c(Matrix_u32* matrixA, Matrix_u64* matrixB);
Matrix_i32* matrixMultiplication_i32_c(Matrix_i32* matrixA, Matrix_u64* matrixB);
Matrix_u16* matrixMultiplication_u16_c(Matrix_u16* matrixA, Matrix_u64* matrixB);
Matrix_i16* matrixMultiplication_i16_c(Matrix_i16* matrixA, Matrix_u64* matrixB);
Matrix_u8* matrixMultiplication_u8_cMatrix_(u8* matrixA, Matrix_u64* matrixB);
Matrix_i8* matrixMultiplication_i8_cMatrix_(i8* matrixA, Matrix_u64* matrixB);
#endif