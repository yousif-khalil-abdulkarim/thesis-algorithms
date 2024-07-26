// @ts-check
import * as c from "./release-helpers.js";

const points = c.initPoints_f64_c([
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
  [1, 1],
]);

const start = performance.now();
console.log("started");
c.kMean_f64_c(3, points, 1, 1);
const end = performance.now();
const time = end - start;
console.log("Time:", time);
