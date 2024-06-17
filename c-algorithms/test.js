// @ts-check
const Module = require("./src/main");
const {
  TYPES,
  sizeOf,
  makeArray,
  getArray,
  setArray,
  makeMatrix,
  getMatrix,
  setMatrix,
} = require("./emscripten-helpers");

Module.onRuntimeInitialized = function () {
  const average_u32_c = Module.cwrap("average_u32_c", "number", ["number"]);
  console.log(Module);
  // const result = average_u32_c(1);
  // console.log(result);
};
