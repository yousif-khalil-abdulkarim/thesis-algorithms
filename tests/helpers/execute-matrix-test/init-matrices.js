// @ts-check
import * as shared from "../shared.js";
import { initArray } from "../execute-array-test/init-array.js";

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
 * @param {number} size
 * @returns {number}
 */
function squareAmountOfItems(size) {
  return Math.floor(Math.sqrt(size));
}

/**
 * @param {number} size
 * @returns {{
 *  width: number;
 *  height: number;
 * }}
 */
function rectangleAmountOfItems(size) {
  const widthA = Math.sqrt(2 * size);
  const heightA = widthA / 2;
  return {
    width: Math.floor(widthA),
    height: Math.floor(heightA),
  };
}

/**
 * @param {shared.Type} type
 * @param {number} amountOfItems
 * @param {boolean} isMultiplication
 * @returns {{
 *  matrixA: shared.Matrix<number | bigint>;
 *  matrixB: shared.Matrix<number | bigint>;
 * }}
 */
export function initMatrices(type, amountOfItems, isMultiplication) {
  if (isMultiplication) {
    const { width, height } = rectangleAmountOfItems(amountOfItems);
    return {
      matrixA: initTypedMatrix(type, width, height),
      matrixB: initTypedMatrix(type, height, width),
    };
  }
  const size = squareAmountOfItems(amountOfItems);
  return {
    matrixA: initTypedMatrix(type, size, size),
    matrixB: initTypedMatrix(type, size, size),
  };
}
