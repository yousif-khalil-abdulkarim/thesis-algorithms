#ifndef MATRIX_ADDITION
#define MATRIX_ADDITION
#include "shared/shared.h"

struct Matrix_u64* matrixAddition_u64_c(struct Matrix_u64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i64* matrixAddition_i64_c(struct Matrix_i64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_f64* matrixAddition_f64_c(struct Matrix_f64* matrixA, struct Matrix_u64* matrixB);
struct Matrix_f32* matrixAddition_f32_c(struct Matrix_f32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u32* matrixAddition_u32_c(struct Matrix_u32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i32* matrixAddition_i32_c(struct Matrix_i32* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u16* matrixAddition_u16_c(struct Matrix_u16* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i16* matrixAddition_i16_c(struct Matrix_i16* matrixA, struct Matrix_u64* matrixB);
struct Matrix_u8* matrixAddition_u8_c(struct Matrix_u8* matrixA, struct Matrix_u64* matrixB);
struct Matrix_i8* matrixAddition_i8_c(struct Matrix_i8* matrixA, struct Matrix_u64* matrixB);
#endif