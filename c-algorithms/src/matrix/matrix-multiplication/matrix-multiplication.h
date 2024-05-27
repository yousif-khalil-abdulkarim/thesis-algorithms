#ifndef MATRIX_MULTIPLICATION
#define MATRIX_MULTIPLICATION
#include "shared.h"
u64** matrixMultiplication_uint64_c(u64* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
i64** matrixMultiplication_int64_c(i64* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
f64** matrixMultiplication_float64_c(f64* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
f32** matrixMultiplication_float32_c(f32* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
u32** matrixMultiplication_uint32_c(u32* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
i32** matrixMultiplication_int32_c(i32* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
u16** matrixMultiplication_uint16_c(u16* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
i16** matrixMultiplication_int16_c(i16* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
u8** matrixMultiplication_uint8_c(u8* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
i8** matrixMultiplication_int8_c(i8* matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth);
#endif