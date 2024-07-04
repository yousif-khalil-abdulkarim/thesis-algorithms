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
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeCAlgorithm(
  type,
  language,
  algorithms,
  algorithm,
  matrixA,
  matrixB,
  algorithmName,
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
    shared.trackMetrics(algorithmName, () => {
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
 * @param {string} algorithmName
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeAsmAlgorithm(
  language,
  algorithms,
  algorithm,
  matrixA,
  matrixB,
  algorithmName,
  wasmPageSize,
  repition
) {
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(algorithmName, () => {
      algorithm(matrixA, matrixB);
    });
  }
}

/**
 * @param {*} algorithm
 * @param {shared.Matrix<number | bigint>} matrixA
 * @param {shared.Matrix<number | bigint>} matrixB
 * @param {string} algorithmName
 * @param {number} repition
 * @returns {void}
 */
function executeJsAlgorithm(
  algorithm,
  matrixA,
  matrixB,
  algorithmName,
  repition
) {
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(algorithmName, () => {
      algorithm(matrixA, matrixB);
    });
  }
}

/**
 * @typedef {{
 *  algorithmName: string;
 *  type: shared.Type;
 *  language: shared.Language;
 *  matrixA: shared.Matrix<number | bigint>;
 *  matrixB: shared.Matrix<number | bigint>;
 *  repition: number;
 *  wasmPageSize: number;
 * }} ExecuteMatrixAlgorithmSettings
 */

/**
 * @param {ExecuteMatrixAlgorithmSettings} settings
 * @param {*} algorithms
 * @param {*} algorithm
 * @returns {void}
 */
function executeAlgorithm(settings, algorithms, algorithm) {
  const {
    type,
    language,
    algorithmName,
    matrixA,
    matrixB,
    repition,
    wasmPageSize,
  } = settings;
  if (language === "c") {
    executeCAlgorithm(
      type,
      language,
      algorithms,
      algorithm,
      matrixA,
      matrixB,
      algorithmName,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeAsmAlgorithm(
      language,
      algorithms,
      algorithm,
      matrixA,
      matrixB,
      algorithmName,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeJsAlgorithm(algorithm, matrixA, matrixB, algorithmName, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
function executeMatrixAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition, wasmPageSize } =
    algorithmSettings;
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
  const { matrixA, matrixB } = shared.initTypedMatrices(
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
      wasmPageSize,
    },
    algorithms,
    algorithm
  );
}

export { executeMatrixAlgorithm as executeAlgorithm };
