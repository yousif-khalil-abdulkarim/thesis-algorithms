// @ts-check
import * as shared from "../../../../shared.js";
import { initArray } from "../execute-array-algorithm/init-array.js";

/**
 *
 * @param {number} min
 * @param {number} max
 * @returns {number}
 */
function getRandomInt(min, max) {
  const minCeiled = Math.ceil(min);
  const maxFloored = Math.floor(max);
  return Math.floor(Math.random() * (maxFloored - minCeiled) + minCeiled);
}

/**
 * @param {shared.Array1d<number | bigint>} array
 * @returns {number}
 */
function getTargetIndex(array) {
  const step = Math.floor(array.length / 10);
  const min = step * 4.5;
  const max = step * 6;
  return getRandomInt(min, max);
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
function executeSearchAlgorithmC(
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
  const initArray1d = algorithms[language][`initArray1d_${type}_c`];
  const deleteArray1d = algorithms[language][`deleteArray1d_${type}_c`];
  for (let i = 0; i < repition; i++) {
    const array = initArray(type, size);
    const target = getTargetIndex(array);
    const arrayPointer = initArray1d(array);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(arrayPointer, target);
    });
    deleteArray1d(arrayPointer);
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
function executeSearchAlgorithmAsm(
  type,
  language,
  algorithm,
  algorithms,
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
    const array = initArray(type, size, true);
    const target = getTargetIndex(array);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(array, target);
    });
  }
}

/**
 * @param {shared.Type} type
 * @param {*} algorithm
 * @param {number} size
 * @param {number} repition
 * @returns {void}
 */
function executeSearchAlgorithmJs(type, algorithm, size, repition) {
  for (let i = 0; i < repition; i++) {
    const array = initArray(type, size, true);
    const target = getTargetIndex(array);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(size, target);
    });
  }
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeSearchAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition, wasmPageSize } =
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
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeSearchAlgorithmAsm(
      type,
      language,
      algorithm,
      algorithms,
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeSearchAlgorithmJs(type, algorithm, size, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}
