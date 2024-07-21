// @ts-check
import * as shared from "../../../../shared.js";
import { initArray } from "./init-array.js";

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
function executeArrayAlgorithmC(
  type,
  language,
  algorithms,
  algorithm,
  array,
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
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
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
 * @param {number} wasmPageSize
 * @param {number} repition
 * @returns {void}
 */
function executeArrayAlgorithmAsm(
  language,
  algorithm,
  algorithms,
  array,
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
      algorithm(array);
    });
  }
}

/**
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {number} repition
 * @returns {void}
 */
function executeArrayAlgorithmJs(algorithm, array, repition) {
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(array);
    });
  }
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeArrayAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition, wasmPageSize } =
    algorithmSettings;

  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  console.log(fullAlgorithmName);

  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }
  const array = initArray(type, size);
  if (language === "c") {
    executeArrayAlgorithmC(
      type,
      language,
      algorithms,
      algorithm,
      array,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeArrayAlgorithmAsm(
      language,
      algorithm,
      algorithms,
      array,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeArrayAlgorithmJs(algorithm, array, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}
