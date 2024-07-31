// @ts-check
import { join } from "node:path";
import { type } from "node:os";
import * as m from "../helpers/execute-multiple-tests/execute-multiple-tests.js";
import * as shared from "../helpers/shared.js";

const CURRENT_FOLDER_PATH = join(
  new URL(import.meta.url).pathname.slice(1),
  ".."
);
/**
 * @type {Omit<m.ExecuteMultipleTestsSettings, "algorithms" | "steps" | "wasmPageSizes" | "resultOutputPath">}
 */
const BASE_SETTINGS = {
  algorithmsPath: join(
    CURRENT_FOLDER_PATH,
    "..",
    "helpers",
    "compiled",
    "algorithms.js"
  ),
  types: ["f64"],
  languages: ["c", "asm"],
  repitionInNodeJs: 3,
  repitionInBrowser: 1,
};

const TYPE = "f64";
/**
 * @typedef {{
 *  step: number;
 *  size: number;
 *  wasmPageSizes: number[];
 * }} BaseSettings
 */
/**
 * @param {(x: number) => number} calculateSize
 * @param {(type: shared.Type, x: number) => number} calculateWasmPageSize
 * @returns {(step: number) => BaseSettings}
 */
function transform(calculateSize, calculateWasmPageSize) {
  return (step) => {
    const wasmPageSize = calculateWasmPageSize(TYPE, step);
    return {
      step,
      size: calculateSize(step),
      wasmPageSizes: [
        Math.ceil(wasmPageSize * 0.5),
        Math.ceil(wasmPageSize * 0.75),
        wasmPageSize,
        Math.ceil(wasmPageSize * 1.5),
        Math.ceil(wasmPageSize * 2),
      ],
    };
  };
}
/**
 * @returns {(settings: BaseSettings) => boolean}
 */
function filterValidSettings() {
  return (settings) =>
    [...new Set(settings.wasmPageSizes)].filter((nbr) => nbr >= 2).length !== 1;
}

const fastAlg = shared
  .calculateSteps({
    start: 1,
    end: 12,
    jump: 1,
  })
  .map(transform(shared.fastAlgorithmSize, shared.fastAlgorithmWasmPageSize))
  .filter(filterValidSettings())
  .map((settings) => ({
    resultOutputPath: join(
      CURRENT_FOLDER_PATH,
      "results",
      `${type().toLowerCase()}`,
      "basic",
      `step-${settings.step}`
    ),
    algorithms: [
      shared.ALGORITHMS.BASIC.AVERAGE,
      shared.ALGORITHMS.BASIC.MAX,
      shared.ALGORITHMS.SEARCH.BINARY_SEARCH,
      shared.ALGORITHMS.SEARCH.INTERPOLATION_SEARCH,
      shared.ALGORITHMS.SEARCH.META_BINARY_SEARCH,
      shared.ALGORITHMS.SORT.MERGE_SORT,
    ],
    steps: [settings.step],
    wasmPageSizes: settings.wasmPageSizes,
  }));
console.log(fastAlg);
for (const settings of fastAlg) {
  await m.executeMultipleTests({
    ...BASE_SETTINGS,
    ...settings,
  });
}

const kMeanAlg = shared
  .calculateSteps({
    start: 1,
    end: 12,
    jump: 1,
  })
  .map(transform(shared.kMeanAlgorithmSize, shared.kMeanAlgorithmWasmPageSize))
  .filter(filterValidSettings())
  .map((settings) => ({
    resultOutputPath: join(
      CURRENT_FOLDER_PATH,
      "results",
      `${type().toLowerCase()}`,
      "kMean",
      `step-${settings.step}`
    ),
    algorithms: [shared.ALGORITHMS.STATICS.K_MEAN],
    steps: [settings.step],
    wasmPageSizes: settings.wasmPageSizes,
  }));
console.log(kMeanAlg);
for (const settings of kMeanAlg) {
  await m.executeMultipleTests({
    ...BASE_SETTINGS,
    ...settings
  });
}

const matrixAlg = shared
  .calculateSteps({
    start: 1,
    end: 12,
    jump: 1,
  })
  .map(
    transform(
      shared.matrixAdditionAlgorithmSize,
      shared.matrixAdditionAlgorithmWasmPageSize
    )
  )
  .filter(filterValidSettings())
  .map((settings) => ({
    resultOutputPath: join(
      CURRENT_FOLDER_PATH,
      "results",
      `${type().toLowerCase()}`,
      "matrix",
      `step-${settings.step}`
    ),
    algorithms: [shared.ALGORITHMS.MATRIX.MATRIX_ADDITION],
    steps: [settings.step],
    wasmPageSizes: settings.wasmPageSizes,
  }));
console.log(matrixAlg);
for (const settings of matrixAlg) {
  await m.executeMultipleTests({
    ...BASE_SETTINGS,
    ...settings,
  });
}
