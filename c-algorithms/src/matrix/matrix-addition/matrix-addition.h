#ifndef MATRIX_ADDITION
#define MATRIX_ADDITION
#include "src/data-types.h"
u64** matrixAddition_uint64_c(u64* matrixA, u64** matrixB, int height, int width);
i64** matrixAddition_int64_c(i64* matrixA, u64** matrixB, int height, int width);
f64** matrixAddition_float64_c(f64* matrixA, u64** matrixB, int height, int width);
f32** matrixAddition_float32_c(f32* matrixA, u64** matrixB, int height, int width);
u32** matrixAddition_uint32_c(u32* matrixA, u64** matrixB, int height, int width);
i32** matrixAddition_int32_c(i32* matrixA, u64** matrixB, int height, int width);
u16** matrixAddition_uint16_c(u16* matrixA, u64** matrixB, int height, int width);
i16** matrixAddition_int16_c(i16* matrixA, u64** matrixB, int height, int width);
u8** matrixAddition_uint8_c(u8* matrixA, u64** matrixB, int height, int width);
i8** matrixAddition_int8_c(i8* matrixA, u64** matrixB, int height, int width);
#endif