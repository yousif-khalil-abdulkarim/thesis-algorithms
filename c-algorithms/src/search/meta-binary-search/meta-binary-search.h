#ifndef META_BINARY_SEARCH
#define META_BINARY_SEARCH
#include "src/data-types.h"
int metaBinarySearch_uint64_c(u64* array, int arrayLength, u64 target);
int metaBinarySearch_int64_c(i64* array, int arrayLength, i64 target);
int metaBinarySearch_float64_c(f64* array, int arrayLength, f64 target);
int metaBinarySearch_float32_c(f32* array, int arrayLength, f32 target);
int metaBinarySearch_uint32_c(u32* array, int arrayLength, u32 target);
int metaBinarySearch_int32_c(i32* array, int arrayLength, i32 target);
int metaBinarySearch_uint16_c(u16* array, int arrayLength, u16 target);
int metaBinarySearch_int16_c(i16* array, int arrayLength, i16 target);
int metaBinarySearch_uint8_c(u8* array, int arrayLength, u8 target);
int metaBinarySearch_int8_c(i8* array, int arrayLength, i8 target);
#endif