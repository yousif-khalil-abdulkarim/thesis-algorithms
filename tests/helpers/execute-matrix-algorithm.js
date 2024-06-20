// @ts-check
import * as shared from "./shared.js";

/**
 * @param {shared.Type} type
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Matrix<number | bigint>} matrixA
 * @param {shared.Matrix<number | bigint>} matrixB
 * @param {string} algorithmName
 * @returns {void}
 */
function executeCAlgorithm(
  type,
  language,
  algorithms,
  algorithm,
  matrixA,
  matrixB,
  algorithmName
) {
  const initMatrix = algorithms[language][`initMatrix_${type}_c`];
  const deleteMatrix = algorithms[language][`initMatrix_${type}_c`];
  const matrixAPointer = initMatrix(matrixA);
  const matrixBPointer = initMatrix(matrixB);
  shared.trackMetrics(algorithmName, () => {
    algorithm(matrixAPointer, matrixBPointer);
  });
  deleteMatrix(matrixAPointer);
  deleteMatrix(matrixBPointer);
}

/**
 * @param {*} algorithm
 * @param {shared.Matrix<number | bigint>} matrixA
 * @param {shared.Matrix<number | bigint>} matrixB
 * @param {string} algorithmName
 * @returns {void}
 */
function executeAsmAlgorithm(algorithm, matrixA, matrixB, algorithmName) {
  shared.trackMetrics(algorithmName, () => {
    algorithm(matrixA, matrixB);
  });
}

/**
 * @param {*} algorithm
 * @param {shared.Matrix<number | bigint>} matrixA
 * @param {shared.Matrix<number | bigint>} matrixB
 * @param {string} algorithmName
 * @returns {void}
 */
function executeJsAlgorithm(algorithm, matrixA, matrixB, algorithmName) {
  shared.trackMetrics(algorithmName, () => {
    algorithm(matrixA, matrixB);
  });
}

/**
 * @typedef {{
 *  type: shared.Type;
 *  language: shared.Language;
 *  algorithmName: string;
 *  matrixA: shared.Matrix<number | bigint>;
 *  matrixB: shared.Matrix<number | bigint>;
 *  repition: number;
 * }} ExecuteMatrixAlgorithmSettings
 */

/**
 * @param {ExecuteMatrixAlgorithmSettings} settings
 * @param {*} algorithms
 * @param {*} algorithm
 * @returns {void}
 */
function executeAlgorithm(settings, algorithms, algorithm) {
  const { type, language, algorithmName, matrixA, matrixB, repition } =
    settings;
  for (let i = 0; i < repition; i++) {
    if (language === "c") {
      executeCAlgorithm(
        type,
        language,
        algorithms,
        algorithm,
        matrixA,
        matrixB,
        algorithmName
      );
    } else if (language === "asm") {
      executeAsmAlgorithm(algorithm, matrixA, matrixB, algorithmName);
    } else if (language === "js") {
      executeJsAlgorithm(algorithm, matrixA, matrixB, algorithmName);
    } else {
      throw new Error(`Unsupporeted language: ${language}`);
    }
  }
}

/**
 * @param {shared.Type} type
 * @param {number} width
 * @param {number} height
 * @returns {shared.Matrix<number | bigint>}
 */
function initTypedMatrix(type, width, height) {
  /**
   * @type {shared.Matrix<number | bigint>}
   */
  const matrix = new Array(height);
  for (let i = 0; i < matrix.length; i++) {
    matrix[i] = shared.initTypedArray(type, width);
  }
  return matrix;
}

/**
 * @param {shared.Type} type
 * @param {number} size
 * @param {boolean} isMultiplication
 * @returns {{
 *  matrixA: shared.Matrix<number | bigint>;
 *  matrixB: shared.Matrix<number | bigint>;
 * }}
 */
function initTypedMatrices(type, size, isMultiplication) {
  if (isMultiplication) {
    const matrixAHeight = size;
    const matrixAWidth = Math.floor(size / 2);
    const matrixBHeight = matrixAWidth;
    const matrixBWidth = matrixAHeight;

    return {
      matrixA: initTypedMatrix(type, matrixAWidth, matrixAHeight),
      matrixB: initTypedMatrix(type, matrixBWidth, matrixBHeight),
    };
  }
  return {
    matrixA: initTypedMatrix(type, size, size),
    matrixB: initTypedMatrix(type, size, size),
  };
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
function executeMatrixAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition } = algorithmSettings;
  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }
  const isMatrixAlgorithm = fullAlgorithmName.startsWith("matrix");
  if (!isMatrixAlgorithm) {
    throw new Error(`Algorithm ${fullAlgorithmName} is not matrix algorithm`);
  }
  const isMultiplicationAlgorithm = fullAlgorithmName
    .toLowerCase()
    .includes("multiplication");
  const { matrixA, matrixB } = initTypedMatrices(
    type,
    size,
    isMultiplicationAlgorithm
  );
  executeAlgorithm(
    {
      type,
      language,
      matrixA,
      matrixB,
      algorithmName: fullAlgorithmName,
      repition,
    },
    algorithms,
    algorithm
  );
}

export {
  executeMatrixAlgorithm as executeAlgorithm
}