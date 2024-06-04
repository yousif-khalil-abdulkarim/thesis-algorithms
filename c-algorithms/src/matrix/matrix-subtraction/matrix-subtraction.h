#ifndef MATRIX_ADDITION
#define MATRIX_ADDITION
#include "shared/shared.h"
struct Matrix_u64* matrixSubtraction_u64_c(struct Matrix_u64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i64* matrixSubtraction_i64_c(struct Matrix_i64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_f64* matrixSubtraction_f64_c(struct Matrix_f64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_f32* matrixSubtraction_f32_c(struct Matrix_f32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u32* matrixSubtraction_u32_c(struct Matrix_u32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i32* matrixSubtraction_i32_c(struct Matrix_i32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u16* matrixSubtraction_u16_c(struct Matrix_u16* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i16* matrixSubtraction_i16_c(struct Matrix_i16* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u8* matrixSubtraction_u8_c(struct Matrix_u8* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i8* matrixSubtraction_i8_c(struct Matrix_i8* matrixA, struct Matrix_u64* matrixB);
#endif