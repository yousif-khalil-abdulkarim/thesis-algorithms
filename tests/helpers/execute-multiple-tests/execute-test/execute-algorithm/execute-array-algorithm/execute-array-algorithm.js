// @ts-check
import * as shared from "../../../../shared.js";
import { initArray } from "./init-array.js";

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
function executeArrayAlgorithmC(
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
    const arrayPointer = initArray1d(array);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(arrayPointer);
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
function executeArrayAlgorithmAsm(
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
    const array = initArray(type, size);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(array);
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
function executeArrayAlgorithmJs(type, algorithm, size, repition) {
  for (let i = 0; i < repition; i++) {
    const array = initArray(type, size);
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
  if (language === "c") {
    executeArrayAlgorithmC(
      type,
      language,
      algorithms,
      algorithm,
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeArrayAlgorithmAsm(
      type,
      language,
      algorithm,
      algorithms,
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeArrayAlgorithmJs(type, algorithm, size, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}
