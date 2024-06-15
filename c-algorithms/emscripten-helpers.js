// @ts-check

/**
 * @template T
 * @typedef {{
 *  readonly length: number;
 * [n: number]: T
 * }} ArrayLike
 */

/**
 * @typedef {(bytes: number) => number} Malloc
 */

const TYPES = {
  U64: "u64",
  I64: "i64",
  F64: "f64",
  F32: "f32",
  U32: "u32",
  I32: "i32",
  U16: "u16",
  I16: "i16",
  U8: "u8",
  I8: "i8",
};

/**
 * @typedef {{
 *  type: string;
 *  length: number;
 * }} CArrayInit
 */

/**
 * @typedef {CArrayInit & {
 *  pointer: number;
 * }} CArray
 */

/**
 *
 * @param {string} type
 * @return {number}
 */
function sizeOf(type) {
  let number;
  if (type === TYPES.U64 || type === TYPES.I64 || type === TYPES.F64) {
    number = 64;
  } else if (type === TYPES.U32 || type === TYPES.I32 || type === TYPES.F32) {
    number = 32;
  } else if (type === TYPES.U16 || type === TYPES.I16) {
    number = 16;
  } else if (type === TYPES.U8 || type === TYPES.I8) {
    number = 8;
  } else {
    throw new Error("Type was not provided");
  }
  return number;
}

/**
 *
 * @param {ArrayBuffer} arrayBuffer
 * @param {number} start
 * @param {number} end
 * @param {string} type
 * @return {ArrayLike<number|bigint>}
 */
function typedArrayFactory(arrayBuffer, start, end, type) {
  let typedArray;
  if (type === TYPES.U64) {
    typedArray = new BigUint64Array(arrayBuffer, start, end);
  } else if (type === TYPES.I64) {
    typedArray = new BigInt64Array(arrayBuffer, start, end);
  } else if (type === TYPES.F64) {
    typedArray = new Float64Array(arrayBuffer, start, end);
  } else if (type === TYPES.F32) {
    typedArray = new Float32Array(arrayBuffer, start, end);
  } else if (type === TYPES.U32) {
    typedArray = new Uint32Array(arrayBuffer, start, end);
  } else if (type === TYPES.I32) {
    typedArray = new Int32Array(arrayBuffer, start, end);
  } else if (type === TYPES.U16) {
    typedArray = new Uint16Array(arrayBuffer, start, end);
  } else if (type === TYPES.I16) {
    typedArray = new Int16Array(arrayBuffer, start, end);
  } else if (type === TYPES.U8) {
    typedArray = new Uint8Array(arrayBuffer, start, end);
  } else if (type === TYPES.I8) {
    typedArray = new Int8Array(arrayBuffer, start, end);
  } else {
    throw new Error("Unvalid type");
  }
  return typedArray;
}

/**
 *
 * @param {CArrayInit} cArrayInit
 * @param {Malloc} malloc
 * @param {ArrayBuffer} heap
 * @return {CArray}
 */
function makeArray(cArrayInit, malloc, heap) {
  const arraySize = cArrayInit.length * sizeOf(cArrayInit.type);
  const arrayPointer = malloc(arraySize);

  // Pointer
  const pointerFieldSize = sizeOf(TYPES.I64);
  // length
  const lengthFieldSize = sizeOf(TYPES.I64);
  const structSize = pointerFieldSize + lengthFieldSize;

  const structPointer = malloc(structSize);
  const structStart = structPointer;
  const structEnd = structStart + structSize;

  const dataView = new DataView(heap, structStart, structEnd);
  dataView.setFloat64(0, arrayPointer);
  dataView.setInt32(pointerFieldSize + 1, cArrayInit.length);
  return {
    ...cArrayInit,
    pointer: structPointer,
  };
}

/**
 *
 * @param {CArray} cArray
 * @param {ArrayBuffer} heap
 * @return {ArrayLike<number | bigint>}
 */
function getArray(cArray, heap) {
  // Pointer
  const pointerFieldSize = sizeOf(TYPES.I64);
  // length
  const lengthFieldSize = sizeOf(TYPES.I64);
  const structSize = pointerFieldSize + lengthFieldSize;

  const structPointer = cArray.pointer;
  const structStart = structPointer;
  const structEnd = structStart + structSize;

  const structDataView = new DataView(heap, structStart, structEnd);
  const arrayPointer = structDataView.getFloat64(0);

  const arraySize = cArray.length * sizeOf(cArray.type);
  const arrayStart = arrayPointer;
  const arrayEnd = arrayStart + arraySize;
  const typedArray = typedArrayFactory(heap, arrayStart, arrayEnd, cArray.type);
  return typedArray;
}

/**
 *
 * @param {CArray} cArray
 * @param {ArrayBuffer} heap
 * @param {ArrayLike<number|bigint>} array
 * @return {void}
 */
function setArray(cArray, heap, array) {
  if (cArray.length !== array.length) {
    throw new Error("cArray and array does not have the same length");
  }
  // Pointer
  const pointerFieldSize = sizeOf(TYPES.I64);
  // length
  const lengthFieldSize = sizeOf(TYPES.I64);
  const structSize = pointerFieldSize + lengthFieldSize;

  const structPointer = cArray.pointer;
  const structStart = structPointer;
  const structEnd = structStart + structSize;

  const structDataView = new DataView(heap, structStart, structEnd);
  const arrayPointer = structDataView.getFloat64(0);

  const arraySize = cArray.length * sizeOf(cArray.type);
  const arrayStart = arrayPointer;
  const arrayEnd = arrayStart + arraySize;
  const typedArray = typedArrayFactory(heap, arrayStart, arrayEnd, cArray.type);
  for (let i = 0; i < typedArray.length; i++) {
    const isBigInt = cArray.type === TYPES.U64 || cArray.type === TYPES.I64;
    typedArray[i] = isBigInt ? BigInt(array[i]) : array[i];
  }
}

/**
 * @typedef {{
 *  type: string;
 *  width: number;
 *  height: number;
 * }} CMatrixInit
 */

/**
 * @typedef {CMatrixInit & {
 * pointer: number;
 * }} CMatrix
 */

/**
 *
 * @param {CMatrixInit} cMatrixInit
 * @param {Malloc} malloc
 * @param {ArrayBuffer} heap
 * @return {CMatrix}
 */
function makeMatrix(cMatrixInit, malloc, heap) {
  const matrixSize = cMatrixInit.height * sizeOf(TYPES.I64);
  const matrixPointer = malloc(matrixSize);

  const matrixStart = matrixPointer;
  const matrixEnd = matrixStart + matrixSize;
  let typedArray = typedArrayFactory(
    heap,
    matrixStart,
    matrixEnd,
    cMatrixInit.type
  );
  for (let i = 0; i < typedArray.length; i++) {
    const isBigInt =
      cMatrixInit.type === TYPES.U64 || cMatrixInit.type === TYPES.I64;
    const rowPointer = malloc(cMatrixInit.width * sizeOf(cMatrixInit.type));
    typedArray[i] = isBigInt ? BigInt(rowPointer) : rowPointer;
  }

  // Pointer
  const pointerFieldSize = sizeOf(TYPES.I64);
  // length
  const lengthFieldSize = sizeOf(TYPES.I64);
  const structSize = pointerFieldSize + lengthFieldSize;

  const structPointer = malloc(structSize);
  const structStart = structPointer;
  const structEnd = structStart + structSize;

  const dataView = new DataView(heap, structStart, structEnd);
  dataView.setFloat64(0, matrixPointer);
  dataView.setInt32(pointerFieldSize + 1, cMatrixInit.height);
  return {
    ...cMatrixInit,
    pointer: structPointer,
  };
}

/**
 *
 * @param {CMatrix} cMatrix
 * @param {ArrayBuffer} heap
 * @return {ArrayLike<ArrayLike<number | bigint>>}
 */
function getMatrix(cMatrix, heap) {
  // Pointer
  const pointerFieldSize = sizeOf(TYPES.I64);
  // length
  const lengthFieldSize = sizeOf(TYPES.I64);
  const structSize = pointerFieldSize + lengthFieldSize;

  const structPointer = cMatrix.pointer;
  const structStart = structPointer;
  const structEnd = structStart + structSize;

  const structDataView = new DataView(heap, structStart, structEnd);
  const matrixPointer = structDataView.getFloat64(0);

  const matrixSize = cMatrix.height * sizeOf(TYPES.I64);
  const matrixStart = matrixPointer;
  const matrixEnd = matrixStart + matrixSize;
  const matrixTypedArray = typedArrayFactory(
    heap,
    matrixStart,
    matrixEnd,
    TYPES.I64
  );
  /**
   * @type {ArrayLike<ArrayLike<number | bigint>>}
   */
  const matrix = Array(cMatrix.height).fill(null);
  for (let i = 0; i < matrixTypedArray.length; i++) {
    const rowPointer = matrixTypedArray[i];
    const rowSize = cMatrix.width * sizeOf(cMatrix.type);
    const rowStart = Number(rowPointer);
    const rowEnd = rowStart + rowSize;
    const rowTypedArray = typedArrayFactory(
      heap,
      rowStart,
      rowEnd,
      cMatrix.type
    );
    matrix[i] = rowTypedArray;
  }
  return matrix;
}

/**
 *
 * @param {CMatrix} cMatrix
 * @param {ArrayBuffer} heap
 * @param {ArrayLike<ArrayLike<number | bigint>>} matrix
 * @return {void}
 */
function setMatrix(cMatrix, heap, matrix) {
  if (cMatrix.height !== matrix.length) {
    throw new Error("cMatrix and matrix does not have the same height");
  }
  if (cMatrix.width !== matrix[0].length) {
    throw new Error("cMatrix and matrix does not have the same width");
  }

  // Pointer
  const pointerFieldSize = sizeOf(TYPES.I64);
  // length
  const lengthFieldSize = sizeOf(TYPES.I64);
  const structSize = pointerFieldSize + lengthFieldSize;

  const structPointer = cMatrix.pointer;
  const structStart = structPointer;
  const structEnd = structStart + structSize;

  const structDataView = new DataView(heap, structStart, structEnd);
  const matrixPointer = structDataView.getFloat64(0);

  const matrixSize = cMatrix.height * sizeOf(TYPES.I64);
  const matrixStart = matrixPointer;
  const matrixEnd = matrixStart + matrixSize;
  const matrixTypedArray = typedArrayFactory(
    heap,
    matrixStart,
    matrixEnd,
    TYPES.I64
  );

  for (let i = 0; i < matrixTypedArray.length; i++) {
    const rowPointer = matrixTypedArray[i];
    const rowSize = cMatrix.width * sizeOf(cMatrix.type);
    const rowStart = Number(rowPointer);
    const rowEnd = rowStart + rowSize;
    const rowTypedArray = typedArrayFactory(
      heap,
      rowStart,
      rowEnd,
      cMatrix.type
    );
    const row = matrix[i];
    const isBigInt = cMatrix.type === TYPES.I64 || cMatrix.type === TYPES.U64;
    for (let j = 0; j < rowTypedArray.length; i++) {
      rowTypedArray[j] = isBigInt ? BigInt(row[j]) : row[j];
    }
  }
}

module.exports = {
  TYPES,
  makeArray,
  getArray,
  setArray,
  makeMatrix,
  getMatrix,
  setMatrix,
};
