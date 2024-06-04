#ifndef MATRIX_MULTIPLICATION
#define MATRIX_MULTIPLICATION
#include "shared/shared.h"
struct Matrix_u64* matrixMultiplication_u64_c(struct Matrix_u64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i64* matrixMultiplication_i64_c(struct Matrix_i64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_f64* matrixMultiplication_f64_c(struct Matrix_f64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_f32* matrixMultiplication_f32_c(struct Matrix_f32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u32* matrixMultiplication_u32_c(struct Matrix_u32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i32* matrixMultiplication_i32_c(struct Matrix_i32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u16* matrixMultiplication_u16_c(struct Matrix_u16* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i16* matrixMultiplication_i16_c(struct Matrix_i16* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u8* matrixMultiplication_u8_cMatrix_(struct u8* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i8* matrixMultiplication_i8_cMatrix_(struct i8* matrixA, struct Matrix_u64* matrixB);
#endif