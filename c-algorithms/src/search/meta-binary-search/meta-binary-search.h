#ifndef META_BINARY_SEARCH
#define META_BINARY_SEARCH
#include "shared/shared.h"
int metaBinarySearch_u64_c(Array1d_u64* array, u64 target);
int metaBinarySearch_i64_c(Array1d_i64* array, i64 target);
int metaBinarySearch_f64_c(Array1d_f64* array, f64 target);
int metaBinarySearch_f32_c(Array1d_f32* array, f32 target);
int metaBinarySearch_u32_c(Array1d_u32* array, u32 target);
int metaBinarySearch_i32_c(Array1d_i32* array, i32 target);
int metaBinarySearch_u16_c(Array1d_u16* array, u16 target);
int metaBinarySearch_i16_c(Array1d_i16* array, i16 target);
int metaBinarySearch_u8_c(Array1d_u8* array, u8 target);
int metaBinarySearch_i8_c(Array1d_i8* array, i8 target);
#endif