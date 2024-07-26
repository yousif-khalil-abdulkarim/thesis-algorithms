// @ts-check
import * as shared from "../../../../shared.js";
import { initPoints } from "./init-points.js";

const CLUSTER_AMOUNT = 8;
const MAX_LOOPS = 10_000;
const TOLERANCE = 0.1;

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
function executeKMeanAlgorithmC(
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
  const initPointsC = algorithms[language][`initPoints_${type}_c`];
  const shallowDeleteArray2d =
    algorithms[language][`shallowDeleteArray2d_${type}_c`];
  const deleteArray3d = algorithms[language][`deleteArray3d_${type}_c`];
  for (let i = 0; i < repition; i++) {
    const position = initPoints(type, size);
    const positionPointer = initPointsC(position);
    const clusters = shared.trackMetrics(
      shared.DATA_IDENTIFIER.ALGORITHM_TIME,
      () => algorithm(CLUSTER_AMOUNT, positionPointer, MAX_LOOPS, TOLERANCE)
    );
    if (clusters) {
      deleteArray3d(clusters);
    }
    shallowDeleteArray2d(positionPointer);
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
function executeKMeanAlgorithmAsm(
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
    const positions = initPoints(type, size);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(CLUSTER_AMOUNT, positions, MAX_LOOPS, TOLERANCE);
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
function executeKMeanAlgorithmJs(type, algorithm, size, repition) {
  for (let i = 0; i < repition; i++) {
    const positions = initPoints(type, size);
    shared.trackMetrics(shared.DATA_IDENTIFIER.ALGORITHM_TIME, () => {
      algorithm(CLUSTER_AMOUNT, positions, MAX_LOOPS, TOLERANCE);
    });
  }
}

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeKMeanAlgorithm(algorithmSettings, algorithms) {
  const { algorithmName, type, language, size, repition, wasmPageSize } =
    algorithmSettings;

  const fullAlgorithmName = `${algorithmName}_${type}_${language}`;
  console.log(fullAlgorithmName);

  const algorithm = algorithms[language][fullAlgorithmName];
  if (!algorithm) {
    throw new Error(`Unsupported algorithm: ${fullAlgorithmName}`);
  }
  if (language === "c") {
    executeKMeanAlgorithmC(
      type,
      language,
      algorithms,
      algorithm,
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "asm") {
    executeKMeanAlgorithmAsm(
      type,
      language,
      algorithm,
      algorithms,
      size,
      wasmPageSize,
      repition
    );
  } else if (language === "js") {
    executeKMeanAlgorithmJs(type, algorithm, size, repition);
  } else {
    throw new Error(`Unsupporeted language: ${language}`);
  }
}
