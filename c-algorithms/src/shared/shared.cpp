#include "shared/shared.h"
#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
Array1d_u64* makeArray1d_u64(int length) {
    u64* items = (u64*)malloc(length * sizeof(u64));
    Array1d_u64* array = (Array1d_u64*)malloc(sizeof(Array1d_u64));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i64* makeArray1d_i64(int length) {
    i64* items = (i64*)malloc(length * sizeof(i64));
    Array1d_i64* array = (Array1d_i64*)malloc(sizeof(Array1d_i64));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f64* makeArray1d_f64(int length) {
    f64* items = (f64*)malloc(length * sizeof(f64));
    Array1d_f64* array = (Array1d_f64*)malloc(sizeof(Array1d_f64));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f32* makeArray1d_f32(int length) {
    f32* items = (f32*)malloc(length * sizeof(f32));
    Array1d_f32* array = (Array1d_f32*)malloc(sizeof(Array1d_f32));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u32* makeArray1d_u32(int length) {
    u32* items = (u32*)malloc(length * sizeof(u32));
    Array1d_u32* array = (Array1d_u32*)malloc(sizeof(Array1d_u32));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i32* makeArray1d_i32(int length) {
    i32* items = (i32*)malloc(length * sizeof(i32));
    Array1d_i32* array = (Array1d_i32*)malloc(sizeof(Array1d_i32));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u16* makeArray1d_u16(int length) {
    u16* items = (u16*)malloc(length * sizeof(u16));
    Array1d_u16* array = (Array1d_u16*)malloc(sizeof(Array1d_u16));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i16* makeArray1d_i16(int length) {
    i16* items = (i16*)malloc(length * sizeof(i16));
    Array1d_i16* array = (Array1d_i16*)malloc(sizeof(Array1d_i16));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u8* makeArray1d_u8(int length) {
    u8* items = (u8*)malloc(length * sizeof(u8));
    Array1d_u8* array = (Array1d_u8*)malloc(sizeof(Array1d_u8));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i8* makeArray1d_i8(int length) {
    i8* items = (i8*)malloc(length * sizeof(i8));
    Array1d_i8* array = (Array1d_i8*)malloc(sizeof(Array1d_i8));
    array->items = items;
    array->length = length;
    return array;
}

EMSCRIPTEN_KEEPALIVE
void setArray1d_u64_c(Array1d_u64* array, int index, u64 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_i64_c(Array1d_i64* array, int index, i64 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_f64_c(Array1d_f64* array, int index, f64 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_f32_c(Array1d_f32* array, int index, f32 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_u32_c(Array1d_u32* array, int index, u32 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_i32_c(Array1d_i32* array, int index, i32 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_u16_c(Array1d_u16* array, int index, u16 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_i16_c(Array1d_i16* array, int index, i16 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_u8_c(Array1d_u8* array, int index, u8 value) {
    array->items[index] = value;
}
EMSCRIPTEN_KEEPALIVE
void setArray1d_i8_c(Array1d_i8* array, int index, i8 value) {
    array->items[index] = value;
}

EMSCRIPTEN_KEEPALIVE
void deleteArray1d_u64(Array1d_u64* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i64(Array1d_i64* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_f64(Array1d_f64* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_f32_c(Array1d_f32* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_u32(Array1d_u32* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i32(Array1d_i32* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_u16(Array1d_u16* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i16(Array1d_i16* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_u8(Array1d_u8* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i8(Array1d_i8* array) {
    free(array->items);
    free(array);
}

EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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
EMSCRIPTEN_KEEPALIVE
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

EMSCRIPTEN_KEEPALIVE
void setMatrix_u64_c(Matrix_u64* matrix, int x, int y, u64 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_i64_c(Matrix_i64* matrix, int x, int y, i64 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_f64_c(Matrix_f64* matrix, int x, int y, f64 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_f32_c(Matrix_f32* matrix, int x, int y, f32 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_u32_c(Matrix_u32* matrix, int x, int y, u32 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_i32_c(Matrix_i32* matrix, int x, int y, i32 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_u16_c(Matrix_u16* matrix, int x, int y, u16 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_i16_c(Matrix_i16* matrix, int x, int y, i16 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_u8_c(Matrix_u8* matrix, int x, int y, u8 value) {
    matrix->data[y][x] = value;
}
EMSCRIPTEN_KEEPALIVE
void setMatrix_i8_c(Matrix_i8* matrix, int x, int y, i8 value) {
    matrix->data[y][x] = value;
}

EMSCRIPTEN_KEEPALIVE
void deleteMatrix_u64(Matrix_u64* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_i64(Matrix_i64* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_f64(Matrix_f64* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_f32(Matrix_f32* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_u32(Matrix_u32* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_i32(Matrix_i32* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_u16(Matrix_u16* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_i16(Matrix_i16* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_u8(Matrix_u8* matrix) {
    for (int h = 0; h < matrix->width; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
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
