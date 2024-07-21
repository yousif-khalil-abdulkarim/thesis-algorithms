// @ts-check
import * as shared from "../../../shared.js";
import { executeArrayAlgorithm } from "./execute-array-algorithm/execute-array-algorithm.js";
import { executeSearchAlgorithm } from "./execute-search-algorithm/execute-search-algorithm.js";
import { executeMatrixAlgorithm } from "./execute-matrix-algorithm/execute-matrix-algorithm.js";

/**
 * @param {shared.AlgorithmSettings} algorithmSettings
 * @param {*} algorithms
 * @returns {void}
 */
export function executeAlgorithm(algorithmSettings, algorithms) {
  const isMatrixAlgorithm = Object.values(shared.ALGORITHMS.MATRIX).includes(
    algorithmSettings.algorithmName
  );
  const isArrayAlgorithm = [
    ...Object.values(shared.ALGORITHMS.BASIC),
    ...Object.values(shared.ALGORITHMS.SORT),
  ].includes(algorithmSettings.algorithmName);
  const isSearchAlgorithm = Object.values(shared.ALGORITHMS.SEARCH).includes(
    algorithmSettings.algorithmName
  );
  if (isMatrixAlgorithm) {
    executeMatrixAlgorithm(algorithmSettings, algorithms);
  } else if (isArrayAlgorithm) {
    executeArrayAlgorithm(algorithmSettings, algorithms);
  } else if (isSearchAlgorithm) {
    executeSearchAlgorithm(algorithmSettings, algorithms);
  } else {
    throw new Error(
      `Algorithm unsupported "${algorithmSettings.algorithmName}"`
    );
  }
}
