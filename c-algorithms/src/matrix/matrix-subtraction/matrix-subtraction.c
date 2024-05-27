#include <stdlib.h>
#include "matrix/matrix-subtraction/matrix-subtraction.h";

u64** matrixSubtraction_uint64_c(u64** matrixA, u64** matrixB, int width, int height) {
    u64** newMatrix = (u64**)malloc(height * sizeof(u64*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (u64*)malloc(width * sizeof(u64));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
i64** matrixSubtraction_int64_c(i64** matrixA, i64** matrixB, int width, int height) {
    i64** newMatrix = (i64**)malloc(height * sizeof(i64*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (i64*)malloc(width * sizeof(i64));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
f64** matrixSubtraction_float64_c(f64** matrixA, f64** matrixB, int width, int height) {
    f64** newMatrix = (f64**)malloc(height * sizeof(f64*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (f64*)malloc(width * sizeof(f64));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
f32** matrixSubtraction_float32_c(f32** matrixA, f32** matrixB, int width, int height) {
    f32** newMatrix = (f32**)malloc(height * sizeof(f32*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (f32*)malloc(width * sizeof(f32));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
u32** matrixSubtraction_uint32_c(u32** matrixA, u32** matrixB, int width, int height) {
    u32** newMatrix = (u32**)malloc(height * sizeof(u32*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (u32*)malloc(width * sizeof(u32));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
i32** matrixSubtraction_int32_c(i32** matrixA, i32** matrixB, int width, int height) {
    i32** newMatrix = (i32**)malloc(height * sizeof(i32*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (i32*)malloc(width * sizeof(i32));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
u16** matrixSubtraction_uint16_c(u16** matrixA, u16** matrixB, int width, int height) {
    u16** newMatrix = (u16**)malloc(height * sizeof(u16*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (u16*)malloc(width * sizeof(u16));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
i16** matrixSubtraction_int16_c(i16** matrixA, i16** matrixB, int width, int height) {
    i16** newMatrix = (i16**)malloc(height * sizeof(i16*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (i16*)malloc(width * sizeof(i16));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
u8** matrixSubtraction_uint8_c(u8** matrixA, u8** matrixB, int width, int height) {
    u8** newMatrix = (u8**)malloc(height * sizeof(u8*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (u8*)malloc(width * sizeof(u8));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
i8** matrixSubtraction_int8_c(i8** matrixA, i8** matrixB, int width, int height) {
    i8** newMatrix = (i8**)malloc(height * sizeof(i8*));
    for (int i = 0; i < height; i++) {
        newMatrix[i] = (i8*)malloc(width * sizeof(i8));
        for (int j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
        }
    }
    return newMatrix;
}
