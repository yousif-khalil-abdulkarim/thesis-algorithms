#ifndef INTERPOLATION_SEARCH
#define INTERPOLATION_SEARCH
#include "shared.h"

int interpolationSearch_uint64_uint64_c(u64* array, int arrayLength, u64 target);
int _interpolationSearch_uint64_uint64_c(u64* array, int arrayLength, u64 target);
int interpolationSearch_uint64_int64_c(i64* array, int arrayLength, i64 target);
int _interpolationSearch_uint64_int64_c(i64* array, int arrayLength, i64 target);
int interpolationSearch_uint64_float64_c(f64* array, int arrayLength, f64 target);
int _interpolationSearch_uint64_float64_c(f64* array, int arrayLength, f64 target);
int interpolationSearch_uint64_float32_c(f32* array, int arrayLength, f32 target);
int _interpolationSearch_uint64_float32_c(f32* array, int arrayLength, f32 target);
int interpolationSearch_uint64_uint32_c(u32* array, int arrayLength, u32 target);
int _interpolationSearch_uint64_uint32_c(u32* array, int arrayLength, u32 target);
int interpolationSearch_uint64_int32_c(i32* array, int arrayLength, i32 target);
int _interpolationSearch_uint64_int32_c(i32* array, int arrayLength, i32 target);
int interpolationSearch_uint64_uint16_c(u16* array, int arrayLength, u16 target);
int _interpolationSearch_uint64_uint16_c(u16* array, int arrayLength, u16 target);
int interpolationSearch_uint64_int16_c(i16* array, int arrayLength, i16 target);
int _interpolationSearch_uint64_int16_c(i16* array, int arrayLength, i16 target);
int interpolationSearch_uint64_uint8_c(u8* array, int arrayLength, u8 target);
int _interpolationSearch_uint64_uint8_c(u8* array, int arrayLength, u8 target);
int interpolationSearch_uint64_int8_c(i8* array, int arrayLength, i8 target);
int _interpolationSearch_uint64_int8_c(i8* array, int arrayLength, i8 target);
#endif