// @ts-check
import * as shared from "../../../../shared.js";
import { initMatrices } from "./init-matrices.js";

/**
 * @param {shared.Type} type
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {number} size
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeMatrixAlgorithmC(
  type,
  language,
  algorithms,
  algorithm,
  size,
  wasmPageSize,
  repition
) {
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  const initMatrix = algorithms[language][`initMatrix_${type}_c`];
  const deleteMatrix = algorithms[language][`deleteMatrix_${type}_c`];
  for (let i = 0; i < repition; i++) {
    const { matrixA, matrixB } = initMatrices(type, size);
    const matrixAPointer = initMatrix(matrixA);
    const matrixBPointer = initMatrix(matrixB);
    const resultMatrixPointer = shared.trackMetrics(
      shared.DATA_IDENTIFIER.ALGORITHM_TIME,
      () => algorithm(matrixAPointer, matrixBPointer)
    );
    if (resultMatrixPointer !== null) {
      deleteMatrix(resultMatrixPointer);
    }
    deleteMatrix(matrixAPointer);
    deleteMatrix(matrixBPointer);
  }
}

/**
 * @param {shared.Type} type
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {number} size
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeMatrixAlgorithmAsm(
  type,
  language,
  algorithms,
  algorithm,
  size,
  wasmPageSize,
  repition
) {
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  for (let i = 0; i < repition; i++) {
    const { matrixA, matrixB } = initMatrices(type, size);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () =>
      algorithm(matrixA, matrixB)
    );
  }
}

/**
 * @param {shared.Type} type
 * @param {*} algorithm
 * @param {number} size
 * @param {number} repition
 * @returns {void}
 */
function executeMatrixAlgorithmJs(type, algorithm, size, repition) {
  for (let i = 0; i < repition; i++) {
    const { matrixA, matrixB } = initMatrices(type, size);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(matrixA, matrixB);
    });
  }
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeMatrixAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition, wasmPageSize } =
    algorithmSettings;

  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  console.log(fullAlgorithmName);

  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }
  if (language === "c") {
    executeMatrixAlgorithmC(
      type,
      language,
      algorithms,
      algorithm,
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeMatrixAlgorithmAsm(
      type,
      language,
      algorithms,
      algorithm,
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeMatrixAlgorithmJs(type, algorithm, size, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}
