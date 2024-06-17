#include <stdlib.h>
#include <emscripten.h>
#include "matrix/matrix-addition/matrix-addition.h";
#include "shared/shared.h"

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
