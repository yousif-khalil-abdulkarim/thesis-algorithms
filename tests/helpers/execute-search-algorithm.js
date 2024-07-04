// @ts-check
import { MAX_VALUES, MIN_VALUES } from "./random-numbers.js";
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
    shared.trackMetrics(algorithmName, () => {
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
  const target = array[Math.floor(array.length / 2)];
  /**
   * @type {WebAssembly.Memory}
   */
  const memory = algorithms[language].memory;
  shared.setWasmMemory(memory, wasmPageSize);
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(algorithmName, () => {
      algorithm(array, target);
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
  const target = array[Math.floor(array.length / 2)];
  for (let i = 0; i < repition; i++) {
    shared.trackMetrics(algorithmName, () => {
      algorithm(array, target);
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
 * }} ExecuteSearchAlgorithmSettings
 */

/**
 * @param {ExecuteSearchAlgorithmSettings} settings
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
 * @param {number} nbr
 * @param {number} min
 * @param {number} max
 * @returns {number}
 */
function clamp(nbr, min, max) {
  return Math.max(min, Math.min(nbr, max));
}

function negative() {
  return Boolean(Math.round(Math.random())) ? 1 : -1;
}

/**
 * @param {shared.Type} type
 * @param {number} size
 * @returns {shared.Array1d<number | bigint>}
 */
function initArray(type, size) {
  if (type === "u64") {
    return BigUint64Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0n)
      .map((_, index) =>
        BigInt(clamp(index + 1, 0, MAX_VALUES.I32 / Math.pow(2, 1)))
      )
      .sort();
  } else if (type === "i64") {
    return BigInt64Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0n)
      .map((_, index) =>
        BigInt(
          negative() *
            clamp(
              index + 1,
              MIN_VALUES.I32 / Math.pow(2, 2),
              MAX_VALUES.I32 / Math.pow(2, 2)
            )
        )
      )
      .sort();
  } else if (type === "f64") {
    return Float64Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map(
        (_, index) =>
          negative() *
          clamp(
            index,
            MIN_VALUES.I32 / Math.pow(2, 2),
            MAX_VALUES.I32 / Math.pow(2, 2)
          )
      )
      .sort();
  } else if (type === "f32") {
    return Float32Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map(
        (_, index) =>
          negative() *
          clamp(
            index,
            MIN_VALUES.I32 / Math.pow(2, 2),
            MAX_VALUES.I32 / Math.pow(2, 2)
          )
      )
      .sort();
  } else if (type === "u32") {
    return Uint32Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I32 / Math.pow(2, 1)))
      )
      .sort();
  } else if (type === "i32") {
    return Int32Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I32 / Math.pow(2, 1)))
      )
      .sort();
  } else if (type === "u16") {
    return Uint16Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I16 / Math.pow(2, 2)))
      )
      .sort();
  } else if (type === "i16") {
    return Int16Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I16 / Math.pow(2, 6)))
      )
      .sort();
  } else if (type === "u8") {
    return Uint8Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I8 / Math.pow(2, 2)))
      )
      .sort();
  } else if (type === "i8") {
    return Int8Array.from(
      Array.from({
        length: size,
      })
    )
      .fill(0)
      .map((_, index) =>
        Math.floor(clamp(index, 1, MAX_VALUES.I8 / Math.pow(2, 6)))
      )
      .sort();
  }
  throw new Error(`Unsupported type: ${type}`);
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
function executeSearchAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition, wasmPageSize } =
    algorithmSettings;
  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }
  const isNotSearchAlgorithm = !fullAlgorithmName.includes("Search_");
  if (isNotSearchAlgorithm) {
    throw new Error(`Algorithm ${fullAlgorithmName} is not search algorithm`);
  }
  const array = initArray(type, size);
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

export { executeSearchAlgorithm as executeAlgorithm };
