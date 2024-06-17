#include "stdio.h"
#include <stdlib.h>
#include <math.h>
#include <emscripten.h>

int main() {
    printf("moudle init wasm\n");
}

typedef char boolean;
typedef unsigned long int u64;
typedef long int i64;
typedef double f64;
typedef float f32;
typedef unsigned int u32;
typedef int i32;
typedef unsigned short int u16;
typedef short int i16;
typedef unsigned char u8;
typedef char i8;

typedef struct Array1d_u64 {
    u64* items;
    int length;
} Array1d_u64;
typedef struct Array1d_i64 {
    i64* items;
    int length;
} Array1d_i64;
typedef struct Array1d_f64 {
    f64* items;
    int length;
} Array1d_f64;
typedef struct Array1d_f32 {
    f32* items;
    int length;
} Array1d_f32;
typedef struct Array1d_u32 {
    u32* items;
    int length;
} Array1d_u32;
typedef struct Array1d_i32 {
    i32* items;
    int length;
} Array1d_i32;
typedef struct Array1d_u16 {
    u16* items;
    int length;
} Array1d_u16;
typedef struct Array1d_i16 {
    i16* items;
    int length;
} Array1d_i16;
typedef struct Array1d_u8 {
    u8* items;
    int length;
} Array1d_u8;
typedef struct Array1d_i8 {
    i8* items;
    int length;
} Array1d_i8;

Array1d_u64* makeArray1d_u64(int length) {
    u64* items = (u64*)malloc(length * sizeof(u64));
    Array1d_u64* array = (Array1d_u64*)malloc(sizeof(Array1d_u64));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_i64* makeArray1d_i64(int length) {
    i64* items = (i64*)malloc(length * sizeof(i64));
    Array1d_i64* array = (Array1d_i64*)malloc(sizeof(Array1d_i64));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_f64* makeArray1d_f64(int length) {
    f64* items = (f64*)malloc(length * sizeof(f64));
    Array1d_f64* array = (Array1d_f64*)malloc(sizeof(Array1d_f64));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_f32* makeArray1d_f32(int length) {
    f32* items = (f32*)malloc(length * sizeof(f32));
    Array1d_f32* array = (Array1d_f32*)malloc(sizeof(Array1d_f32));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_u32* makeArray1d_u32(int length) {
    u32* items = (u32*)malloc(length * sizeof(u32));
    Array1d_u32* array = (Array1d_u32*)malloc(sizeof(Array1d_u32));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_i32* makeArray1d_i32(int length) {
    i32* items = (i32*)malloc(length * sizeof(i32));
    Array1d_i32* array = (Array1d_i32*)malloc(sizeof(Array1d_i32));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_u16* makeArray1d_u16(int length) {
    u16* items = (u16*)malloc(length * sizeof(u16));
    Array1d_u16* array = (Array1d_u16*)malloc(sizeof(Array1d_u16));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_i16* makeArray1d_i16(int length) {
    i16* items = (i16*)malloc(length * sizeof(i16));
    Array1d_i16* array = (Array1d_i16*)malloc(sizeof(Array1d_i16));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_u8* makeArray1d_u8(int length) {
    u8* items = (u8*)malloc(length * sizeof(u8));
    Array1d_u8* array = (Array1d_u8*)malloc(sizeof(Array1d_u8));
    array->items = items;
    array->length = length;
    return array;
}
Array1d_i8* makeArray1d_i8(int length) {
    i8* items = (i8*)malloc(length * sizeof(i8));
    Array1d_i8* array = (Array1d_i8*)malloc(sizeof(Array1d_i8));
    array->items = items;
    array->length = length;
    return array;
}

void deleteArray1d_u64(Array1d_u64* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_i64(Array1d_i64* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_f64(Array1d_f64* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_f32(Array1d_f32* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_u32(Array1d_u32* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_i32(Array1d_i32* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_u16(Array1d_u16* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_i16(Array1d_i16* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_u8(Array1d_u8* array) {
    free(array->items);
    free(array);
}
void deleteArray1d_i8(Array1d_i8* array) {
    free(array->items);
    free(array);
}

typedef struct Matrix_u64 {
    u64** data;
    int width;
    int height;
} Matrix_u64;
typedef struct Matrix_i64 {
    i64** data;
    int width;
    int height;
} Matrix_i64;
typedef struct Matrix_f64 {
    f64** data;
    int width;
    int height;
} Matrix_f64;
typedef struct Matrix_f32 {
    f32** data;
    int width;
    int height;
} Matrix_f32;
typedef struct Matrix_u32 {
    u32** data;
    int width;
    int height;
} Matrix_u32;
typedef struct Matrix_i32 {
    i32** data;
    int width;
    int height;
} Matrix_i32;
typedef struct Matrix_u16 {
    u16** data;
    int width;
    int height;
} Matrix_u16;
typedef struct Matrix_i16 {
    i16** data;
    int width;
    int height;
} Matrix_i16;
typedef struct Matrix_u8 {
    u8** data;
    int width;
    int height;
} Matrix_u8;
typedef struct Matrix_i8 {
    i8** data;
    int width;
    int height;
} Matrix_i8;

Matrix_u64* makeMatrix_u64(int height, int width) {
    u64** data = (u64**)malloc(height * sizeof(u64*));
    for (int i = 0; i < height; i++) {
        u64* row = (u64*)malloc(width * sizeof(u64));
        data[i] = row;
    }

    Matrix_u64* matrix = (Matrix_u64*)malloc(sizeof(Matrix_u64));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;

    return matrix;
}
Matrix_i64* makeMatrix_i64(int height, int width) {
    i64** data = (i64**)malloc(height * sizeof(i64*));
    for (int i = 0; i < height; i++) {
        i64* row = (i64*)malloc(width * sizeof(i64));
        data[i] = row;
    }

    Matrix_i64* matrix = (Matrix_i64*)malloc(sizeof(Matrix_i64));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_f64* makeMatrix_f64(int height, int width) {
    f64** data = (f64**)malloc(height * sizeof(f64*));
    for (int i = 0; i < height; i++) {
        f64* row = (f64*)malloc(width * sizeof(f64));
        data[i] = row;
    }

    Matrix_f64* matrix = (Matrix_f64*)malloc(sizeof(Matrix_f64));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_f32* makeMatrix_f32(int height, int width) {
    f32** data = (f32**)malloc(height * sizeof(f32*));
    for (int i = 0; i < height; i++) {
        f32* row = (f32*)malloc(width * sizeof(f32));
        data[i] = row;
    }

    Matrix_f32* matrix = (Matrix_f32*)malloc(sizeof(Matrix_f32));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_u32* makeMatrix_u32(int height, int width) {
    u32** data = (u32**)malloc(height * sizeof(u32*));
    for (int i = 0; i < height; i++) {
        u32* row = (u32*)malloc(width * sizeof(u32));
        data[i] = row;
    }

    Matrix_u32* matrix = (Matrix_u32*)malloc(sizeof(Matrix_u32));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_i32* makeMatrix_i32(int height, int width) {
    i32** data = (i32**)malloc(height * sizeof(i32*));
    for (int i = 0; i < height; i++) {
        i32* row = (i32*)malloc(width * sizeof(i32));
        data[i] = row;
    }

    Matrix_i32* matrix = (Matrix_i32*)malloc(sizeof(Matrix_i32));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_u16* makeMatrix_u16(int height, int width) {
    u16** data = (u16**)malloc(height * sizeof(u16*));
    for (int i = 0; i < height; i++) {
        u16* row = (u16*)malloc(width * sizeof(u16));
        data[i] = row;
    }

    Matrix_u16* matrix = (Matrix_u16*)malloc(sizeof(Matrix_u16));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_i16* makeMatrix_i16(int height, int width) {
    i16** data = (i16**)malloc(height * sizeof(i16*));
    for (int i = 0; i < height; i++) {
        i16* row = (i16*)malloc(width * sizeof(i16));
        data[i] = row;
    }

    Matrix_i16* matrix = (Matrix_i16*)malloc(sizeof(Matrix_i16));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_u8* makeMatrix_u8(int height, int width) {
    u8** data = (u8**)malloc(height * sizeof(u8*));
    for (int i = 0; i < height; i++) {
        u8* row = (u8*)malloc(width * sizeof(u8));
        data[i] = row;
    }

    Matrix_u8* matrix = (Matrix_u8*)malloc(sizeof(Matrix_u8));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}
Matrix_i8* makeMatrix_i8(int height, int width) {
    i8** data = (i8**)malloc(height * sizeof(i8*));
    for (int i = 0; i < height; i++) {
        i8* row = (i8*)malloc(width * sizeof(i8));
        data[i] = row;
    }

    Matrix_i8* matrix = (Matrix_i8*)malloc(sizeof(Matrix_i8));
    matrix->width = width;
    matrix->height = height;
    matrix->data = data;
    
    return matrix;
}

void deleteMatrix_u64(Matrix_u64* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_i64(Matrix_i64* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_f64(Matrix_f64* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_f32(Matrix_f32* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_u32(Matrix_u32* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_i32(Matrix_i32* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_u16(Matrix_u16* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_i16(Matrix_i16* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_u8(Matrix_u8* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
void deleteMatrix_i8(Matrix_i8* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}

void swapTwo_u64_c(u64* array, int a, int b) {
    u64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_i64_c(i64* array, int a, int b) {
    i64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_f64_c(f64* array, int a, int b) {
    f64 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_f32_c(f32* array, int a, int b) {
    f32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_u32_c(u32* array, int a, int b) {
    u32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_i32_c(i32* array, int a, int b) {
    i32 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_u16_c(u16* array, int a, int b) {
    u16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_i16_c(i16* array, int a, int b) {
    i16 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_u8_c(u8* array, int a, int b) {
    u8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}
void swapTwo_i8_c(i8* array, int a, int b) {
    i8 itemA = array[a];
    array[a] = array[b];
    array[b] = itemA;
}

void sortTwo_u64_c(u64* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_u64_c(array, a, b);
    }
}
void sortTwo_i64_c(i64* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_i64_c(array, a, b);
    }
}
void sortTwo_f64_c(f64* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_f64_c(array, a, b);
    }
}
void sortTwo_f32_c(f32* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_f32_c(array, a, b);
    }
}
void sortTwo_u32_c(u32* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_u32_c(array, a, b);
    }
}
void sortTwo_i32_c(i32* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_i32_c(array, a, b);
    }
}
void sortTwo_u16_c(u16* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_u16_c(array, a, b);
    }
}
void sortTwo_i16_c(i16* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_i16_c(array, a, b);
    }
}
void sortTwo_u8_c(u8* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_u8_c(array, a, b);
    }
}
void sortTwo_i8_c(i8* array, int a, int b) {
    if (array[a] < array[b]) {
        swapTwo_i8_c(array, a, b);
    }
}

EMSCRIPTEN_KEEPALIVE
u64 average_u64_c(Array1d_u64* array) {
    u64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i64 average_i64_c(Array1d_i64* array) {
    i64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
f64 average_f64_c(Array1d_f64* array) {
    f64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        f64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
f32 average_f32_c(Array1d_f32* array) {
    f32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        f32 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u32 average_u32_c(Array1d_u32* array) {
    u32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u32 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i32 average_i32_c(Array1d_i32* array) {
    i32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i32 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u16 average_u16_c(Array1d_u16* array) {
    u16 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u16 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i16 average_i16_c(Array1d_i16* array) {
    i16 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i16 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u8 average_u8_c(Array1d_u8* array) {
    u8 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u8 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i8 average_i8_c(Array1d_i8* array) {
    i8 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i8 item = array->items[i];
        sum += item;
    }
    return sum;
}

EMSCRIPTEN_KEEPALIVE
u64 max_u64_c(Array1d_u64* array) {
    u64 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
i64 max_i64_c(Array1d_i64* array) {
    i64 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i64 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
f64 max_f64_c(Array1d_f64* array) {
    f64 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f64 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
f32 max_f32_c(Array1d_f32* array) {
    f32 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f32 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
u32 max_u32_c(Array1d_u32* array) {
    u32 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u32 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
i32 max_i32_c(Array1d_i32* array) {
    i32 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i32 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
u16 max_u16_c(Array1d_u16* array) {
    u16 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u16 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
i16 max_i16_c(Array1d_i16* array) {
    i16 max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i16 item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
u8 max_u8_c(Array1d_u8* array) {
    u8  max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u8  item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}
EMSCRIPTEN_KEEPALIVE
i8 max_i8_c(Array1d_i8* array) {
    i8  max = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i8  item = array->items[i];
        if (item > max) {
            max = item;
        }
    }
    return max;
}

EMSCRIPTEN_KEEPALIVE
u64 min_u64_c(Array1d_u64* array) {
    u64 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
i64 min_i64_c(Array1d_i64* array) {
    i64 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i64 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
f64 min_f64_c(Array1d_f64* array) {
    f64 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f64 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
f32 min_f32_c(Array1d_f32* array) {
    f32 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        f32 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
u32 min_u32_c(Array1d_u32* array) {
    u32 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u32 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
i32 min_i32_c(Array1d_i32* array) {
    i32 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i32 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
u16 min_u16_c(Array1d_u16* array) {
    u16 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u16 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
i16 min_i16_c(Array1d_i16* array) {
    i16 min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i16 item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
u8 min_u8_c(Array1d_u8* array) {
    u8  min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u8  item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}
EMSCRIPTEN_KEEPALIVE
i8 min_i8_c(Array1d_i8* array) {
    i8  min = array->items[0];
    for (int i = 0; i < array->length; i++) {
        i8  item = array->items[i];
        if (item < min) {
            min = item;
        }
    }
    return min;
}

EMSCRIPTEN_KEEPALIVE
u64 sum_u64_c(Array1d_u64* array) {
    u64 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i64 sum_i64_c(Array1d_i64* array) {
    i64 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
f64 sum_f64_c(Array1d_f64* array) {
    f64 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
f32 sum_f32_c(Array1d_f32* array) {
    f32 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u32 sum_u32_c(Array1d_u32* array) {
    u32 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i32 sum_i32_c(Array1d_i32* array) {
    i32 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u16 sum_u16_c(Array1d_u16* array) {
    u16 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i16 sum_i16_c(Array1d_i16* array) {
    i16 sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
u8 sum_u8_c(Array1d_u8* array) {
    u8  sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}
EMSCRIPTEN_KEEPALIVE
i8 sum_i8_c(Array1d_i8* array) {
    i8  sum = array->items[0];
    for (int i = 0; i < array->length; i++) {
        u64 item = array->items[i];
        sum += item;
    }
    return sum;
}

EMSCRIPTEN_KEEPALIVE
Matrix_u64* matrixAddition_u64_c(Matrix_u64* matrixA, Matrix_u64* matrixB) {
    Matrix_u64* newMatrix = makeMatrix_u64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i64* matrixAddition_i64_c(Matrix_i64* matrixA, Matrix_i64* matrixB) {
    Matrix_i64* newMatrix = makeMatrix_i64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f64* matrixAddition_f64_c(Matrix_f64* matrixA, Matrix_f64* matrixB) {
    Matrix_f64* newMatrix = makeMatrix_f64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f32* matrixAddition_f32_c(Matrix_f32* matrixA, Matrix_f32* matrixB) {
    Matrix_f32* newMatrix = makeMatrix_f32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u32* matrixAddition_u32_c(Matrix_u32* matrixA, Matrix_u32* matrixB) {
    Matrix_u32* newMatrix = makeMatrix_u32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i32* matrixAddition_i32_c(Matrix_i32* matrixA, Matrix_i32* matrixB) {
    Matrix_i32* newMatrix = makeMatrix_i32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u16* matrixAddition_u16_c(Matrix_u16* matrixA, Matrix_u16* matrixB) {
    Matrix_u16* newMatrix = makeMatrix_u16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i16* matrixAddition_i16_c(Matrix_i16* matrixA, Matrix_i16* matrixB) {
    Matrix_i16* newMatrix = makeMatrix_i16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u8* matrixAddition_u8_c(Matrix_u8* matrixA, Matrix_u8* matrixB) {
    Matrix_u8* newMatrix = makeMatrix_u8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i8* matrixAddition_i8_c(Matrix_i8* matrixA, Matrix_i8* matrixB) {
    Matrix_i8* newMatrix = makeMatrix_i8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}

EMSCRIPTEN_KEEPALIVE
Matrix_u64* matrixMultiplication_u64_c(Matrix_u64* matrixA, Matrix_u64* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_u64* c = makeMatrix_u64(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u64 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u64 Aik = matrixA->data[i][k];
                u64 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i64* matrixMultiplication_i64_c(Matrix_i64* matrixA, Matrix_i64* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_i64* c = makeMatrix_i64(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i64 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i64 Aik = matrixA->data[i][k];
                i64 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f64* matrixMultiplication_f64_c(Matrix_f64* matrixA, Matrix_f64* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_f64* c = makeMatrix_f64(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            f64 sum = 0;
            for (int k = 0 ; k < m; k++) {
                f64 Aik = matrixA->data[i][k];
                f64 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f32* matrixMultiplication_f32_c(Matrix_f32* matrixA, Matrix_f32* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_f32* c = makeMatrix_f32(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            f32 sum = 0;
            for (int k = 0 ; k < m; k++) {
                f32 Aik = matrixA->data[i][k];
                f32 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u32* matrixMultiplication_u32_c(Matrix_u32* matrixA, Matrix_u32* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_u32* c = makeMatrix_u32(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u32 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u32 Aik = matrixA->data[i][k];
                u32 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i32* matrixMultiplication_i32_c(Matrix_i32* matrixA, Matrix_i32* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_i32* c = makeMatrix_i32(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i32 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i32 Aik = matrixA->data[i][k];
                i32 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u16* matrixMultiplication_u16_c(Matrix_u16* matrixA, Matrix_u16* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_u16* c = makeMatrix_u16(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u16 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u16 Aik = matrixA->data[i][k];
                u16 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i16* matrixMultiplication_i16_c(Matrix_i16* matrixA, Matrix_i16* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_i16* c = makeMatrix_i16(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i16 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i16 Aik = matrixA->data[i][k];
                i16 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u8* matrixMultiplication_u8_c(Matrix_u8* matrixA, Matrix_u8* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_u8* c = makeMatrix_u8(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u8 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u8 Aik = matrixA->data[i][k];
                u8 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i8* matrixMultiplication_i8_c(Matrix_i8* matrixA, Matrix_i8* matrixB) {
    int m = matrixA->width;
    int n = matrixA->height;
    int p = matrixB->width;
    Matrix_i8* c = makeMatrix_i8(n, p);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i8 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i8 Aik = matrixA->data[i][k];
                i8 Bkj = matrixB->data[k][j];
                sum += Aik * Bkj;
            }
            c->data[i][j] = sum;
        }
    }
    
    return c;
}

EMSCRIPTEN_KEEPALIVE
Matrix_u64* matrixSubtraction_u64_c(Matrix_u64* matrixA, Matrix_u64* matrixB) {
    Matrix_u64* newMatrix = makeMatrix_u64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i64* matrixSubtraction_i64_c(Matrix_i64* matrixA, Matrix_i64* matrixB) {
    Matrix_i64* newMatrix = makeMatrix_i64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f64* matrixSubtraction_f64_c(Matrix_f64* matrixA, Matrix_f64* matrixB) {
    Matrix_f64* newMatrix = makeMatrix_f64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f32* matrixSubtraction_f32_c(Matrix_f32* matrixA, Matrix_f32* matrixB) {
    Matrix_f32* newMatrix = makeMatrix_f32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u32* matrixSubtraction_u32_c(Matrix_u32* matrixA, Matrix_u32* matrixB) {
    Matrix_u32* newMatrix = makeMatrix_u32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i32* matrixSubtraction_i32_c(Matrix_i32* matrixA, Matrix_i32* matrixB) {
    Matrix_i32* newMatrix = makeMatrix_i32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u16* matrixSubtraction_u16_c(Matrix_u16* matrixA, Matrix_u16* matrixB) {
    Matrix_u16* newMatrix = makeMatrix_u16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i16* matrixSubtraction_i16_c(Matrix_i16* matrixA, Matrix_i16* matrixB) {
    Matrix_i16* newMatrix = makeMatrix_i16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u8* matrixSubtraction_u8_c(Matrix_u8* matrixA, Matrix_u8* matrixB) {
    Matrix_u8* newMatrix = makeMatrix_u8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i8* matrixSubtraction_i8_c(Matrix_i8* matrixA, Matrix_i8* matrixB) {
    Matrix_i8* newMatrix = makeMatrix_i8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}

EMSCRIPTEN_KEEPALIVE
int binarySearch_u64_c(Array1d_u64* array, u64 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_i64_c(Array1d_i64* array, i64 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_f64_c(Array1d_f64* array, f64 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_f32_c(Array1d_f32* array, f32 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_u32_c(Array1d_u32* array, u32 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_i32_c(Array1d_i32* array, i32 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_u16_c(Array1d_u16* array, u16 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_i16_c(Array1d_i16* array, i16 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_u8_c(Array1d_u8* array, u8 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
EMSCRIPTEN_KEEPALIVE
int binarySearch_i8_c(Array1d_i8* array, i8 target) {
    int l = 0;
    int r = array->length - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array->items[mid] == target) {
            return mid;
        }
        if (array->items[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}

int _interpolationSearch_u64_c(u64* array, int startOffset, int endOffset, u64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_u64_c(Array1d_u64* array, u64 target) {
    return _interpolationSearch_u64_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i64_c(i64* array, int startOffset, int endOffset, i64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_i64_c(Array1d_i64* array, i64 target) {
    return _interpolationSearch_i64_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_f64_c(f64* array, int startOffset, int endOffset, f64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_f64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_f64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_f64_c(Array1d_f64* array, f64 target) {
    return _interpolationSearch_f64_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_f32_c(f32* array, int startOffset, int endOffset, f32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_f32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_f32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_f32_c(Array1d_f32* array, f32 target) {
    return _interpolationSearch_f32_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_u32_c(u32* array, int startOffset, int endOffset, u32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_u32_c(Array1d_u32* array, u32 target) {
    return _interpolationSearch_u32_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i32_c(i32* array, int startOffset, int endOffset, i32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_i32_c(Array1d_i32* array, i32 target) {
    return _interpolationSearch_i32_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_u16_c(u16* array, int startOffset, int endOffset, u16 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u16_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u16_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_u16_c(Array1d_u16* array, u16 target) {
    return _interpolationSearch_u16_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i16_c(i16* array, int startOffset, int endOffset, i16 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i16_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i16_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_i16_c(Array1d_i16* array, i16 target) {
    return _interpolationSearch_i16_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_u8_c(u8* array, int startOffset, int endOffset, u8 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u8_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u8_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_u8_c(Array1d_u8* array, u8 target) {
    return _interpolationSearch_u8_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i8_c(i8* array, int startOffset, int endOffset, i8 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i8_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i8_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
EMSCRIPTEN_KEEPALIVE
int interpolationSearch_i8_c(Array1d_i8* array, i8 target) {
    return _interpolationSearch_i8_c(array->items, 0, array->length - 1, target);
}

EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u64_c(Array1d_u64* array, u64 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i64_c(Array1d_i64* array, i64 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_f64_c(Array1d_f64* array, f64 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_f32_c(Array1d_f32* array, f32 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u32_c(Array1d_u32* array, u32 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i32_c(Array1d_i32* array, i32 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u16_c(Array1d_u16* array, u16 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i16_c(Array1d_i16* array, i16 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_u8_c(Array1d_u8* array, u8 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}
EMSCRIPTEN_KEEPALIVE
int metaBinarySearch_i8_c(Array1d_i8* array, i8 target) {
    int n = array->length;
    int lg = log2(n-1)+1;
    int pos = 0;
    for (int i = lg ; i >= 0; i--) {
        if (array->items[pos] == target)
            return pos;
 
        // Incrementally conthe
        // index of the target value
        int new_pos = pos | (1 << i);
 
        // find the element in one
        // direction and update position
        if ((new_pos < n) && (array->items[new_pos] <= target))
            pos = new_pos;
    }
    return ((array->items[pos] == target) ? pos : -1);
}

EMSCRIPTEN_KEEPALIVE
Array1d_u64* bubbleSort_u64_c(Array1d_u64* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u64_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i64* bubbleSort_i64_c(Array1d_i64* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i64_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f64* bubbleSort_f64_c(Array1d_f64* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_f64_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f32* bubbleSort_f32_c(Array1d_f32* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_f32_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u32* bubbleSort_u32_c(Array1d_u32* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u32_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i32* bubbleSort_i32_c(Array1d_i32* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i32_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u16* bubbleSort_u16_c(Array1d_u16* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u16_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i16* bubbleSort_i16_c(Array1d_i16* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i16_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u8* bubbleSort_u8_c(Array1d_u8* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_u8_c(array->items, j + 1, j);
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i8* bubbleSort_i8_c(Array1d_i8* array) {
    for (int i = 0; i < array->length; i++) {
        for (int j = 0; j < array->length - i - 1; j++) {
            sortTwo_i8_c(array->items, j + 1, j);
        }
    }
    return array;
}

void merge_u64_c(u64* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u64* L = (u64*)malloc(n1 * sizeof(u64));
    u64* R = (u64*)malloc(n2 * sizeof(u64));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_u64_c(u64* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_u64_c(arr, l, m);
  _mergeSort_u64_c(arr, m + 1, r);
  merge_u64_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_u64* mergeSort_u64_c(Array1d_u64* arr) {
  _mergeSort_u64_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_i64_c(i64* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i64* L = (i64*)malloc(n1 * sizeof(i64));
    i64* R = (i64*)malloc(n2 * sizeof(i64));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_i64_c(i64* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_i64_c(arr, l, m);
  _mergeSort_i64_c(arr, m + 1, r);
  merge_i64_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_i64* mergeSort_i64_c(Array1d_i64* arr) {
  _mergeSort_i64_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_f64_c(f64* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    f64* L = (f64*)malloc(n1 * sizeof(f64));
    f64* R = (f64*)malloc(n2 * sizeof(f64));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_f64_c(f64* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_f64_c(arr, l, m);
  _mergeSort_f64_c(arr, m + 1, r);
  merge_f64_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_f64* mergeSort_f64_c(Array1d_f64* arr) {
  _mergeSort_f64_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_f32_c(f32* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    f32* L = (f32*)malloc(n1 * sizeof(f32));
    f32* R = (f32*)malloc(n2 * sizeof(f32));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_f32_c(f32* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_f32_c(arr, l, m);
  _mergeSort_f32_c(arr, m + 1, r);
  merge_f32_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_f32* mergeSort_f32_c(Array1d_f32* arr) {
  _mergeSort_f32_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_u32_c(u32* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u32* L = (u32*)malloc(n1 * sizeof(u32));
    u32* R = (u32*)malloc(n2 * sizeof(u32));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_u32_c(u32* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_u32_c(arr, l, m);
  _mergeSort_u32_c(arr, m + 1, r);
  merge_u32_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_u32* mergeSort_u32_c(Array1d_u32* arr) {
  _mergeSort_u32_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_i32_c(i32* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i32* L = (i32*)malloc(n1 * sizeof(i32));
    i32* R = (i32*)malloc(n2 * sizeof(i32));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_i32_c(i32* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_i32_c(arr, l, m);
  _mergeSort_i32_c(arr, m + 1, r);
  merge_i32_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_i32* mergeSort_i32_c(Array1d_i32* arr) {
  _mergeSort_i32_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_u16_c(u16* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u16* L = (u16*)malloc(n1 * sizeof(u16));
    u16* R = (u16*)malloc(n2 * sizeof(u16));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_u16_c(u16* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_u16_c(arr, l, m);
  _mergeSort_u16_c(arr, m + 1, r);
  merge_u16_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_u16* mergeSort_u16_c(Array1d_u16* arr) {
  _mergeSort_u16_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_i16_c(i16* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i16* L = (i16*)malloc(n1 * sizeof(i16));
    i16* R = (i16*)malloc(n2 * sizeof(i16));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_i16_c(i16* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_i16_c(arr, l, m);
  _mergeSort_i16_c(arr, m + 1, r);
  merge_i16_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_i16* mergeSort_i16_c(Array1d_i16* arr) {
  _mergeSort_i16_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_u8_c(u8* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u8* L = (u8*)malloc(n1 * sizeof(u8));
    u8* R = (u8*)malloc(n2 * sizeof(u8));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_u8_c(u8* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_u8_c(arr, l, m);
  _mergeSort_u8_c(arr, m + 1, r);
  merge_u8_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_u8* mergeSort_u8_c(Array1d_u8* arr) {
  _mergeSort_u8_c(arr->items, 0, arr->length - 1);
  return arr;
}

void merge_i8_c(i8* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i8* L = (i8*)malloc(n1 * sizeof(i8));
    i8* R = (i8*)malloc(n2 * sizeof(i8));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_i8_c(i8* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_i8_c(arr, l, m);
  _mergeSort_i8_c(arr, m + 1, r);
  merge_i8_c(arr, l, m, r);
}
EMSCRIPTEN_KEEPALIVE
Array1d_i8* mergeSort_i8_c(Array1d_i8* arr) {
  _mergeSort_i8_c(arr->items, 0, arr->length - 1);
  return arr;
}

int getPivotIndex_u64_c(u64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u64_c(array, i, swapIndex);
        }
    }
    swapTwo_u64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i64_c(i64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i64_c(array, i, swapIndex);
        }
    }
    swapTwo_i64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_f64_c(f64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_f64_c(array, i, swapIndex);
        }
    }
    swapTwo_f64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_f32_c(f32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_f32_c(array, i, swapIndex);
        }
    }
    swapTwo_f32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_u32_c(u32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u32_c(array, i, swapIndex);
        }
    }
    swapTwo_u32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i32_c(i32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i32_c(array, i, swapIndex);
        }
    }
    swapTwo_i32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_u16_c(u16* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u16_c(array, i, swapIndex);
        }
    }
    swapTwo_u16_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i16_c(i16* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i16_c(array, i, swapIndex);
        }
    }
    swapTwo_i16_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_u8_c(u8* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u8_c(array, i, swapIndex);
        }
    }
    swapTwo_u8_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i8_c(i8* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i8_c(array, i, swapIndex);
        }
    }
    swapTwo_i8_c(array, start, swapIndex);
    return swapIndex;
}

u64* _quickSort_u64_c(u64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u64_c(array, left, right);
        _quickSort_u64_c(array, left, pivotIndex - 1);
        _quickSort_u64_c(array, pivotIndex + 1, right);
    }
    return array;
}
i64* _quickSort_i64_c(i64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i64_c(array, left, right);
        getPivotIndex_i64_c(array, left, pivotIndex - 1);
        getPivotIndex_i64_c(array, pivotIndex + 1, right);
    }
    return array;
}
f64* _quickSort_f64_c(f64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_f64_c(array, left, right);
        getPivotIndex_f64_c(array, left, pivotIndex - 1);
        getPivotIndex_f64_c(array, pivotIndex + 1, right);
    }
    return array;
}
f32* _quickSort_f32_c(f32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_f32_c(array, left, right);
        getPivotIndex_f32_c(array, left, pivotIndex - 1);
        getPivotIndex_f32_c(array, pivotIndex + 1, right);
    }
    return array;
}
u32* _quickSort_u32_c(u32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u32_c(array, left, right);
        getPivotIndex_u32_c(array, left, pivotIndex - 1);
        getPivotIndex_u32_c(array, pivotIndex + 1, right);
    }
    return array;
}
i32* _quickSort_i32_c(i32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i32_c(array, left, right);
        getPivotIndex_i32_c(array, left, pivotIndex - 1);
        getPivotIndex_i32_c(array, pivotIndex + 1, right);
    }
    return array;
}
u16* _quickSort_u16_c(u16* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u16_c(array, left, right);
        getPivotIndex_u16_c(array, left, pivotIndex - 1);
        getPivotIndex_u16_c(array, pivotIndex + 1, right);
    }
    return array;
}
i16* _quickSort_i16_c(i16* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i16_c(array, left, right);
        getPivotIndex_i16_c(array, left, pivotIndex - 1);
        getPivotIndex_i16_c(array, pivotIndex + 1, right);
    }
    return array;
}
u8* _quickSort_u8_c(u8* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u8_c(array, left, right);
        getPivotIndex_u8_c(array, left, pivotIndex - 1);
        getPivotIndex_u8_c(array, pivotIndex + 1, right);
    }
    return array;
}
i8* _quickSort_i8_c(i8* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i8_c(array, left, right);
        getPivotIndex_i8_c(array, left, pivotIndex - 1);
        getPivotIndex_i8_c(array, pivotIndex + 1, right);
    }
    return array;
}

EMSCRIPTEN_KEEPALIVE
Array1d_u64* quickSort_u64_c(Array1d_u64* array) {
    _quickSort_u64_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i64* quickSort_i64_c(Array1d_i64* array) {
    _quickSort_i64_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f64* quickSort_f64_c(Array1d_f64* array) {
    _quickSort_f64_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f32* quickSort_f32_c(Array1d_f32* array) {
    _quickSort_f32_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u32* quickSort_u32_c(Array1d_u32* array) {
    _quickSort_u32_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i32* quickSort_i32_c(Array1d_i32* array) {
    _quickSort_i32_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u16* quickSort_u16_c(Array1d_u16* array) {
    _quickSort_u16_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i16* quickSort_i16_c(Array1d_i16* array) {
    _quickSort_i16_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u8* quickSort_u8_c(Array1d_u8* array) {
    _quickSort_u8_c(array->items, 0, array->length - 1);
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i8* quickSort_i8_c(Array1d_i8* array) {
    _quickSort_i8_c(array->items, 0, array->length - 1);
    return array;
}

EMSCRIPTEN_KEEPALIVE
Array1d_u64* selectionSort_u64_c(Array1d_u64* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u64_c(array->items, min, i);
            }
        }
    } 
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i64* selectionSort_i64_c(Array1d_i64* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i64_c(array->items, min, i);
            }
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f64* selectionSort_f64_c(Array1d_f64* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_f64_c(array->items, min, i);
            }
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f32* selectionSort_f32_c(Array1d_f32* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_f32_c(array->items, min, i);
            }
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u32* selectionSort_u32_c(Array1d_u32* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u32_c(array->items, min, i);
            }
        }
    } 
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i32* selectionSort_i32_c(Array1d_i32* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i32_c(array->items, min, i);
            }
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u16* selectionSort_u16_c(Array1d_u16* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u16_c(array->items, min, i);
            }
        }
    } 
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i16* selectionSort_i16_c(Array1d_i16* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i16_c(array->items, min, i);
            }
        }
    }
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u8* selectionSort_u8_c(Array1d_u8* array) {
    int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_u8_c(array->items, min, i);
            }
        }
    } 
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i8* selectionSort_i8_c(Array1d_i8* array) {
   int min;
    for (int i = 0; i < array->length; i++) {
        min = i;
        for (int j = i + 1; j < array->length; j++) {
            if (array->items[j] < array->items[min]) {
                min = j;
            }
            if (min != i) {
                sortTwo_i8_c(array->items, min, i);
            }
        }
    }
    return array;
}
