#ifndef INTERPOLATION_SEARCH
#define INTERPOLATION_SEARCH
#include "shared/shared.h"

int interpolationSearch_u64_u64_c(Array1d_u64* array, u64 target);
int _interpolationSearch_u64_u64_c(u64* array, int startOffset, int endOffset, u64 target);
int interpolationSearch_u64_i64_c(Array1d_i64* array, i64 target);
int _interpolationSearch_u64_i64_c(i64* array, int startOffset, int endOffset, i64 target);
int interpolationSearch_u64_f64_c(Array1d_f64* array, f64 target);
int _interpolationSearch_u64_f64_c(f64* array, int startOffset, int endOffset, f64 target);
int interpolationSearch_u64_f32_c(Array1d_f32* array, f32 target);
int _interpolationSearch_u64_f32_c(f32* array, int startOffset, int endOffset, f32 target);
int interpolationSearch_u64_u32_c(Array1d_u32* array, u32 target);
int _interpolationSearch_u64_u32_c(u32* array, int startOffset, int endOffset, u32 target);
int interpolationSearch_u64_i32_c(Array1d_i32* array, i32 target);
int _interpolationSearch_u64_i32_c(i32* array, int startOffset, int endOffset, i32 target);
int interpolationSearch_u64_u16_c(Array1d_u16* array, u16 target);
int _interpolationSearch_u64_u16_c(u16* array, int startOffset, int endOffset, u16 target);
int interpolationSearch_u64_i16_c(Array1d_i16* array, i16 target);
int _interpolationSearch_u64_i16_c(i16* array, int startOffset, int endOffset, i16 target);
int interpolationSearch_u64_u8_c(Array1d_u8* array, u8 target);
int _interpolationSearch_u64_u8_c(u8* array, int startOffset, int endOffset, u8 target);
int interpolationSearch_u64_i8_c(Array1d_i8* array, i8 target);
int _interpolationSearch_u64_i8_c(i8* array, int startOffset, int endOffset, i8 target);
#endif