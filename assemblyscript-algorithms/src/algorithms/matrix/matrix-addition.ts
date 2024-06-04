export function matrixAddition_u64_asm(
  matrixA: StaticArray<StaticArray<u64>>,
  matrixB: StaticArray<StaticArray<u64>>
): StaticArray<StaticArray<u64>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<u64>> = new StaticArray<
    StaticArray<u64>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<u64>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_i64_asm(
  matrixA: StaticArray<StaticArray<i64>>,
  matrixB: StaticArray<StaticArray<i64>>
): StaticArray<StaticArray<i64>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<i64>> = new StaticArray<
    StaticArray<i64>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<i64>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_f64_asm(
  matrixA: StaticArray<StaticArray<f64>>,
  matrixB: StaticArray<StaticArray<f64>>
): StaticArray<StaticArray<f64>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<f64>> = new StaticArray<
    StaticArray<f64>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<f64>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_f32_asm(
  matrixA: StaticArray<StaticArray<f32>>,
  matrixB: StaticArray<StaticArray<f32>>
): StaticArray<StaticArray<f32>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<f32>> = new StaticArray<
    StaticArray<f32>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<f32>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_u32_asm(
  matrixA: StaticArray<StaticArray<u32>>,
  matrixB: StaticArray<StaticArray<u32>>
): StaticArray<StaticArray<u32>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<u32>> = new StaticArray<
    StaticArray<u32>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<u32>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_i32_asm(
  matrixA: StaticArray<StaticArray<i32>>,
  matrixB: StaticArray<StaticArray<i32>>
): StaticArray<StaticArray<i32>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<i32>> = new StaticArray<
    StaticArray<i32>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<i32>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_u16_asm(
  matrixA: StaticArray<StaticArray<u16>>,
  matrixB: StaticArray<StaticArray<u16>>
): StaticArray<StaticArray<u16>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<u16>> = new StaticArray<
    StaticArray<u16>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<u16>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_i16_asm(
  matrixA: StaticArray<StaticArray<i16>>,
  matrixB: StaticArray<StaticArray<i16>>
): StaticArray<StaticArray<i16>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<i16>> = new StaticArray<
    StaticArray<i16>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<i16>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_u8_asm(
  matrixA: StaticArray<StaticArray<u8>>,
  matrixB: StaticArray<StaticArray<u8>>
): StaticArray<StaticArray<u8>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<u8>> = new StaticArray<
    StaticArray<u8>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<u8>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
export function matrixAddition_i8_asm(
  matrixA: StaticArray<StaticArray<i8>>,
  matrixB: StaticArray<StaticArray<i8>>
): StaticArray<StaticArray<i8>> {
  const width = matrixA[0].length;
  const height = matrixA.length;
  const newMatrix: StaticArray<StaticArray<i8>> = new StaticArray<
    StaticArray<i8>
  >(height);
  for (let i = 0; i < height; i++) {
    newMatrix[i] = new StaticArray<i8>(width);
    for (let j = 0; j < width; j++) {
      newMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
    }
  }
  return newMatrix;
}
