// @ts-check
import {
  calculateSteps,
  exponentialSize,
  linearSize,
} from "../helpers/shared.js";
import { initArray } from "../helpers/execute-array-test/init-array.js";
import { initSearchArray } from "../helpers/execute-search-test/init-search-array.js";
import { initMatrices } from "../helpers/execute-matrix-test/init-matrices.js";
import * as shared from "../helpers/shared.js";
import { mkdir, rm, writeFile } from "node:fs/promises";
import { join } from "node:path";
import { existsSync } from "node:fs";
import chalk from "chalk";

const TYPES = /** @type{const} */ ([
  "u64",
  "i64",
  "f64",
  "f32",
  "u32",
  "i32",
  "u16",
  "i16",
  "u8",
  "i8",
]);

/**
 * @param {string} outputPath
 * @param {(step: number) => number} generateValue
 * @param {number} start
 * @param {number} end
 * @param {number} range
 * @returns {Promise<void>}
 */
async function generateArrayValues(
  outputPath,
  generateValue,
  start,
  end,
  range
) {
  if (!existsSync(outputPath)) {
    await mkdir(outputPath, { recursive: true });
  }
  for (const type of TYPES) {
    const typeOutputpath = join(outputPath, type);
    if (!existsSync(typeOutputpath)) {
      await mkdir(typeOutputpath, { recursive: true });
    }
    for (const step of calculateSteps(start, end, range)) {
      try {
        const size = generateValue(step);
        const fileName = `${step}.json`;
        const values = shared.map(initArray(type, size), (item) =>
          item.toString()
        );
        const fileOutput = join(typeOutputpath, fileName);
        if (existsSync(fileOutput)) {
          await rm(fileOutput);
        }
        await writeFile(fileOutput, JSON.stringify(values, null, 2));
      } catch (error) {
        console.error(chalk.red(error));
      }
    }
  }
}

/**
 * @param {string} outputPath
 * @returns {Promise<void>}
 */
async function generateArrayValuesDefault(outputPath) {
  const exponentialOutput = join(outputPath, "array", "exponential");
  if (!existsSync(exponentialOutput)) {
    await mkdir(exponentialOutput, { recursive: true });
  }
  await generateArrayValues(exponentialOutput, exponentialSize, 0, 11, 0.5);

  const linearOutput = join(outputPath, "array", "linear");
  if (!existsSync(linearOutput)) {
    await mkdir(linearOutput, { recursive: true });
  }
  await generateArrayValues(linearOutput, linearSize, 1, 6, 1);
}

/**
 * @param {string} outputPath
 * @param {(step: number) => number} generateValue
 * @param {number} start
 * @param {number} end
 * @param {number} range
 * @returns {Promise<void>}
 */
async function generateSearchArrayValues(
  outputPath,
  generateValue,
  start,
  end,
  range
) {
  if (!existsSync(outputPath)) {
    await mkdir(outputPath, { recursive: true });
  }
  for (const type of TYPES) {
    const typeOutputpath = join(outputPath, type);
    if (!existsSync(typeOutputpath)) {
      await mkdir(typeOutputpath, { recursive: true });
    }
    for (const step of calculateSteps(start, end, range)) {
      try {
        const size = generateValue(step);
        const fileName = `${step}.json`;
        const values = shared.map(initSearchArray(type, size), (item) =>
          item.toString()
        );
        const fileOutput = join(typeOutputpath, fileName);
        if (existsSync(fileOutput)) {
          await rm(fileOutput);
        }
        await writeFile(fileOutput, JSON.stringify(values, null, 2));
      } catch (error) {
        console.error(chalk.red(error));
      }
    }
  }
}

/**
 * @param {string} outputPath
 * @returns {Promise<void>}
 */
async function generateSearchArrayValuesDefault(outputPath) {
  const exponentialOutput = join(outputPath, "search-array", "exponential");
  if (!existsSync(exponentialOutput)) {
    await mkdir(exponentialOutput, { recursive: true });
  }
  await generateSearchArrayValues(
    exponentialOutput,
    exponentialSize,
    1,
    11,
    0.5
  );

  const linearOutput = join(outputPath, "search-array", "linear");
  if (!existsSync(linearOutput)) {
    await mkdir(linearOutput, { recursive: true });
  }
  await generateSearchArrayValues(linearOutput, linearSize, 1, 6, 1);
}

/**
 * @param {string} outputPath
 * @param {(step: number) => number} generateValue
 * @param {boolean} isMultiplication
 * @param {number} start
 * @param {number} end
 * @param {number} range
 * @returns {Promise<void>}
 */
async function generateMatrixValues(
  outputPath,
  generateValue,
  isMultiplication,
  start,
  end,
  range
) {
  if (!existsSync(outputPath)) {
    await mkdir(outputPath, { recursive: true });
  }
  for (const type of TYPES) {
    const typeOutputpath = join(outputPath, type);
    if (!existsSync(typeOutputpath)) {
      await mkdir(typeOutputpath, { recursive: true });
    }
    for (const step of calculateSteps(start, end, range)) {
      try {
        const size = generateValue(step);
        const fileName = `${step}.json`;
        const { matrixA, matrixB } = initMatrices(type, size, isMultiplication);
        const matrixAStr = shared.map(matrixA, (row) =>
          shared.map(row, (value) => value.toString())
        );
        const matrixBStr = shared.map(matrixB, (row) =>
          shared.map(row, (value) => value.toString())
        );
        const fileOutput = join(typeOutputpath, fileName);
        if (existsSync(fileOutput)) {
          await rm(fileOutput);
        }
        await writeFile(
          fileOutput,
          JSON.stringify({ matrixA: matrixAStr, matrixB: matrixBStr }, null, 2)
        );
      } catch (error) {
        console.error(chalk.red(error));
      }
    }
  }
}

/**
 * @param {string} outputPath
 * @returns {Promise<void>}
 */
async function generateMatrixValuesDefault(outputPath) {
  const multiplicationOutput = join(outputPath, "matrix", "multiplication");
  if (!existsSync(multiplicationOutput)) {
    await mkdir(multiplicationOutput, { recursive: true });
  }
  await generateMatrixValues(multiplicationOutput, linearSize, false, 1, 6, 1);

  const additionOutput = join(outputPath, "matrix", "addition");
  if (!existsSync(additionOutput)) {
    await mkdir(additionOutput, { recursive: true });
  }
  await generateMatrixValues(additionOutput, linearSize, true, 1, 6, 1);
}

/**
 * @param {string} outputPath
 * @returns {Promise<void>}
 */
async function generateValues(outputPath) {
  if (!existsSync(outputPath)) {
    await mkdir(outputPath, { recursive: true });
  }

  await generateArrayValuesDefault(outputPath);
  await generateSearchArrayValuesDefault(outputPath);
  await generateMatrixValuesDefault(outputPath);
}

const CURRENT_FOLDER_PATH = join(
  new URL(import.meta.url).pathname.slice(1),
  ".."
);

await generateValues(join(CURRENT_FOLDER_PATH, "data"));
