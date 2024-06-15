// @ts-check
const Module = require("./src/main");
const {
  makeArray,
  getArray,
  setArray,
  makeMatrix,
  getMatrix,
  setMatrix,
  TYPES,
} = require("./emscripten-helpers");

Module.onRuntimeInitialized = function () {
  const malloc = Module.asm.malloc;
  console.log(typeof malloc(8));
  const heap = Module.HEAPU8.buffer;
  // Module.average_u64_c({});
  // const arrayPointer = makeArray(
  //   {
  //     length: 4,
  //     type: TYPES.F64,
  //   },
  //   malloc,
  //   heap
  // );
};
