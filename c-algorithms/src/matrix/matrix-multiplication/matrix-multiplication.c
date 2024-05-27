#include <stdlib.h>
#include "src/matrix/matrix-multiplication/matrix-multiplication.h";

u64** matrixMultiplication_uint64_c(u64** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
   int m = matrixAWidth;
   int n = matrixAHeight;
   int p = matrixBWidth;

    u64** c = (u64**)malloc(n * sizeof(u64*));
    for (int i = 0; i < n; i++) {
        c[i] = (u64*)malloc(p * sizeof(u64));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u64 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u64 Aik = matrixA[i][k];
                u64 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
i64** matrixMultiplication_int64_c(i64** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    i64** c = (i64**)malloc(n * sizeof(i64*));
    for (int i = 0; i < n; i++) {
        c[i] = (i64*)malloc(p * sizeof(i64));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i64 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i64 Aik = matrixA[i][k];
                i64 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
f64** matrixMultiplication_float64_c(f64** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    f64** c = (f64**)malloc(n * sizeof(f64*));
    for (int i = 0; i < n; i++) {
        c[i] = (f64*)malloc(p * sizeof(f64));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            f64 sum = 0;
            for (int k = 0 ; k < m; k++) {
                f64 Aik = matrixA[i][k];
                f64 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
f32** matrixMultiplication_float32_c(f32** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    f32** c = (f32**)malloc(n * sizeof(f32*));
    for (int i = 0; i < n; i++) {
        c[i] = (f32*)malloc(p * sizeof(f32));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            f32 sum = 0;
            for (int k = 0 ; k < m; k++) {
                f32 Aik = matrixA[i][k];
                f32 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
u32** matrixMultiplication_uint32_c(u32** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    u32** c = (u32**)malloc(n * sizeof(u32*));
    for (int i = 0; i < n; i++) {
        c[i] = (u32*)malloc(p * sizeof(u32));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u32 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u32 Aik = matrixA[i][k];
                u32 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
i32** matrixMultiplication_int32_c(i32** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    i32** c = (i32**)malloc(n * sizeof(i32*));
    for (int i = 0; i < n; i++) {
        c[i] = (i32*)malloc(p * sizeof(i32));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i32 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i32 Aik = matrixA[i][k];
                i32 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
u16** matrixMultiplication_uint16_c(u16** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    u16** c = (u16**)malloc(n * sizeof(u16*));
    for (int i = 0; i < n; i++) {
        c[i] = (u16*)malloc(p * sizeof(u16));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u16 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u16 Aik = matrixA[i][k];
                u16 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
i16** matrixMultiplication_int16_c(i16** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    i16** c = (i16**)malloc(n * sizeof(i16*));
    for (int i = 0; i < n; i++) {
        c[i] = (i16*)malloc(p * sizeof(i16));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i16 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i16 Aik = matrixA[i][k];
                i16 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
u8** matrixMultiplication_uint8_c(u8** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    u8** c = (u8**)malloc(n * sizeof(u8*));
    for (int i = 0; i < n; i++) {
        c[i] = (u8*)malloc(p * sizeof(u8));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            u8 sum = 0;
            for (int k = 0 ; k < m; k++) {
                u8 Aik = matrixA[i][k];
                u8 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
i8** matrixMultiplication_int8_c(i8** matrixA, u64** matrixB, int matrixAWidth, int matrixAHeight, int matrixBWidth) {
    int m = matrixAWidth;
    int n = matrixAHeight;
    int p = matrixBWidth;

    i8** c = (i8**)malloc(n * sizeof(i8*));
    for (int i = 0; i < n; i++) {
        c[i] = (i8*)malloc(p * sizeof(i8));
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            i8 sum = 0;
            for (int k = 0 ; k < m; k++) {
                i8 Aik = matrixA[i][k];
                i8 Bkj = matrixB[k][j];
                sum = Aik + Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}