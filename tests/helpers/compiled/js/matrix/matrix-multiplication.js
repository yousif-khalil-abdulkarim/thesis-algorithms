export function matrixMultiplication_u64_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new BigUint64Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0n;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_i64_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new BigInt64Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0n;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_f64_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Float64Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_f32_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Float32Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_u32_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Uint32Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_i32_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Int32Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_u16_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Uint16Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_i16_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Int16Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_u8_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Uint8Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
export function matrixMultiplication_i8_js(matrixA, matrixB) {
    const m = matrixA[0].length;
    const n = matrixA.length;
    const p = matrixB[0].length;
    const c = Array(n);
    for (let i = 0; i < n; i++) {
        c[i] = new Int8Array(p);
    }
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < p; j++) {
            let sum = 0;
            for (let k = 0; k < m; k++) {
                const Aik = matrixA[i][k];
                const Bkj = matrixB[k][j];
                sum += Aik * Bkj;
            }
            c[i][j] = sum;
        }
    }
    return c;
}
