#ifndef MATRIX_SUBTRACTION
#define MATRIX_SUBTRACTION
#include "src/data-types.h"
u64** matrixSubtraction_uint64_c(u64* matrixA, u64** matrixB, int height, int width);
i64** matrixSubtraction_int64_c(i64* matrixA, u64** matrixB, int height, int width);
f64** matrixSubtraction_float64_c(f64* matrixA, u64** matrixB, int height, int width);
f32** matrixSubtraction_float32_c(f32* matrixA, u64** matrixB, int height, int width);
u32** matrixSubtraction_uint32_c(u32* matrixA, u64** matrixB, int height, int width);
i32** matrixSubtraction_int32_c(i32* matrixA, u64** matrixB, int height, int width);
u16** matrixSubtraction_uint16_c(u16* matrixA, u64** matrixB, int height, int width);
i16** matrixSubtraction_int16_c(i16* matrixA, u64** matrixB, int height, int width);
u8** matrixSubtraction_uint8_c(u8* matrixA, u64** matrixB, int height, int width);
i8** matrixSubtraction_int8_c(i8* matrixA, u64** matrixB, int height, int width);
#endif