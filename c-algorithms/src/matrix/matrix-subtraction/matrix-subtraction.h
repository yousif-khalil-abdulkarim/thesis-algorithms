#ifndef MATRIX_ADDITION
#define MATRIX_ADDITION
#include "shared/shared.h"
Matrix_u64* matrixSubtraction_u64_c(Matrix_u64* matrixA, Matrix_u64* matrixB);
Matrix_i64* matrixSubtraction_i64_c(Matrix_i64* matrixA, Matrix_u64* matrixB);
Matrix_f64* matrixSubtraction_f64_c(Matrix_f64* matrixA, Matrix_u64* matrixB);
Matrix_f32* matrixSubtraction_f32_c(Matrix_f32* matrixA, Matrix_u64* matrixB);
Matrix_u32* matrixSubtraction_u32_c(Matrix_u32* matrixA, Matrix_u64* matrixB);
Matrix_i32* matrixSubtraction_i32_c(Matrix_i32* matrixA, Matrix_u64* matrixB);
Matrix_u16* matrixSubtraction_u16_c(Matrix_u16* matrixA, Matrix_u64* matrixB);
Matrix_i16* matrixSubtraction_i16_c(Matrix_i16* matrixA, Matrix_u64* matrixB);
Matrix_u8* matrixSubtraction_u8_c(Matrix_u8* matrixA, Matrix_u64* matrixB);
Matrix_i8* matrixSubtraction_i8_c(Matrix_i8* matrixA, Matrix_u64* matrixB);
#endif