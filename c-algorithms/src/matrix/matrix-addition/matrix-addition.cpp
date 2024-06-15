#include <stdlib.h>
#include "matrix/matrix-addition/matrix-addition.h";
#include "shared/shared.h"

Matrix_u64* matrixAddition_u64_c(Matrix_u64* matrixA, Matrix_u64* matrixB) {
    Matrix_u64* newMatrix = makeMatrix_u64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_i64* matrixAddition_i64_c(Matrix_i64* matrixA, Matrix_i64* matrixB) {
    Matrix_i64* newMatrix = makeMatrix_i64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_f64* matrixAddition_f64_c(Matrix_f64* matrixA, Matrix_f64* matrixB) {
    Matrix_f64* newMatrix = makeMatrix_f64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_f32* matrixAddition_f32_c(Matrix_f32* matrixA, Matrix_f32* matrixB) {
    Matrix_f32* newMatrix = makeMatrix_f32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_u32* matrixAddition_u32_c(Matrix_u32* matrixA, Matrix_u32* matrixB) {
    Matrix_u32* newMatrix = makeMatrix_u32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_i32* matrixAddition_i32_c(Matrix_i32* matrixA, Matrix_i32* matrixB) {
    Matrix_i32* newMatrix = makeMatrix_i32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_u16* matrixAddition_u16_c(Matrix_u16* matrixA, Matrix_u16* matrixB) {
    Matrix_u16* newMatrix = makeMatrix_u16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_i16* matrixAddition_i16_c(Matrix_i16* matrixA, Matrix_i16* matrixB) {
    Matrix_i16* newMatrix = makeMatrix_i16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_u8* matrixAddition_u8_c(Matrix_u8* matrixA, Matrix_u8* matrixB) {
    Matrix_u8* newMatrix = makeMatrix_u8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
Matrix_i8* matrixAddition_i8_c(Matrix_i8* matrixA, Matrix_i8* matrixB) {
    Matrix_i8* newMatrix = makeMatrix_i8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] + matrixB->data[i][j];
        }
    }
    return newMatrix;
}
