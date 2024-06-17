#include <stdlib.h>
#include <emscripten.h>
#include "shared/shared.h"
#include "matrix/matrix-multiplication/matrix-multiplication.h";

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
