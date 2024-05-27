export function matrixSubtraction_uint64_js(
  matrixA: BigUint64Array[],
  matrixB: BigUint64Array[]
): BigUint64Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: BigUint64Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new BigUint64Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_int64_js(
  matrixA: BigInt64Array[],
  matrixB: BigInt64Array[]
): BigInt64Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: BigInt64Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new BigInt64Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_float64_js(
  matrixA: Float64Array[],
  matrixB: Float64Array[]
): Float64Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Float64Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Float64Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_float32_js(
  matrixA: Float32Array[],
  matrixB: Float32Array[]
): Float32Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Float32Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Float32Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_uint32_js(
  matrixA: Uint32Array[],
  matrixB: Uint32Array[]
): Uint32Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Uint32Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Uint32Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_int32_js(
  matrixA: Int32Array[],
  matrixB: Int32Array[]
): Int32Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Int32Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Int32Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_uint16_js(
  matrixA: Uint16Array[],
  matrixB: Uint16Array[]
): Uint16Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Uint16Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Uint16Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_int16_js(
  matrixA: Int16Array[],
  matrixB: Int16Array[]
): Int16Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Int16Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Int16Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_uint8_js(
  matrixA: Uint8Array[],
  matrixB: Uint8Array[]
): Uint8Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Uint8Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Uint8Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixSubtraction_int8_js(
  matrixA: Int8Array[],
  matrixB: Int8Array[]
): Int8Array[] {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: Int8Array[] = [];
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new Int8Array(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] - matrixB[i][j];
    }
  }
  return newMatrix;
}
