export function matrixMultiplication_uint64_js(
  matrixA: BigUint64Array[],
  matrixB: BigUint64Array[]
): BigUint64Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: BigUint64Array[] = Array(n);
  for (let i = 0; i < n; i++) {
    c[i] = new BigUint64Array(p);
  }

  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: bigint = 0n;
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
export function matrixMultiplication_int64_js(
  matrixA: BigInt64Array[],
  matrixB: BigInt64Array[]
): BigInt64Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: BigInt64Array[] = Array(n);
  for (let i = 0; i < n; i++) {
    c[i] = new BigInt64Array(p);
  }

  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: bigint = 0n;
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
export function matrixMultiplication_float64_js(
  matrixA: Float64Array[],
  matrixB: Float64Array[]
): Float64Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Float64Array[] = Array(n);
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
export function matrixMultiplication_float32_js(
  matrixA: Float32Array[],
  matrixB: Float32Array[]
): Float32Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Float32Array[] = Array(n);
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
export function matrixMultiplication_uint32_js(
  matrixA: Uint32Array[],
  matrixB: Uint32Array[]
): Uint32Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Uint32Array[] = Array(n);
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
export function matrixMultiplication_int32_js(
  matrixA: Int32Array[],
  matrixB: Int32Array[]
): Int32Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Int32Array[] = Array(n);
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
export function matrixMultiplication_uint16_js(
  matrixA: Uint16Array[],
  matrixB: Uint16Array[]
): Uint16Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Uint16Array[] = Array(n);
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
export function matrixMultiplication_int16_js(
  matrixA: Int16Array[],
  matrixB: Int16Array[]
): Int16Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Int16Array[] = Array(n);
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
export function matrixMultiplication_uint8_js(
  matrixA: Uint8Array[],
  matrixB: Uint8Array[]
): Uint8Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Uint8Array[] = Array(n);
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
export function matrixMultiplication_int8_js(
  matrixA: Int8Array[],
  matrixB: Int8Array[]
): Int8Array[] {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c: Int8Array[] = Array(n);
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
