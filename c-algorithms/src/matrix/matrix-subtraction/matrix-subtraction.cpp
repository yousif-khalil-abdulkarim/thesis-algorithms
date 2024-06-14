#include <stdlib.h>
#include "matrix/matrix-addition/matrix-addition.h";
#include "shared/shared.h"

struct Matrix_u64* matrixSubtraction_u64_c(struct Matrix_u64* matrixA, struct Matrix_u64* matrixB) {
    struct Matrix_u64* newMatrix = makeMatrix_u64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_i64* matrixSubtraction_i64_c(struct Matrix_i64* matrixA, struct Matrix_i64* matrixB) {
    struct Matrix_i64* newMatrix = makeMatrix_i64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_f64* matrixSubtraction_f64_c(struct Matrix_f64* matrixA, struct Matrix_f64* matrixB) {
    struct Matrix_f64* newMatrix = makeMatrix_f64(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_f32* matrixSubtraction_f32_c(struct Matrix_f32* matrixA, struct Matrix_f32* matrixB) {
    struct Matrix_f32* newMatrix = makeMatrix_f32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_u32* matrixSubtraction_u32_c(struct Matrix_u32* matrixA, struct Matrix_u32* matrixB) {
    struct Matrix_u32* newMatrix = makeMatrix_u32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_i32* matrixSubtraction_i32_c(struct Matrix_i32* matrixA, struct Matrix_i32* matrixB) {
    struct Matrix_i32* newMatrix = makeMatrix_i32(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_u16* matrixSubtraction_u16_c(struct Matrix_u16* matrixA, struct Matrix_u16* matrixB) {
    struct Matrix_u16* newMatrix = makeMatrix_u16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_i16* matrixSubtraction_i16_c(struct Matrix_i16* matrixA, struct Matrix_i16* matrixB) {
    struct Matrix_i16* newMatrix = makeMatrix_i16(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_u8* matrixSubtraction_u8_c(struct Matrix_u8* matrixA, struct Matrix_u8* matrixB) {
    struct Matrix_u8* newMatrix = makeMatrix_u8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
struct Matrix_i8* matrixSubtraction_i8_c(struct Matrix_i8* matrixA, struct Matrix_i8* matrixB) {
    struct Matrix_i8* newMatrix = makeMatrix_i8(matrixA->height, matrixA->width);
    for (int i = 0; i < newMatrix->height; i++) {
        for (int j = 0; j < newMatrix->width; j++) {
            newMatrix->data[i][j] = matrixA->data[i][j] - matrixB->data[i][j];
        }
    }
    return newMatrix;
}
