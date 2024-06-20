export function matrixAddition_u64_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new BigUint64Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_i64_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new BigInt64Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_f64_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Float64Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_f32_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Float32Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_u32_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Uint32Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_i32_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Int32Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_u16_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Uint16Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_i16_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Int16Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_u8_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Uint8Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
export function matrixAddition_i8_js(matrixA, matrixB) {
    const width = matrixA[0].length;
    const height = matrixA.length;
    const newMatrix = [];
    for (let i = 0; i < height; i++) {
        newMatrix[i] = new Int8Array(width);
        for (let j = 0; j < width; j++) {
            newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
        }
    }
    return newMatrix;
}
