// @ts-check
import * as shared from "../shared.js";

/**
 * @param {shared.Type} type
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Matrix<number | bigint>} matrixA
 * @param {shared.Matrix<number | bigint>} matrixB
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeMatrixAlgorithmC(
  type,
  language,
  algorithms,
  algorithm,
  matrixA,
  matrixB,
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
  const matrixAPointer = initMatrix(matrixA);
  const matrixBPointer = initMatrix(matrixB);
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(matrixAPointer, matrixBPointer);
    });
  }
  deleteMatrix(matrixAPointer);
  deleteMatrix(matrixBPointer);
}

/**
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Matrix<number | bigint>} matrixA
 * @param {shared.Matrix<number | bigint>} matrixB
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeMatrixAlgorithmAsm(
  language,
  algorithms,
  algorithm,
  matrixA,
  matrixB,
  wasmPageSize,
  repition
) {
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(matrixA, matrixB);
    });
  }
}

/**
 * @param {*} algorithm
 * @param {shared.Matrix<number | bigint>} matrixA
 * @param {shared.Matrix<number | bigint>} matrixB
 * @param {number} repition
 * @returns {void}
 */
function executeMatrixAlgorithmJs(algorithm, matrixA, matrixB, repition) {
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(matrixA, matrixB);
    });
  }
}

/**
 * @typedef {{
 *  type: shared.Type;
 *  language: shared.Language;
 *  matrixA: shared.Matrix<number | bigint>;
 *  matrixB: shared.Matrix<number | bigint>;
 *  repition: number;
 *  wasmPageSize: number;
 * }} ExecuteMatrixAlgorithmSettings
 */

/**
 * @param {shared.MatrixAlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeMatrixAlgorithm(algorithmSettings, algorithms) {
  const {
    algorithmName,
    type,
    language,
    matrixA,
    matrixB,
    repition,
    wasmPageSize,
  } = algorithmSettings;

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
      matrixA,
      matrixB,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeMatrixAlgorithmAsm(
      language,
      algorithms,
      algorithm,
      matrixA,
      matrixB,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeMatrixAlgorithmJs(algorithm, matrixA, matrixB, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}
