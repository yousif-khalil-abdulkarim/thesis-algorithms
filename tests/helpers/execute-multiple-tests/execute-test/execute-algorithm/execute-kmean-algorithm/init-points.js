// @ts-check
import * as shared from "../../../../shared.js";
import { initArray } from "../execute-array-algorithm/init-array.js";

/**
 * @param {shared.Type} type
 * @param {number} size
 * @returns {shared.Array1d<shared.Point>}
 */
export function initPoints(type, size) {
  const arr1 = initArray(type, size);
  const arr2 = initArray(type, size);
  /**
   * @type {shared.Array1d<shared.Point>}
   */
  const arr3 = Array(arr1.length);
  for (let i = 0; i < arr1.length; i++) {
    const item1 = arr1[i];
    const item2 = arr2[i];
    arr3[i] = [item1, item2];
  }
  return arr3;
}
