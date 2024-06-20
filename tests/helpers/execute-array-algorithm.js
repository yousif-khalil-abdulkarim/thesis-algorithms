// @ts-check
import * as shared from "./shared.js";

/**
 * @param {shared.Type} type
 * @param {shared.Language} language
 * @param {*} algorithms
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {string} algorithmName
 * @returns {void}
 */
function executeCAlgorithm(
  type,
  language,
  algorithms,
  algorithm,
  array,
  algorithmName
) {
  const initArray1d = algorithms[language][`initArray1d_${type}_c`];
  const deleteArray1d = algorithms[language][`deleteArray1d_${type}_c`];
  const arrayPointer = initArray1d(array);
  shared.trackMetrics(algorithmName, () => {
    algorithm(arrayPointer);
  });
  deleteArray1d(arrayPointer);
}

/**
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {string} algorithmName
 * @returns {void}
 */
function executeAsmAlgorithm(algorithm, array, algorithmName) {
  shared.trackMetrics(algorithmName, () => {
    algorithm(array);
  });
}

/**
 * @param {*} algorithm
 * @param {shared.Array1d<number | bigint>} array
 * @param {string} algorithmName
 * @returns {void}
 */
function executeJsAlgorithm(algorithm, array, algorithmName) {
  shared.trackMetrics(algorithmName, () => {
    algorithm(array);
  });
}

/**
 * @typedef {{
 *  type: shared.Type;
 *  language: shared.Language;
 *  algorithmName: string;
 *  array: shared.Array1d<number | bigint>;
 *  repition: number;
 * }} ExecuteArrayAlgorithmSettings
 */

/**
 * @param {ExecuteArrayAlgorithmSettings} settings
 * @param {*} algorithms
 * @param {*} algorithm
 * @returns {void}
 */
function executeAlgorithm(settings, algorithms, algorithm) {
  const { type, language, algorithmName, array, repition } = settings;
  for (let i = 0; i < repition; i++) {
    if (language === "c") {
      executeCAlgorithm(
        type,
        language,
        algorithms,
        algorithm,
        array,
        algorithmName
      );
    } else if (language === "asm") {
      executeAsmAlgorithm(algorithm, array, algorithmName);
    } else if (language === "js") {
      executeJsAlgorithm(algorithm, array, algorithmName);
    } else {
      throw new Error(`Unsupporeted language: ${language}`);
    }
  }
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeArrayAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition } = algorithmSettings;
  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }
  const isNotArrayAlgorithm =
    fullAlgorithmName.startsWith("matrix") ||
    fullAlgorithmName.startsWith("kMean");
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
    },
    algorithms,
    algorithm
  );
}

export {
  executeArrayAlgorithm as executeAlgorithm
}