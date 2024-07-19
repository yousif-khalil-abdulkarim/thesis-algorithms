// @ts-check
import * as shared from "../shared.js";

/**
 * @param {shared.Type} type
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeSearchAlgorithmC(
  type,
  language,
  algorithms,
  algorithm,
  array,
  wasmPageSize,
  repition
) {
  const target = array[Math.floor(array.length / 2)];
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  const initArray1d = algorithms[language][`initArray1d_${type}_c`];
  const deleteArray1d = algorithms[language][`deleteArray1d_${type}_c`];
  const arrayPointer = initArray1d(array);
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(arrayPointer, target);
    });
  }
  deleteArray1d(arrayPointer);
}

/**
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeSearchAlgorithmAsm(
  language,
  algorithm,
  algorithms,
  array,
  wasmPageSize,
  repition
) {
  const target = array[Math.floor(array.length / 2)];
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(array, target);
    });
  }
}

/**
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {number} repition
 * @returns {void}
 */
function executeSearchAlgorithmJs(algorithm, array, repition) {
  const target = array[Math.floor(array.length / 2)];
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(array, target);
    });
  }
}

/**
 * @typedef {{
 *  type: shared.Type;
 *  language: shared.Language;
 *  array: shared.Array1d<number | bigint>;
 *  repition: number;
 *  wasmPageSize: number;
 * }} ExecuteSearchAlgorithmSettings
 */

/**
 * @param {shared.ArrayAlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeSearchAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, array, repition, wasmPageSize } =
    algorithmSettings;

  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  console.log(fullAlgorithmName);

  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }

  if (language === "c") {
    executeSearchAlgorithmC(
      type,
      language,
      algorithms,
      algorithm,
      array,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeSearchAlgorithmAsm(
      language,
      algorithm,
      algorithms,
      array,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeSearchAlgorithmJs(algorithm, array, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}
