#include <math.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
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

EMSCRIPTEN_KEEPALIVE
Array1d_u64* makeArray1d_u64_c(int length) {
    u64* items = (u64*)malloc(length * sizeof(u64));
    Array1d_u64* array = (Array1d_u64*)malloc(sizeof(Array1d_u64));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i64* makeArray1d_i64_c(int length) {
    i64* items = (i64*)malloc(length * sizeof(i64));
    Array1d_i64* array = (Array1d_i64*)malloc(sizeof(Array1d_i64));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f64* makeArray1d_f64_c(int length) {
    f64* items = (f64*)malloc(length * sizeof(f64));
    Array1d_f64* array = (Array1d_f64*)malloc(sizeof(Array1d_f64));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_f32* makeArray1d_f32_c(int length) {
    f32* items = (f32*)malloc(length * sizeof(f32));
    Array1d_f32* array = (Array1d_f32*)malloc(sizeof(Array1d_f32));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u32* makeArray1d_u32_c(int length) {
    u32* items = (u32*)malloc(length * sizeof(u32));
    Array1d_u32* array = (Array1d_u32*)malloc(sizeof(Array1d_u32));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i32* makeArray1d_i32_c(int length) {
    i32* items = (i32*)malloc(length * sizeof(i32));
    Array1d_i32* array = (Array1d_i32*)malloc(sizeof(Array1d_i32));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u16* makeArray1d_u16_c(int length) {
    u16* items = (u16*)malloc(length * sizeof(u16));
    Array1d_u16* array = (Array1d_u16*)malloc(sizeof(Array1d_u16));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i16* makeArray1d_i16_c(int length) {
    i16* items = (i16*)malloc(length * sizeof(i16));
    Array1d_i16* array = (Array1d_i16*)malloc(sizeof(Array1d_i16));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_u8* makeArray1d_u8_c(int length) {
    u8* items = (u8*)malloc(length * sizeof(u8));
    Array1d_u8* array = (Array1d_u8*)malloc(sizeof(Array1d_u8));
    array->items = items;
    array->length = length;
    return array;
}
EMSCRIPTEN_KEEPALIVE
Array1d_i8* makeArray1d_i8_c(int length) {
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
void deleteArray1d_u64_c(Array1d_u64* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i64_c(Array1d_i64* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_f64_c(Array1d_f64* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_f32_c(Array1d_f32* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_u32_c(Array1d_u32* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i32_c(Array1d_i32* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_u16_c(Array1d_u16* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i16_c(Array1d_i16* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_u8_c(Array1d_u8* array) {
    free(array->items);
    free(array);
}
EMSCRIPTEN_KEEPALIVE
void deleteArray1d_i8_c(Array1d_i8* array) {
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

EMSCRIPTEN_KEEPALIVE
Matrix_u64* makeMatrix_u64_c(int height, int width) {
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
Matrix_i64* makeMatrix_i64_c(int height, int width) {
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
Matrix_f64* makeMatrix_f64_c(int height, int width) {
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
Matrix_f32* makeMatrix_f32_c(int height, int width) {
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
Matrix_u32* makeMatrix_u32_c(int height, int width) {
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
Matrix_i32* makeMatrix_i32_c(int height, int width) {
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
Matrix_u16* makeMatrix_u16_c(int height, int width) {
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
Matrix_i16* makeMatrix_i16_c(int height, int width) {
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
Matrix_u8* makeMatrix_u8_c(int height, int width) {
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
Matrix_i8* makeMatrix_i8_c(int height, int width) {
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
void deleteMatrix_u64_c(Matrix_u64* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_i64_c(Matrix_i64* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_f64_c(Matrix_f64* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_f32_c(Matrix_f32* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_u32_c(Matrix_u32* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_i32_c(Matrix_i32* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_u16_c(Matrix_u16* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_i16_c(Matrix_i16* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_u8_c(Matrix_u8* matrix) {
    for (int h = 0; h < matrix->height; h++) {
        free(matrix->data[h]);
    }
    free(matrix->data);
    free(matrix);
}
EMSCRIPTEN_KEEPALIVE
void deleteMatrix_i8_c(Matrix_i8* matrix) {
    for (int h = 0; h < matrix->height; h++) {
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
    return sum / ((u64)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
i64 average_i64_c(Array1d_i64* array) {
    i64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i64 item = array->items[i];
        sum += item;
    }
    return sum / ((i64)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
f64 average_f64_c(Array1d_f64* array) {
    f64 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        f64 item = array->items[i];
        sum += item;
    }
    return sum / ((f64)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
f32 average_f32_c(Array1d_f32* array) {
    f32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        f32 item = array->items[i];
        sum += item;
    }
    return sum / ((f32)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
u32 average_u32_c(Array1d_u32* array) {
    u32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u32 item = array->items[i];
        sum += item;
    }
    return sum / ((u32)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
i32 average_i32_c(Array1d_i32* array) {
    i32 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i32 item = array->items[i];
        sum += item;
    }
    return sum / ((i32)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
u16 average_u16_c(Array1d_u16* array) {
    u16 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u16 item = array->items[i];
        sum += item;
    }
    return sum / ((u16)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
i16 average_i16_c(Array1d_i16* array) {
    i16 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i16 item = array->items[i];
        sum += item;
    }
    return sum / ((i16)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
u8 average_u8_c(Array1d_u8* array) {
    u8 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        u8 item = array->items[i];
        sum += item;
    }
    return sum / ((u8)array->length + 1);
}
EMSCRIPTEN_KEEPALIVE
i8 average_i8_c(Array1d_i8* array) {
    i8 sum = array->items[0];
    for (int i = 1; i < array->length; i++) {
        i8 item = array->items[i];
        sum += item;
    }
    return sum / ((i8)array->length + 1);
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
    Matrix_u64* newMatrix = makeMatrix_u64_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i64* matrixAddition_i64_c(Matrix_i64* matrixA, Matrix_i64* matrixB) {
    Matrix_i64* newMatrix = makeMatrix_i64_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f64* matrixAddition_f64_c(Matrix_f64* matrixA, Matrix_f64* matrixB) {
    Matrix_f64* newMatrix = makeMatrix_f64_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f32* matrixAddition_f32_c(Matrix_f32* matrixA, Matrix_f32* matrixB) {
    Matrix_f32* newMatrix = makeMatrix_f32_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u32* matrixAddition_u32_c(Matrix_u32* matrixA, Matrix_u32* matrixB) {
    Matrix_u32* newMatrix = makeMatrix_u32_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i32* matrixAddition_i32_c(Matrix_i32* matrixA, Matrix_i32* matrixB) {
    Matrix_i32* newMatrix = makeMatrix_i32_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u16* matrixAddition_u16_c(Matrix_u16* matrixA, Matrix_u16* matrixB) {
    Matrix_u16* newMatrix = makeMatrix_u16_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i16* matrixAddition_i16_c(Matrix_i16* matrixA, Matrix_i16* matrixB) {
    Matrix_i16* newMatrix = makeMatrix_i16_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u8* matrixAddition_u8_c(Matrix_u8* matrixA, Matrix_u8* matrixB) {
    Matrix_u8* newMatrix = makeMatrix_u8_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i8* matrixAddition_i8_c(Matrix_i8* matrixA, Matrix_i8* matrixB) {
    Matrix_i8* newMatrix = makeMatrix_i8_c(matrixA->height, matrixA->width);
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
    Matrix_u64* c = makeMatrix_u64_c(n, p);
    
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
    Matrix_i64* c = makeMatrix_i64_c(n, p);
    
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
    Matrix_f64* c = makeMatrix_f64_c(n, p);
    
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
    Matrix_f32* c = makeMatrix_f32_c(n, p);
    
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
    Matrix_u32* c = makeMatrix_u32_c(n, p);
    
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
    Matrix_i32* c = makeMatrix_i32_c(n, p);
    
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
    Matrix_u16* c = makeMatrix_u16_c(n, p);
    
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
    Matrix_i16* c = makeMatrix_i16_c(n, p);
    
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
    Matrix_u8* c = makeMatrix_u8_c(n, p);
    
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
    Matrix_i8* c = makeMatrix_i8_c(n, p);
    
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
    Matrix_u64* newMatrix = makeMatrix_u64_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i64* matrixSubtraction_i64_c(Matrix_i64* matrixA, Matrix_i64* matrixB) {
    Matrix_i64* newMatrix = makeMatrix_i64_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f64* matrixSubtraction_f64_c(Matrix_f64* matrixA, Matrix_f64* matrixB) {
    Matrix_f64* newMatrix = makeMatrix_f64_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_f32* matrixSubtraction_f32_c(Matrix_f32* matrixA, Matrix_f32* matrixB) {
    Matrix_f32* newMatrix = makeMatrix_f32_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u32* matrixSubtraction_u32_c(Matrix_u32* matrixA, Matrix_u32* matrixB) {
    Matrix_u32* newMatrix = makeMatrix_u32_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i32* matrixSubtraction_i32_c(Matrix_i32* matrixA, Matrix_i32* matrixB) {
    Matrix_i32* newMatrix = makeMatrix_i32_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u16* matrixSubtraction_u16_c(Matrix_u16* matrixA, Matrix_u16* matrixB) {
    Matrix_u16* newMatrix = makeMatrix_u16_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i16* matrixSubtraction_i16_c(Matrix_i16* matrixA, Matrix_i16* matrixB) {
    Matrix_i16* newMatrix = makeMatrix_i16_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_u8* matrixSubtraction_u8_c(Matrix_u8* matrixA, Matrix_u8* matrixB) {
    Matrix_u8* newMatrix = makeMatrix_u8_c(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
EMSCRIPTEN_KEEPALIVE
Matrix_i8* matrixSubtraction_i8_c(Matrix_i8* matrixA, Matrix_i8* matrixB) {
    Matrix_i8* newMatrix = makeMatrix_i8_c(matrixA->height, matrixA->width);
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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
    while(r >= l) {
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

boolean array1d_includes_i32_c(Array1d_i32* array, i32 target) {
    for (int i = 0; i < array->length; i++) {
        if (array->items[i] == target) {
            return 1;
        }
    }
    return 0;
}

typedef struct Array2d_u64 {
    Array1d_u64** items;
    int length;
} Array2d_u64;
typedef struct Array2d_i64 {
    Array1d_i64** items;
    int length;
} Array2d_i64;
typedef struct Array2d_f64 {
    Array1d_f64** items;
    int length;
} Array2d_f64;
typedef struct Array2d_f32 {
    Array1d_f32** items;
    int length;
} Array2d_f32;
typedef struct Array2d_u32 {
    Array1d_u32** items;
    int length;
} Array2d_u32;
typedef struct Array2d_i32 {
    Array1d_i32** items;
    int length;
} Array2d_i32;
typedef struct Array2d_u16 {
    Array1d_u16** items;
    int length;
} Array2d_u16;
typedef struct Array2d_i16 {
    Array1d_i16** items;
    int length;
} Array2d_i16;
typedef struct Array2d_u8 {
    Array1d_u8** items;
    int length;
} Array2d_u8;
typedef struct Array2d_i8 {
    Array1d_i8** items;
    int length;
} Array2d_i8;

typedef struct Array3d_u64 {
    Array2d_u64** items;
    int length;
} Array3d_u64;
typedef struct Array3d_i64 {
    Array2d_i64** items;
    int length;
} Array3d_i64;
typedef struct Array3d_f64 {
    Array2d_f64** items;
    int length;
} Array3d_f64;
typedef struct Array3d_f32 {
    Array2d_f32** items;
    int length;
} Array3d_f32;
typedef struct Array3d_u32 {
    Array2d_u32** items;
    int length;
} Array3d_u32;
typedef struct Array3d_i32 {
    Array2d_i32** items;
    int length;
} Array3d_i32;
typedef struct Array3d_u16 {
    Array2d_u16** items;
    int length;
} Array3d_u16;
typedef struct Array3d_i16 {
    Array2d_i16** items;
    int length;
} Array3d_i16;
typedef struct Array3d_u8 {
    Array2d_u8** items;
    int length;
} Array3d_u8;
typedef struct Array3d_i8 {
    Array2d_i8** items;
    int length;
} Array3d_i8;

Array2d_u64* makeArray2d_u64_c(int length) {
    Array1d_u64** items = (Array1d_u64**)malloc(length * sizeof(Array1d_u64*));
    Array2d_u64* array2d = (Array2d_u64*)malloc(sizeof(Array2d_u64));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i64* makeArray2d_i64_c(int length) {
    Array1d_i64** items = (Array1d_i64**)malloc(length * sizeof(Array1d_i64*));
    Array2d_i64* array2d = (Array2d_i64*)malloc(sizeof(Array2d_i64));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_f64* makeArray2d_f64_c(int length) {
    Array1d_f64** items = (Array1d_f64**)malloc(length * sizeof(Array1d_f64*));
    Array2d_f64* array2d = (Array2d_f64*)malloc(sizeof(Array2d_f64));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_f32* makeArray2d_f32_c(int length) {
    Array1d_f32** items = (Array1d_f32**)malloc(length * sizeof(Array1d_f32*));
    Array2d_f32* array2d = (Array2d_f32*)malloc(sizeof(Array2d_f32));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_u32* makeArray2d_u32_c(int length) {
    Array1d_u32** items = (Array1d_u32**)malloc(length * sizeof(Array1d_u32*));
    Array2d_u32* array2d = (Array2d_u32*)malloc(sizeof(Array2d_u32));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i32* makeArray2d_i32_c(int length) {
    Array1d_i32** items = (Array1d_i32**)malloc(length * sizeof(Array1d_i32*));
    Array2d_i32* array2d = (Array2d_i32*)malloc(sizeof(Array2d_i32));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_u16* makeArray2d_u16_c(int length) {
    Array1d_u16** items = (Array1d_u16**)malloc(length * sizeof(Array1d_u16*));
    Array2d_u16* array2d = (Array2d_u16*)malloc(sizeof(Array2d_u16));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i16* makeArray2d_i16_c(int length) {
    Array1d_i16** items = (Array1d_i16**)malloc(length * sizeof(Array1d_i16*));
    Array2d_i16* array2d = (Array2d_i16*)malloc(sizeof(Array2d_i16));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_u8* makeArray2d_u8_c(int length) {
    Array1d_u8** items = (Array1d_u8**)malloc(length * sizeof(Array1d_u8*));
    Array2d_u8* array2d = (Array2d_u8*)malloc(sizeof(Array2d_u8));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i8* makeArray2d_i8_c(int length) {
    Array1d_i8** items = (Array1d_i8**)malloc(length * sizeof(Array1d_i8*));
    Array2d_i8* array2d = (Array2d_i8*)malloc(sizeof(Array2d_i8));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}

EMSCRIPTEN_KEEPALIVE
Array2d_u64* makePoints_u64_c(int pointAmount) {
    Array2d_u64* points = makeArray2d_u64_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u64_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_i64* makePoints_i64_c(int pointAmount) {
    Array2d_i64* points = makeArray2d_i64_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i64_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_f64* makePoints_f64_c(int pointAmount) {
    Array2d_f64* points = makeArray2d_f64_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_f64_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_f32* makePoints_f32_c(int pointAmount) {
    Array2d_f32* points = makeArray2d_f32_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_f32_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_u32* makePoints_u32_c(int pointAmount) {
    Array2d_u32* points = makeArray2d_u32_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u32_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_i32* makePoints_i32_c(int pointAmount) {
    Array2d_i32* points = makeArray2d_i32_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i32_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_u16* makePoints_u16_c(int pointAmount) {
    Array2d_u16* points = makeArray2d_u16_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u16_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_i16* makePoints_i16_c(int pointAmount) {
    Array2d_i16* points = makeArray2d_i16_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i16_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_u8* makePoints_u8_c(int pointAmount) {
    Array2d_u8* points = makeArray2d_u8_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u8_c(pointSize);
    }
    return points;
}
EMSCRIPTEN_KEEPALIVE
Array2d_i8* makePoints_i8_c(int pointAmount) {
    Array2d_i8* points = makeArray2d_i8_c(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i8_c(pointSize);
    }
    return points;
}

EMSCRIPTEN_KEEPALIVE
void setPoint_u64_c(Array2d_u64* points, int pointIndex, u64 point0, u64 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_i64_c(Array2d_i64* points, int pointIndex, i64 point0, i64 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_f64_c(Array2d_f64* points, int pointIndex, f64 point0, f64 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_f32_c(Array2d_f32* points, int pointIndex, f32 point0, f32 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_u32_c(Array2d_u32* points, int pointIndex, u32 point0, u32 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_i32_c(Array2d_i32* points, int pointIndex, i32 point0, i32 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_u16_c(Array2d_u16* points, int pointIndex, u16 point0, u16 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_i16_c(Array2d_i16* points, int pointIndex, i16 point0, i16 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_u8_c(Array2d_u8* points, int pointIndex, u8 point0, u8 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
EMSCRIPTEN_KEEPALIVE
void setPoint_i8_c(Array2d_i8* points, int pointIndex, i8 point0, i8 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}

void deleteArray2d_u64_c(Array2d_u64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u64_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i64_c(Array2d_i64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i64_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_f64_c(Array2d_f64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_f64_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_f32_c(Array2d_f32* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_f32_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_u32_c(Array2d_u32* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u32_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i32_c(Array2d_i32* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i32_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_u16_c(Array2d_u16* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u16_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i16_c(Array2d_i16* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i16_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_u8_c(Array2d_u8* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u8_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i8_c(Array2d_i8* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i8_c(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}

void shallowDeleteArray2d_u64_c(Array2d_u64* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i64_c(Array2d_i64* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_f64_c(Array2d_f64* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_f32_c(Array2d_f32* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_u32_c(Array2d_u32* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i32_c(Array2d_i32* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_u16_c(Array2d_u16* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i16_c(Array2d_i16* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_u8_c(Array2d_u8* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i8_c(Array2d_i8* array2d) {
    free(array2d->items);
    free(array2d);
}

Array3d_u64* makeArray3d_u64_c(int length) {
    Array2d_u64** items = (Array2d_u64**)malloc(length * sizeof(Array2d_u64*));
    Array3d_u64* array3d = (Array3d_u64*)malloc(sizeof(Array3d_u64));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i64* makeArray3d_i64_c(int length) {
    Array2d_i64** items = (Array2d_i64**)malloc(length * sizeof(Array2d_i64*));
    Array3d_i64* array3d = (Array3d_i64*)malloc(sizeof(Array3d_i64));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_f64* makeArray3d_f64_c(int length) {
    Array2d_f64** items = (Array2d_f64**)malloc(length * sizeof(Array2d_f64*));
    Array3d_f64* array3d = (Array3d_f64*)malloc(sizeof(Array3d_f64));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_f32* makeArray3d_f32_c(int length) {
    Array2d_f32** items = (Array2d_f32**)malloc(length * sizeof(Array2d_f32*));
    Array3d_f32* array3d = (Array3d_f32*)malloc(sizeof(Array3d_f32));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_u32* makeArray3d_u32_c(int length) {
    Array2d_u32** items = (Array2d_u32**)malloc(length * sizeof(Array2d_u32*));
    Array3d_u32* array3d = (Array3d_u32*)malloc(sizeof(Array3d_u32));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i32* makeArray3d_i32_c(int length) {
    Array2d_i32** items = (Array2d_i32**)malloc(length * sizeof(Array2d_i32*));
    Array3d_i32* array3d = (Array3d_i32*)malloc(sizeof(Array3d_i32));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_u16* makeArray3d_u16_c(int length) {
    Array2d_u16** items = (Array2d_u16**)malloc(length * sizeof(Array2d_u16*));
    Array3d_u16* array3d = (Array3d_u16*)malloc(sizeof(Array3d_u16));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i16* makeArray3d_i16_c(int length) {
    Array2d_i16** items = (Array2d_i16**)malloc(length * sizeof(Array2d_i16*));
    Array3d_i16* array3d = (Array3d_i16*)malloc(sizeof(Array3d_i16));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_u8* makeArray3d_u8_c(int length) {
    Array2d_u8** items = (Array2d_u8**)malloc(length * sizeof(Array2d_u8*));
    Array3d_u8* array3d = (Array3d_u8*)malloc(sizeof(Array3d_u8));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i8* makeArray3d_i8_c(int length) {
    Array2d_i8** items = (Array2d_i8**)malloc(length * sizeof(Array2d_i8*));
    Array3d_i8* array3d = (Array3d_i8*)malloc(sizeof(Array3d_i8));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}

void deleteArray3d_u64_c(Array3d_u64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u64_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i64_c(Array3d_i64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i64_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_f64_c(Array3d_f64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_f64_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_f32_c(Array3d_f32* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_f32_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_u32_c(Array3d_u32* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u32_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i32_c(Array3d_i32* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i32_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_u16_c(Array3d_u16* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u16_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i16_c(Array3d_i16* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i16_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_u8_c(Array3d_u8* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u8_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i8_c(Array3d_i8* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i8_c(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}

void shallowDeleteArray3d_u64_c(Array3d_u64* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i64_c(Array3d_i64* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_f64_c(Array3d_f64* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_f32_c(Array3d_f32* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_u32_c(Array3d_u32* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i32_c(Array3d_i32* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_u16_c(Array3d_u16* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i16_c(Array3d_i16* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_u8_c(Array3d_u8* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i8_c(Array3d_i8* array3d) {
    free(array3d->items);
    free(array3d);
}

Array1d_u64* copyArray1d_u64_c(Array1d_u64* array1d) {
    Array1d_u64* copied = makeArray1d_u64_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i64* copyArray1d_i64_c(Array1d_i64* array1d) {
    Array1d_i64* copied = makeArray1d_i64_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_f64* copyArray1d_f64_c(Array1d_f64* array1d) {
    Array1d_f64* copied = makeArray1d_f64_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_f32* copyArray1d_f32_c(Array1d_f32* array1d) {
    Array1d_f32* copied = makeArray1d_f32_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_u32* copyArray1d_u32_c(Array1d_u32* array1d) {
    Array1d_u32* copied = makeArray1d_u32_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i32* copyArray1d_i32_c(Array1d_i32* array1d) {
    Array1d_i32* copied = makeArray1d_i32_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_u16* copyArray1d_u16_c(Array1d_u16* array1d) {
    Array1d_u16* copied = makeArray1d_u16_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i16* copyArray1d_i16_c(Array1d_i16* array1d) {
    Array1d_i16* copied = makeArray1d_i16_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_u8* copyArray1d_u8_c(Array1d_u8* array1d) {
    Array1d_u8* copied = makeArray1d_u8_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i8* copyArray1d_i8_c(Array1d_i8* array1d) {
    Array1d_i8* copied = makeArray1d_i8_c(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}

u64 calcDistance_u64_c(Array1d_u64* point0, Array1d_u64* point1) {
    u64 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i64 calcDistance_i64_c(Array1d_i64* point0, Array1d_i64* point1) {
    i64 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
f64 calcDistance_f64_c(Array1d_f64* point0, Array1d_f64* point1) {
    f64 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
f32 calcDistance_f32_c(Array1d_f32* point0, Array1d_f32* point1) {
    f32 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
u32 calcDistance_u32_c(Array1d_u32* point0, Array1d_u32* point1) {
    u32 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i32 calcDistance_i32_c(Array1d_i32* point0, Array1d_i32* point1) {
    i32 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
u16 calcDistance_u16_c(Array1d_u16* point0, Array1d_u16* point1) {
    u16 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i16 calcDistance_i16_c(Array1d_i16* point0, Array1d_i16* point1) {
    i16 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
u8 calcDistance_u8_c(Array1d_u8* point0, Array1d_u8* point1) {
    u8 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i8 calcDistance_i8_c(Array1d_i8* point0, Array1d_i8* point1) {
    i8 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}

Array1d_u64* calcCentroid_u64_c(Array2d_u64* cluster, int dimensionInPoint) {
    Array1d_u64* meanPerDimension = makeArray1d_u64_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        u64 mean = sum / (u64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i64* calcCentroid_i64_c(Array2d_i64* cluster, int dimensionInPoint) {
    Array1d_i64* meanPerDimension = makeArray1d_i64_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        i64 mean = sum / (i64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_f64* calcCentroid_f64_c(Array2d_f64* cluster, int dimensionInPoint) {
    Array1d_f64* meanPerDimension = makeArray1d_f64_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        f64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        f64 mean = sum / (f64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_f32* calcCentroid_f32_c(Array2d_f32* cluster, int dimensionInPoint) {
    Array1d_f32* meanPerDimension = makeArray1d_f32_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        f32 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        f32 mean = sum / (f32)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_u32* calcCentroid_u32_c(Array2d_u32* cluster, int dimensionInPoint) {
    Array1d_u32* meanPerDimension = makeArray1d_u32_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u32 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        u32 mean = sum / (u32)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i32* calcCentroid_i32_c(Array2d_i32* cluster, int dimensionInPoint) {
    Array1d_i32* meanPerDimension = makeArray1d_i32_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i32 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        
        i32 mean = sum / (i32)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_u16* calcCentroid_u16_c(Array2d_u16* cluster, int dimensionInPoint) {
    Array1d_u16* meanPerDimension = makeArray1d_u16_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u16 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        
        u16 clusterLength = (u16)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        u16 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i16* calcCentroid_i16_c(Array2d_i16* cluster, int dimensionInPoint) {
    Array1d_i16* meanPerDimension = makeArray1d_i16_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i16 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }

        i16 clusterLength = (i16)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        i16 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_u8* calcCentroid_u8_c(Array2d_u8* cluster, int dimensionInPoint) {
    Array1d_u8* meanPerDimension = makeArray1d_u8_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u8 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        
        u8 clusterLength = (u8)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        u8 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i8* calcCentroid_i8_c(Array2d_i8* cluster, int dimensionInPoint) {
    Array1d_i8* meanPerDimension = makeArray1d_i8_c(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i8 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }

        i8 clusterLength = (i8)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        i8 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}

int calcArgMin_u64_c(Array1d_u64* distances) {
    int indexOfSmallestValue = 0;
    u64 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u64 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i64_c(Array1d_i64* distances) {
    int indexOfSmallestValue = 0;
    i64 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i64 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_f64_c(Array1d_f64* distances) {
    int indexOfSmallestValue = 0;
    f64 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        f64 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_f32_c(Array1d_f32* distances) {
    int indexOfSmallestValue = 0;
    f32 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        f32 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_u32_c(Array1d_u32* distances) {
    int indexOfSmallestValue = 0;
    u32 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u32 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i32_c(Array1d_i32* distances) {
    int indexOfSmallestValue = 0;
    i32 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i32 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_u16_c(Array1d_u16* distances) {
    int indexOfSmallestValue = 0;
    u16 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u16 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i16_c(Array1d_i16* distances) {
    int indexOfSmallestValue = 0;
    i16 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i16 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_u8_c(Array1d_u8* distances) {
    int indexOfSmallestValue = 0;
    u8 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u8 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i8_c(Array1d_i8* distances) {
    int indexOfSmallestValue = 0;
    i8 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i8 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}

boolean checkIfConverged_u64_c(Array2d_u64* oldCentroids, Array2d_u64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u64 *oldCentroid = oldCentroids->items[i];
        Array1d_u64 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i64_c(Array2d_i64* oldCentroids, Array2d_i64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i64 *oldCentroid = oldCentroids->items[i];
        Array1d_i64 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_f64_c(Array2d_f64* oldCentroids, Array2d_f64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_f64 *oldCentroid = oldCentroids->items[i];
        Array1d_f64 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_f32_c(Array2d_f32* oldCentroids, Array2d_f32* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_f32 *oldCentroid = oldCentroids->items[i];
        Array1d_f32 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_u32_c(Array2d_u32* oldCentroids, Array2d_u32* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u32 *oldCentroid = oldCentroids->items[i];
        Array1d_u32 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i32_c(Array2d_i32* oldCentroids, Array2d_i32* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i32 *oldCentroid = oldCentroids->items[i];
        Array1d_i32 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_u16_c(Array2d_u16* oldCentroids, Array2d_u16* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u16 *oldCentroid = oldCentroids->items[i];
        Array1d_u16 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i16_c(Array2d_i16* oldCentroids, Array2d_i16* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i16 *oldCentroid = oldCentroids->items[i];
        Array1d_i16 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_u8_c(Array2d_u8* oldCentroids, Array2d_u8* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u8 *oldCentroid = oldCentroids->items[i];
        Array1d_u8 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i8_c(Array2d_i8* oldCentroids, Array2d_i8* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i8 *oldCentroid = oldCentroids->items[i];
        Array1d_i8 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}

/*
Creates centriods
The points are copied not refernced.
*/
Array2d_u64* initCentroid_u64_c(int numberOfCluster, Array2d_u64* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u64* centroids = makeArray2d_u64_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u64* value = points->items[index];
        centroids->items[i] = copyArray1d_u64_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_i64* initCentroid_i64_c(int numberOfCluster, Array2d_i64* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i64* centroids = makeArray2d_i64_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i64* value = points->items[index];
        centroids->items[i] = copyArray1d_i64_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_f64* initCentroid_f64_c(int numberOfCluster, Array2d_f64* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_f64* centroids = makeArray2d_f64_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_f64* value = points->items[index];
        centroids->items[i] = copyArray1d_f64_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_f32* initCentroid_f32_c(int numberOfCluster, Array2d_f32* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_f32* centroids = makeArray2d_f32_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_f32* value = points->items[index];
        centroids->items[i] = copyArray1d_f32_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_u32* initCentroid_u32_c(int numberOfCluster, Array2d_u32* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u32* centroids = makeArray2d_u32_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u32* value = points->items[index];
        centroids->items[i] = copyArray1d_u32_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_i32* initCentroid_i32_c(int numberOfCluster, Array2d_i32* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i32* centroids = makeArray2d_i32_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i32* value = points->items[index];
        centroids->items[i] = copyArray1d_i32_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_u16* initCentroid_u16_c(int numberOfCluster, Array2d_u16* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u16* centroids = makeArray2d_u16_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u16* value = points->items[index];
        centroids->items[i] = copyArray1d_u16_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_i16* initCentroid_i16_c(int numberOfCluster, Array2d_i16* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i16* centroids = makeArray2d_i16_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i16* value = points->items[index];
        centroids->items[i] = copyArray1d_i16_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_u8* initCentroid_u8_c(int numberOfCluster, Array2d_u8* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u8* centroids = makeArray2d_u8_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u8* value = points->items[index];
        centroids->items[i] = copyArray1d_u8_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}
Array2d_i8* initCentroid_i8_c(int numberOfCluster, Array2d_i8* points) {
    Array1d_i32* randomIndices = makeArray1d_i32_c(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32_c(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i8* centroids = makeArray2d_i8_c(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i8* value = points->items[index];
        centroids->items[i] = copyArray1d_i8_c(value);
    }
    deleteArray1d_i32_c(randomIndices);
    return centroids;
}

Array1d_i32* calculteClusterAssignments_u64_c(Array2d_u64* points, Array2d_u64* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u64* point = points->items[i];
        Array1d_u64* distancesToEachCentroid = makeArray1d_u64_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u64* centroid = centroids->items[i];
            u64 distance = calcDistance_u64_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u64_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u64_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i64_c(Array2d_i64* points, Array2d_i64* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i64* point = points->items[i];
        Array1d_i64* distancesToEachCentroid = makeArray1d_i64_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i64* centroid = centroids->items[i];
            i64 distance = calcDistance_i64_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i64_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i64_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_f64_c(Array2d_f64* points, Array2d_f64* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_f64* point = points->items[i];
        Array1d_f64* distancesToEachCentroid = makeArray1d_f64_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_f64* centroid = centroids->items[i];
            f64 distance = calcDistance_f64_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_f64_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_f64_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_f32_c(Array2d_f32* points, Array2d_f32* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_f32* point = points->items[i];
        Array1d_f32* distancesToEachCentroid = makeArray1d_f32_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_f32* centroid = centroids->items[i];
            f32 distance = calcDistance_f32_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_f32_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_f32_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_u32_c(Array2d_u32* points, Array2d_u32* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u32* point = points->items[i];
        Array1d_u32* distancesToEachCentroid = makeArray1d_u32_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u32* centroid = centroids->items[i];
            u32 distance = calcDistance_u32_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u32_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u32_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i32_c(Array2d_i32* points, Array2d_i32* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i32* point = points->items[i];
        Array1d_i32* distancesToEachCentroid = makeArray1d_i32_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i32* centroid = centroids->items[i];
            i32 distance = calcDistance_i32_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i32_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i32_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_u16_c(Array2d_u16* points, Array2d_u16* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u16* point = points->items[i];
        Array1d_u16* distancesToEachCentroid = makeArray1d_u16_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u16* centroid = centroids->items[i];
            u16 distance = calcDistance_u16_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u16_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u16_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i16_c(Array2d_i16* points, Array2d_i16* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i16* point = points->items[i];
        Array1d_i16* distancesToEachCentroid = makeArray1d_i16_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i16* centroid = centroids->items[i];
            i16 distance = calcDistance_i16_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i16_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i16_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_u8_c(Array2d_u8* points, Array2d_u8* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u8* point = points->items[i];
        Array1d_u8* distancesToEachCentroid = makeArray1d_u8_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u8* centroid = centroids->items[i];
            u8 distance = calcDistance_u8_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u8_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u8_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i8_c(Array2d_i8* points, Array2d_i8* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32_c(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i8* point = points->items[i];
        Array1d_i8* distancesToEachCentroid = makeArray1d_i8_c(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i8* centroid = centroids->items[i];
            i8 distance = calcDistance_i8_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i8_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i8_c(distancesToEachCentroid);
    }
    return clusterAssignments;
}

Array1d_i32* calculateTotalPointPerCluster_u64_c(Array2d_u64* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i64_c(Array2d_i64* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_f64_c(Array2d_f64* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_f32_c(Array2d_f32* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_u32_c(Array2d_u32* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i32_c(Array2d_i32* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_u16_c(Array2d_u16* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i16_c(Array2d_i16* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_u8_c(Array2d_u8* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i8_c(Array2d_i8* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32_c(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}

Array3d_u64* assignPointsToCluster_u64_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u64* points) {
    Array3d_u64* clusters =  makeArray3d_u64_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u64* array2d = makeArray2d_u64_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u64* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_i64* assignPointsToCluster_i64_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i64* points) {
    Array3d_i64* clusters =  makeArray3d_i64_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i64* array2d = makeArray2d_i64_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i64* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_f64* assignPointsToCluster_f64_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_f64* points) {
    Array3d_f64* clusters =  makeArray3d_f64_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_f64* array2d = makeArray2d_f64_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_f64* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_f32* assignPointsToCluster_f32_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_f32* points) {
    Array3d_f32* clusters =  makeArray3d_f32_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_f32* array2d = makeArray2d_f32_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_f32* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_u32* assignPointsToCluster_u32_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u32* points) {
    Array3d_u32* clusters =  makeArray3d_u32_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u32* array2d = makeArray2d_u32_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u32* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_i32* assignPointsToCluster_i32_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i32* points) {
    Array3d_i32* clusters =  makeArray3d_i32_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i32* array2d = makeArray2d_i32_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i32* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_u16* assignPointsToCluster_u16_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u16* points) {
    Array3d_u16* clusters =  makeArray3d_u16_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u16* array2d = makeArray2d_u16_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u16* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_i16* assignPointsToCluster_i16_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i16* points) {
    Array3d_i16* clusters =  makeArray3d_i16_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i16* array2d = makeArray2d_i16_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i16* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_u8* assignPointsToCluster_u8_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u8* points) {
    Array3d_u8* clusters =  makeArray3d_u8_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u8* array2d = makeArray2d_u8_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u8* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}
Array3d_i8* assignPointsToCluster_i8_c( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i8* points) {
    Array3d_i8* clusters =  makeArray3d_i8_c(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i8* array2d = makeArray2d_i8_c(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32_c(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i8* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32_c(clustersPushIndex);
    return clusters;
}

Array2d_u64* calculateCentriods_u64_c(Array3d_u64* clusters,int dimensionsInPoint) {
    Array2d_u64* newCentroids = makeArray2d_u64_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u64* item = calcCentroid_u64_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i64* calculateCentriods_i64_c(Array3d_i64* clusters,int dimensionsInPoint) {
    Array2d_i64* newCentroids = makeArray2d_i64_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i64* item = calcCentroid_i64_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_f64* calculateCentriods_f64_c(Array3d_f64* clusters,int dimensionsInPoint) {
    Array2d_f64* newCentroids = makeArray2d_f64_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_f64* item = calcCentroid_f64_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_f32* calculateCentriods_f32_c(Array3d_f32* clusters,int dimensionsInPoint) {
    Array2d_f32* newCentroids = makeArray2d_f32_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_f32* item = calcCentroid_f32_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_u32* calculateCentriods_u32_c(Array3d_u32* clusters,int dimensionsInPoint) {
    Array2d_u32* newCentroids = makeArray2d_u32_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u32* item = calcCentroid_u32_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i32* calculateCentriods_i32_c(Array3d_i32* clusters,int dimensionsInPoint) {
    Array2d_i32* newCentroids = makeArray2d_i32_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i32* item = calcCentroid_i32_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_u16* calculateCentriods_u16_c(Array3d_u16* clusters,int dimensionsInPoint) {
    Array2d_u16* newCentroids = makeArray2d_u16_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u16* item = calcCentroid_u16_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i16* calculateCentriods_i16_c(Array3d_i16* clusters,int dimensionsInPoint) {
    Array2d_i16* newCentroids = makeArray2d_i16_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i16* item = calcCentroid_i16_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_u8* calculateCentriods_u8_c(Array3d_u8* clusters,int dimensionsInPoint) {
    Array2d_u8* newCentroids = makeArray2d_u8_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u8* item = calcCentroid_u8_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i8* calculateCentriods_i8_c(Array3d_i8* clusters,int dimensionsInPoint) {
    Array2d_i8* newCentroids = makeArray2d_i8_c(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i8* item = calcCentroid_i8_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}

Array3d_u64* kMean_u64_c(int numberOfCluster, Array2d_u64* points, int maxLoops, double tolerance) {
    Array2d_u64* centroids = initCentroid_u64_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u64* clusters = makeArray3d_u64_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u64_c(points,centroids);
        deleteArray2d_u64_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u64_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u64_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u64_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u64_c(clusters);
        }
        clusters= assignPointsToCluster_u64_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u64_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_u64_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u64_c(centroids);

    return clusters;
}
Array3d_i64* kMean_i64_c(int numberOfCluster, Array2d_i64* points, int maxLoops, double tolerance) {
    Array2d_i64* centroids = initCentroid_i64_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i64* clusters = makeArray3d_i64_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i64_c(points,centroids);
        deleteArray2d_i64_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i64_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i64_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i64_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i64_c(clusters);
        }
        clusters= assignPointsToCluster_i64_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i64_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_i64_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i64_c(centroids);

    return clusters;
}
Array3d_f64* kMean_f64_c(int numberOfCluster, Array2d_f64* points, int maxLoops, double tolerance) {
    Array2d_f64* centroids = initCentroid_f64_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_f64* clusters = makeArray3d_f64_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_f64_c(points,centroids);
        deleteArray2d_f64_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_f64_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_f64_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_f64_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_f64_c(clusters);
        }
        clusters= assignPointsToCluster_f64_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_f64_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_f64_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_f64_c(centroids);

    return clusters;
}
Array3d_f32* kMean_f32_c(int numberOfCluster, Array2d_f32* points, int maxLoops, double tolerance) {
    Array2d_f32* centroids = initCentroid_f32_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_f32* clusters = makeArray3d_f32_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_f32_c(points,centroids);
        deleteArray2d_f32_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_f32_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_f32_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_f32_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_f32_c(clusters);
        }
        clusters= assignPointsToCluster_f32_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_f32_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_f32_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_f32_c(centroids);

    return clusters;
}
Array3d_u32* kMean_u32_c(int numberOfCluster, Array2d_u32* points, int maxLoops, double tolerance) {
    Array2d_u32* centroids = initCentroid_u32_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u32* clusters = makeArray3d_u32_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u32_c(points,centroids);
        deleteArray2d_u32_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u32_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u32_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u32_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u32_c(clusters);
        }
        clusters= assignPointsToCluster_u32_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u32_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_u32_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u32_c(centroids);

    return clusters;
}
Array3d_i32* kMean_i32_c(int numberOfCluster, Array2d_i32* points, int maxLoops, double tolerance) {
    Array2d_i32* centroids = initCentroid_i32_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i32* clusters = makeArray3d_i32_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i32_c(points,centroids);
        deleteArray2d_i32_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i32_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i32_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i32_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i32_c(clusters);
        }
        clusters= assignPointsToCluster_i32_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i32_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_i32_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i32_c(centroids);

    return clusters;
}
Array3d_u16* kMean_u16_c(int numberOfCluster, Array2d_u16* points, int maxLoops, double tolerance) {
    Array2d_u16* centroids = initCentroid_u16_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u16* clusters = makeArray3d_u16_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u16_c(points,centroids);
        deleteArray2d_u16_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u16_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u16_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u16_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u16_c(clusters);
        }
        clusters= assignPointsToCluster_u16_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u16_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_u16_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u16_c(centroids);

    return clusters;
}
Array3d_i16* kMean_i16_c(int numberOfCluster, Array2d_i16* points, int maxLoops, double tolerance) {
    Array2d_i16* centroids = initCentroid_i16_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i16* clusters = makeArray3d_i16_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i16_c(points,centroids);
        deleteArray2d_i16_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i16_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i16_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i16_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i16_c(clusters);
        }
        clusters= assignPointsToCluster_i16_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i16_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_i16_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i16_c(centroids);

    return clusters;
}
Array3d_u8* kMean_u8_c(int numberOfCluster, Array2d_u8* points, int maxLoops, double tolerance) {
    Array2d_u8* centroids = initCentroid_u8_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u8* clusters = makeArray3d_u8_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u8_c(points,centroids);
        deleteArray2d_u8_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u8_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u8_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u8_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u8_c(clusters);
        }
        clusters= assignPointsToCluster_u8_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u8_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_u8_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u8_c(centroids);

    return clusters;
}
Array3d_i8* kMean_i8_c(int numberOfCluster, Array2d_i8* points, int maxLoops, double tolerance) {
    Array2d_i8* centroids = initCentroid_i8_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i8* clusters = makeArray3d_i8_c(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i8_c(points,centroids);
        deleteArray2d_i8_c(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i8_c(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i8_c clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i8_c(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i8_c(clusters);
        }
        clusters= assignPointsToCluster_i8_c(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i8_c(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32_c(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32_c(clusterAssignments);

        converged = checkIfConverged_i8_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i8_c(centroids);

    return clusters;
}
