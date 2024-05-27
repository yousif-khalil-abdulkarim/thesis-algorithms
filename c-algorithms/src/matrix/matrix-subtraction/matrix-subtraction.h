#ifndef MATRIX_SUBTRACTION
#define MATRIX_SUBTRACTION
#include "shared.h"
u64** matrixSubtraction_uint64_c(u64* matrixA, u64** matrixB, int width, int height);
i64** matrixSubtraction_int64_c(i64* matrixA, u64** matrixB, int width, int height);
f64** matrixSubtraction_float64_c(f64* matrixA, u64** matrixB, int width, int height);
f32** matrixSubtraction_float32_c(f32* matrixA, u64** matrixB, int width, int height);
u32** matrixSubtraction_uint32_c(u32* matrixA, u64** matrixB, int width, int height);
i32** matrixSubtraction_int32_c(i32* matrixA, u64** matrixB, int width, int height);
u16** matrixSubtraction_uint16_c(u16* matrixA, u64** matrixB, int width, int height);
i16** matrixSubtraction_int16_c(i16* matrixA, u64** matrixB, int width, int height);
u8** matrixSubtraction_uint8_c(u8* matrixA, u64** matrixB, int width, int height);
i8** matrixSubtraction_int8_c(i8* matrixA, u64** matrixB, int width, int height);
#endif