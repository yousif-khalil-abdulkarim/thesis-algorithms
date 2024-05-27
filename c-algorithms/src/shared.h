#ifndef SHARED
#define SHARED
typedef unsigned long long int u64;
typedef long long int i64;

typedef unsigned long long int u64;
typedef long long int i64;

typedef double f64;
typedef float f32;

typedef unsigned long long int u32;
typedef long long int i32;

typedef unsigned long long int u16;
typedef long long int i16;

typedef unsigned long long int u8;
typedef long long int i8;

void sortTwo_uint64_c(u64* array, int a, int b);
void sortTwo_int64_c(i64* array, int a, int b);
void sortTwo_float64_c(f64* array, int a, int b);
void sortTwo_float32_c(f32* array, int a, int b);
void sortTwo_uint32_c(u32* array, int a, int b);
void sortTwo_int32_c(i32* array, int a, int b);
void sortTwo_uint16_c(u16* array, int a, int b);
void sortTwo_int16_c(i16* array, int a, int b);
void sortTwo_uint8_c(u8* array, int a, int b);
void sortTwo_int8_c(i8* array, int a, int b);

void swapTwo_uint64_c(u64* array, int a, int b);
void swapTwo_int64_c(i64* array, int a, int b);
void swapTwo_float64_c(f64* array, int a, int b);
void swapTwo_float32_c(f32* array, int a, int b);
void swapTwo_uint32_c(u32* array, int a, int b);
void swapTwo_int32_c(i32* array, int a, int b);
void swapTwo_uint16_c(u16* array, int a, int b);
void swapTwo_int16_c(i16* array, int a, int b);
void swapTwo_uint8_c(u8* array, int a, int b);
void swapTwo_int8_c(i8* array, int a, int b);
#endif