export function matrixMultiplication_u64_asm(
  matrixA: StaticArray<StaticArray<u64>>,
  matrixB: StaticArray<StaticArray<u64>>
): StaticArray<StaticArray<u64>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<u64>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<u64>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: u64 = 0;
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
export function matrixMultiplication_i64_asm(
  matrixA: StaticArray<StaticArray<i64>>,
  matrixB: StaticArray<StaticArray<i64>>
): StaticArray<StaticArray<i64>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<i64>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<i64>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: i64 = 0;
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
export function matrixMultiplication_f64_asm(
  matrixA: StaticArray<StaticArray<f64>>,
  matrixB: StaticArray<StaticArray<f64>>
): StaticArray<StaticArray<f64>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<f64>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<f64>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: f64 = 0;
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
export function matrixMultiplication_f32_asm(
  matrixA: StaticArray<StaticArray<f32>>,
  matrixB: StaticArray<StaticArray<f32>>
): StaticArray<StaticArray<f32>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<f32>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<f32>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: f32 = 0;
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
export function matrixMultiplication_u32_asm(
  matrixA: StaticArray<StaticArray<u32>>,
  matrixB: StaticArray<StaticArray<u32>>
): StaticArray<StaticArray<u32>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<u32>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<u32>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: u32 = 0;
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
export function matrixMultiplication_i32_asm(
  matrixA: StaticArray<StaticArray<i32>>,
  matrixB: StaticArray<StaticArray<i32>>
): StaticArray<StaticArray<i32>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<i32>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<i32>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: i32 = 0;
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
export function matrixMultiplication_u16_asm(
  matrixA: StaticArray<StaticArray<u16>>,
  matrixB: StaticArray<StaticArray<u16>>
): StaticArray<StaticArray<u16>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<u16>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<u16>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: u16 = 0;
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
export function matrixMultiplication_i16_asm(
  matrixA: StaticArray<StaticArray<i16>>,
  matrixB: StaticArray<StaticArray<i16>>
): StaticArray<StaticArray<i16>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<i16>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<i16>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: i16 = 0;
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
export function matrixMultiplication_u8_asm(
  matrixA: StaticArray<StaticArray<u8>>,
  matrixB: StaticArray<StaticArray<u8>>
): StaticArray<StaticArray<u8>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<u8>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<u8>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: u8 = 0;
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
export function matrixMultiplication_i8_asm(
  matrixA: StaticArray<StaticArray<i8>>,
  matrixB: StaticArray<StaticArray<i8>>
): StaticArray<StaticArray<i8>> {
  const m = matrixA[0].length;
  const n = matrixA.length;
  const p = matrixB[0].length;

  const c = new StaticArray<StaticArray<i8>>(n);
  for (let i = 0; i < n; i++) {
    c[i] = new StaticArray<i8>(p);
  }
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < p; j++) {
      let sum: i8 = 0;
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
