// @ts-check
import * as shared from "./shared.js";

/**
 * @param {shared.Type} type
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
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
  array,
  algorithmName,
  wasmPageSize,
  repition
) {
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  const initArray1d = algorithms[language][`initArray1d_${type}_c`];
  const deleteArray1d = algorithms[language][`deleteArray1d_${type}_c`];
  for (let i = 0; i < repition; i++) {
    const arrayPointer = initArray1d(array);
    shared.trackMetrics(algorithmName, () => {
      algorithm(arrayPointer);
    });
    deleteArray1d(arrayPointer);
  }
}

/**
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {string} algorithmName
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeAsmAlgorithm(
  language,
  algorithm,
  algorithms,
  array,
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
      algorithm(array);
    });
  }
}

/**
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {string} algorithmName
 * @param {number} repition
 * @returns {void}
 */
function executeJsAlgorithm(algorithm, array, algorithmName, repition) {
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(algorithmName, () => {
      algorithm(array);
    });
  }
}

/**
 * @typedef {{
 *  algorithmName: string;
 *  type: shared.Type;
 *  language: shared.Language;
 *  array: shared.Array1d<number | bigint>;
 *  repition: number;
 *  wasmPageSize: number;
 * }} ExecuteArrayAlgorithmSettings
 */

/**
 * @param {ExecuteArrayAlgorithmSettings} settings
 * @param {*} algorithms
 * @param {*} algorithm
 * @returns {void}
 */
function executeAlgorithm(settings, algorithms, algorithm) {
  const { type, language, algorithmName, array, repition, wasmPageSize } =
    settings;
  if (language === "c") {
    executeCAlgorithm(
      type,
      language,
      algorithms,
      algorithm,
      array,
      algorithmName,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeAsmAlgorithm(
      language,
      algorithm,
      algorithms,
      array,
      algorithmName,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeJsAlgorithm(algorithm, array, algorithmName, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
function executeArrayAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition, wasmPageSize } =
    algorithmSettings;
  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }
  const isNotArrayAlgorithm =
    fullAlgorithmName.startsWith("matrix") ||
    fullAlgorithmName.startsWith("kMean") ||
    fullAlgorithmName.includes("Search_");
  if (isNotArrayAlgorithm) {
    throw new Error(`Algorithm ${fullAlgorithmName} is not array algorithm`);
  }
  const array = shared.initTypedArray(type, size);
  executeAlgorithm(
    {
      type,
      language,
      array,
      algorithmName: fullAlgorithmName,
      repition,
      wasmPageSize,
    },
    algorithms,
    algorithm
  );
}

export { executeArrayAlgorithm as executeAlgorithm };
