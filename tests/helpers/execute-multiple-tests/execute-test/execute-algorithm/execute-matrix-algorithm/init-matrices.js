// @ts-check
import * as shared from "../../../../shared.js";
import { initArray } from "../execute-array-algorithm/init-array.js";

/**
 * @param {shared.Type} type
 * @param {number} width
 * @param {number} height
 * @returns {shared.Matrix<number | bigint>}
 */
function initTypedMatrix(type, width, height) {
  /**
   * @type {shared.Matrix<number | bigint>}
   */
  const matrix = new Array(height);
  for (let i = 0; i < matrix.length; i++) {
    matrix[i] = initArray(type, width);
  }
  return matrix;
}

/**
 * @param {shared.Type} type
 * @param {number} amountOfItems
 * @returns {{
 *  matrixA: shared.Matrix<number | bigint>;
 *  matrixB: shared.Matrix<number | bigint>;
 * }}
 */
export function initMatrices(type, amountOfItems) {
  return {
    matrixA: initTypedMatrix(type, amountOfItems, amountOfItems),
    matrixB: initTypedMatrix(type, amountOfItems, amountOfItems),
  };
}
