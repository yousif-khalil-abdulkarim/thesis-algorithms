async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
      seed() {
        // ~lib/builtins/seed() => f64
        return (() => {
          // @external.js
          return Date.now() * Math.random();
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    average_u64_asm(array) {
      // src/algorithms/basic/average/average_u64_asm(~lib/staticarray/StaticArray<u64>) => u64
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      return BigInt.asUintN(64, exports.average_u64_asm(array));
    },
    average_i64_asm(array) {
      // src/algorithms/basic/average/average_i64_asm(~lib/staticarray/StaticArray<i64>) => i64
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      return exports.average_i64_asm(array);
    },
    average_f64_asm(array) {
      // src/algorithms/basic/average/average_f64_asm(~lib/staticarray/StaticArray<f64>) => f64
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return exports.average_f64_asm(array);
    },
    average_f32_asm(array) {
      // src/algorithms/basic/average/average_f32_asm(~lib/staticarray/StaticArray<f32>) => f32
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return exports.average_f32_asm(array);
    },
    average_i32_asm(array) {
      // src/algorithms/basic/average/average_i32_asm(~lib/staticarray/StaticArray<i32>) => i32
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return exports.average_i32_asm(array);
    },
    average_u32_asm(array) {
      // src/algorithms/basic/average/average_u32_asm(~lib/staticarray/StaticArray<u32>) => u32
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return exports.average_u32_asm(array) >>> 0;
    },
    average_u16_asm(array) {
      // src/algorithms/basic/average/average_u16_asm(~lib/staticarray/StaticArray<u16>) => u16
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return exports.average_u16_asm(array);
    },
    average_i16_asm(array) {
      // src/algorithms/basic/average/average_i16_asm(~lib/staticarray/StaticArray<i16>) => i16
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return exports.average_i16_asm(array);
    },
    average_u8_asm(array) {
      // src/algorithms/basic/average/average_u8_asm(~lib/staticarray/StaticArray<u8>) => u8
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return exports.average_u8_asm(array);
    },
    average_i8_asm(array) {
      // src/algorithms/basic/average/average_i8_asm(~lib/staticarray/StaticArray<i8>) => i8
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return exports.average_i8_asm(array);
    },
    max_u64_asm(array) {
      // src/algorithms/basic/max/max_u64_asm(~lib/staticarray/StaticArray<u64>) => u64
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      return BigInt.asUintN(64, exports.max_u64_asm(array));
    },
    max_i64_asm(array) {
      // src/algorithms/basic/max/max_i64_asm(~lib/staticarray/StaticArray<i64>) => i64
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      return exports.max_i64_asm(array);
    },
    max_f64_asm(array) {
      // src/algorithms/basic/max/max_f64_asm(~lib/staticarray/StaticArray<f64>) => f64
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return exports.max_f64_asm(array);
    },
    max_f32_asm(array) {
      // src/algorithms/basic/max/max_f32_asm(~lib/staticarray/StaticArray<f32>) => f32
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return exports.max_f32_asm(array);
    },
    max_u32_asm(array) {
      // src/algorithms/basic/max/max_u32_asm(~lib/staticarray/StaticArray<u32>) => u32
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return exports.max_u32_asm(array) >>> 0;
    },
    max_i32_asm(array) {
      // src/algorithms/basic/max/max_i32_asm(~lib/staticarray/StaticArray<i32>) => i32
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return exports.max_i32_asm(array);
    },
    max_u16_asm(array) {
      // src/algorithms/basic/max/max_u16_asm(~lib/staticarray/StaticArray<u16>) => u16
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return exports.max_u16_asm(array);
    },
    max_i16_asm(array) {
      // src/algorithms/basic/max/max_i16_asm(~lib/staticarray/StaticArray<i16>) => i16
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return exports.max_i16_asm(array);
    },
    max_u8_asm(array) {
      // src/algorithms/basic/max/max_u8_asm(~lib/staticarray/StaticArray<u8>) => u8
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return exports.max_u8_asm(array);
    },
    max_i8_asm(array) {
      // src/algorithms/basic/max/max_i8_asm(~lib/staticarray/StaticArray<i8>) => i8
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return exports.max_i8_asm(array);
    },
    min_u64_asm(array) {
      // src/algorithms/basic/min/min_u64_asm(~lib/staticarray/StaticArray<u64>) => u64
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      return BigInt.asUintN(64, exports.min_u64_asm(array));
    },
    min_i64_asm(array) {
      // src/algorithms/basic/min/min_i64_asm(~lib/staticarray/StaticArray<i64>) => i64
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      return exports.min_i64_asm(array);
    },
    min_f64_asm(array) {
      // src/algorithms/basic/min/min_f64_asm(~lib/staticarray/StaticArray<f64>) => f64
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return exports.min_f64_asm(array);
    },
    min_f32_asm(array) {
      // src/algorithms/basic/min/min_f32_asm(~lib/staticarray/StaticArray<f32>) => f32
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return exports.min_f32_asm(array);
    },
    min_u32_asm(array) {
      // src/algorithms/basic/min/min_u32_asm(~lib/staticarray/StaticArray<u32>) => u32
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return exports.min_u32_asm(array) >>> 0;
    },
    min_i32_asm(array) {
      // src/algorithms/basic/min/min_i32_asm(~lib/staticarray/StaticArray<i32>) => i32
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return exports.min_i32_asm(array);
    },
    min_u16_asm(array) {
      // src/algorithms/basic/min/min_u16_asm(~lib/staticarray/StaticArray<u16>) => u16
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return exports.min_u16_asm(array);
    },
    min_i16_asm(array) {
      // src/algorithms/basic/min/min_i16_asm(~lib/staticarray/StaticArray<i16>) => i16
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return exports.min_i16_asm(array);
    },
    min_u8_asm(array) {
      // src/algorithms/basic/min/min_u8_asm(~lib/staticarray/StaticArray<u8>) => u8
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return exports.min_u8_asm(array);
    },
    min_i8_asm(array) {
      // src/algorithms/basic/min/min_i8_asm(~lib/staticarray/StaticArray<i8>) => i8
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return exports.min_i8_asm(array);
    },
    sum_u64_asm(array) {
      // src/algorithms/basic/sum/sum_u64_asm(~lib/staticarray/StaticArray<u64>) => u64
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      return BigInt.asUintN(64, exports.sum_u64_asm(array));
    },
    sum_i64_asm(array) {
      // src/algorithms/basic/sum/sum_i64_asm(~lib/staticarray/StaticArray<i64>) => i64
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      return exports.sum_i64_asm(array);
    },
    sum_f64_asm(array) {
      // src/algorithms/basic/sum/sum_f64_asm(~lib/staticarray/StaticArray<f64>) => f64
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return exports.sum_f64_asm(array);
    },
    sum_f32_asm(array) {
      // src/algorithms/basic/sum/sum_f32_asm(~lib/staticarray/StaticArray<f32>) => f32
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return exports.sum_f32_asm(array);
    },
    sum_u32_asm(array) {
      // src/algorithms/basic/sum/sum_u32_asm(~lib/staticarray/StaticArray<u32>) => u32
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return exports.sum_u32_asm(array) >>> 0;
    },
    sum_i32_asm(array) {
      // src/algorithms/basic/sum/sum_i32_asm(~lib/staticarray/StaticArray<i32>) => i32
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return exports.sum_i32_asm(array);
    },
    sum_u16_asm(array) {
      // src/algorithms/basic/sum/sum_u16_asm(~lib/staticarray/StaticArray<u16>) => u16
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return exports.sum_u16_asm(array);
    },
    sum_i16_asm(array) {
      // src/algorithms/basic/sum/sum_i16_asm(~lib/staticarray/StaticArray<i16>) => i16
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return exports.sum_i16_asm(array);
    },
    sum_u8_asm(array) {
      // src/algorithms/basic/sum/sum_u8_asm(~lib/staticarray/StaticArray<u8>) => u8
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return exports.sum_u8_asm(array);
    },
    sum_i8_asm(array) {
      // src/algorithms/basic/sum/sum_i8_asm(~lib/staticarray/StaticArray<i8>) => i8
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return exports.sum_i8_asm(array);
    },
    matrixAddition_u64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_u64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 4, 3, value, BigUint64Array) || __notnull()); }, 14, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 4, 3, value, BigUint64Array) || __notnull()); }, 14, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, __getU32(pointer)), 2, exports.matrixAddition_u64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_i64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_i64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 5, 3, value, BigInt64Array) || __notnull()); }, 15, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 5, 3, value, BigInt64Array) || __notnull()); }, 15, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI64, 3, __getU32(pointer)), 2, exports.matrixAddition_i64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_f64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_f64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF64, 6, 3, value, Float64Array) || __notnull()); }, 16, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF64, 6, 3, value, Float64Array) || __notnull()); }, 16, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getF64, 3, __getU32(pointer)), 2, exports.matrixAddition_f64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_f32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_f32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF32, 7, 2, value, Float32Array) || __notnull()); }, 17, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF32, 7, 2, value, Float32Array) || __notnull()); }, 17, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getF32, 2, __getU32(pointer)), 2, exports.matrixAddition_f32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_u32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_u32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 9, 2, value, Uint32Array) || __notnull()); }, 18, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 9, 2, value, Uint32Array) || __notnull()); }, 18, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, __getU32(pointer)), 2, exports.matrixAddition_u32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_i32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_i32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 8, 2, value, Int32Array) || __notnull()); }, 19, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 8, 2, value, Int32Array) || __notnull()); }, 19, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI32, 2, __getU32(pointer)), 2, exports.matrixAddition_i32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_u16_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_u16_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 10, 1, value, Uint16Array) || __notnull()); }, 20, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 10, 1, value, Uint16Array) || __notnull()); }, 20, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getU16, 1, __getU32(pointer)), 2, exports.matrixAddition_u16_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_i16_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_i16_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 11, 1, value, Int16Array) || __notnull()); }, 21, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 11, 1, value, Int16Array) || __notnull()); }, 21, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI16, 1, __getU32(pointer)), 2, exports.matrixAddition_i16_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_u8_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_u8_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 12, 0, value, Uint8Array) || __notnull()); }, 22, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 12, 0, value, Uint8Array) || __notnull()); }, 22, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getU8, 0, __getU32(pointer)), 2, exports.matrixAddition_u8_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixAddition_i8_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-addition/matrixAddition_i8_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 13, 0, value, Int8Array) || __notnull()); }, 23, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 13, 0, value, Int8Array) || __notnull()); }, 23, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI8, 0, __getU32(pointer)), 2, exports.matrixAddition_i8_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_u64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 4, 3, value, BigUint64Array) || __notnull()); }, 14, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 4, 3, value, BigUint64Array) || __notnull()); }, 14, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, __getU32(pointer)), 2, exports.matrixMultiplication_u64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_i64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 5, 3, value, BigInt64Array) || __notnull()); }, 15, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 5, 3, value, BigInt64Array) || __notnull()); }, 15, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI64, 3, __getU32(pointer)), 2, exports.matrixMultiplication_i64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_f64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF64, 6, 3, value, Float64Array) || __notnull()); }, 16, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF64, 6, 3, value, Float64Array) || __notnull()); }, 16, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getF64, 3, __getU32(pointer)), 2, exports.matrixMultiplication_f64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_f32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF32, 7, 2, value, Float32Array) || __notnull()); }, 17, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF32, 7, 2, value, Float32Array) || __notnull()); }, 17, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getF32, 2, __getU32(pointer)), 2, exports.matrixMultiplication_f32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_u32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 9, 2, value, Uint32Array) || __notnull()); }, 18, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 9, 2, value, Uint32Array) || __notnull()); }, 18, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, __getU32(pointer)), 2, exports.matrixMultiplication_u32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_i32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 8, 2, value, Int32Array) || __notnull()); }, 19, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 8, 2, value, Int32Array) || __notnull()); }, 19, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI32, 2, __getU32(pointer)), 2, exports.matrixMultiplication_i32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_u16_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u16_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 10, 1, value, Uint16Array) || __notnull()); }, 20, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 10, 1, value, Uint16Array) || __notnull()); }, 20, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getU16, 1, __getU32(pointer)), 2, exports.matrixMultiplication_u16_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_i16_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i16_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 11, 1, value, Int16Array) || __notnull()); }, 21, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 11, 1, value, Int16Array) || __notnull()); }, 21, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI16, 1, __getU32(pointer)), 2, exports.matrixMultiplication_i16_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_u8_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u8_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 12, 0, value, Uint8Array) || __notnull()); }, 22, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 12, 0, value, Uint8Array) || __notnull()); }, 22, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getU8, 0, __getU32(pointer)), 2, exports.matrixMultiplication_u8_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixMultiplication_i8_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i8_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 13, 0, value, Int8Array) || __notnull()); }, 23, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 13, 0, value, Int8Array) || __notnull()); }, 23, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI8, 0, __getU32(pointer)), 2, exports.matrixMultiplication_i8_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_u64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 4, 3, value, BigUint64Array) || __notnull()); }, 14, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 4, 3, value, BigUint64Array) || __notnull()); }, 14, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, __getU32(pointer)), 2, exports.matrixSubtraction_u64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_i64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 5, 3, value, BigInt64Array) || __notnull()); }, 15, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 5, 3, value, BigInt64Array) || __notnull()); }, 15, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI64, 3, __getU32(pointer)), 2, exports.matrixSubtraction_i64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_f64_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f64_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF64, 6, 3, value, Float64Array) || __notnull()); }, 16, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF64, 6, 3, value, Float64Array) || __notnull()); }, 16, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getF64, 3, __getU32(pointer)), 2, exports.matrixSubtraction_f64_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_f32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF32, 7, 2, value, Float32Array) || __notnull()); }, 17, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF32, 7, 2, value, Float32Array) || __notnull()); }, 17, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getF32, 2, __getU32(pointer)), 2, exports.matrixSubtraction_f32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_u32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 9, 2, value, Uint32Array) || __notnull()); }, 18, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 9, 2, value, Uint32Array) || __notnull()); }, 18, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, __getU32(pointer)), 2, exports.matrixSubtraction_u32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_i32_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i32_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 8, 2, value, Int32Array) || __notnull()); }, 19, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 8, 2, value, Int32Array) || __notnull()); }, 19, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI32, 2, __getU32(pointer)), 2, exports.matrixSubtraction_i32_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_u16_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u16_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 10, 1, value, Uint16Array) || __notnull()); }, 20, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 10, 1, value, Uint16Array) || __notnull()); }, 20, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getU16, 1, __getU32(pointer)), 2, exports.matrixSubtraction_u16_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_i16_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i16_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 11, 1, value, Int16Array) || __notnull()); }, 21, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 11, 1, value, Int16Array) || __notnull()); }, 21, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI16, 1, __getU32(pointer)), 2, exports.matrixSubtraction_i16_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_u8_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u8_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 12, 0, value, Uint8Array) || __notnull()); }, 22, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 12, 0, value, Uint8Array) || __notnull()); }, 22, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getU8, 0, __getU32(pointer)), 2, exports.matrixSubtraction_u8_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    matrixSubtraction_i8_asm(matrixA, matrixB) {
      // src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i8_asm(~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>
      matrixA = __retain(__lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 13, 0, value, Int8Array) || __notnull()); }, 23, 2, matrixA) || __notnull());
      matrixB = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 13, 0, value, Int8Array) || __notnull()); }, 23, 2, matrixB) || __notnull();
      try {
        return __liftStaticArray(pointer => __liftStaticArray(__getI8, 0, __getU32(pointer)), 2, exports.matrixSubtraction_i8_asm(matrixA, matrixB) >>> 0);
      } finally {
        __release(matrixA);
      }
    },
    binarySearch_u64_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_u64_asm(~lib/staticarray/StaticArray<u64>, u64) => i32
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      target = target || 0n;
      return exports.binarySearch_u64_asm(array, target);
    },
    binarySearch_i64_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_i64_asm(~lib/staticarray/StaticArray<i64>, i64) => i32
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      target = target || 0n;
      return exports.binarySearch_i64_asm(array, target);
    },
    binarySearch_f64_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_f64_asm(~lib/staticarray/StaticArray<f64>, f64) => i32
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return exports.binarySearch_f64_asm(array, target);
    },
    binarySearch_f32_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_f32_asm(~lib/staticarray/StaticArray<f32>, f32) => i32
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return exports.binarySearch_f32_asm(array, target);
    },
    binarySearch_u32_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_u32_asm(~lib/staticarray/StaticArray<u32>, u32) => i32
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return exports.binarySearch_u32_asm(array, target);
    },
    binarySearch_i32_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_i32_asm(~lib/staticarray/StaticArray<i32>, i32) => i32
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return exports.binarySearch_i32_asm(array, target);
    },
    binarySearch_u16_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_u16_asm(~lib/staticarray/StaticArray<u16>, u16) => i32
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return exports.binarySearch_u16_asm(array, target);
    },
    binarySearch_i16_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_i16_asm(~lib/staticarray/StaticArray<i16>, i16) => i32
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return exports.binarySearch_i16_asm(array, target);
    },
    binarySearch_u8_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_u8_asm(~lib/staticarray/StaticArray<i8>, i8) => i32
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return exports.binarySearch_u8_asm(array, target);
    },
    binarySearch_i8_asm(array, target) {
      // src/algorithms/search/binary-search/binarySearch_i8_asm(~lib/staticarray/StaticArray<u8>, u8) => i32
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return exports.binarySearch_i8_asm(array, target);
    },
    interpolationSearch_u64_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_u64_asm(~lib/staticarray/StaticArray<u64>, u64) => i32
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      target = target || 0n;
      return exports.interpolationSearch_u64_asm(array, target);
    },
    interpolationSearch_i64_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_i64_asm(~lib/staticarray/StaticArray<i64>, i64) => i32
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      target = target || 0n;
      return exports.interpolationSearch_i64_asm(array, target);
    },
    interpolationSearch_f64_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_f64_asm(~lib/staticarray/StaticArray<f64>, f64) => i32
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return exports.interpolationSearch_f64_asm(array, target);
    },
    interpolationSearch_f32_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_f32_asm(~lib/staticarray/StaticArray<f32>, f32) => i32
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return exports.interpolationSearch_f32_asm(array, target);
    },
    interpolationSearch_u32_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_u32_asm(~lib/staticarray/StaticArray<u32>, u32) => i32
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return exports.interpolationSearch_u32_asm(array, target);
    },
    interpolationSearch_i32_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_i32_asm(~lib/staticarray/StaticArray<i32>, i32) => i32
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return exports.interpolationSearch_i32_asm(array, target);
    },
    interpolationSearch_u16_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_u16_asm(~lib/staticarray/StaticArray<u16>, u16) => i32
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return exports.interpolationSearch_u16_asm(array, target);
    },
    interpolationSearch_i16_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_i16_asm(~lib/staticarray/StaticArray<i16>, i16) => i32
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return exports.interpolationSearch_i16_asm(array, target);
    },
    interpolationSearch_u8_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_u8_asm(~lib/staticarray/StaticArray<u8>, u8) => i32
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return exports.interpolationSearch_u8_asm(array, target);
    },
    interpolationSearch_i8_asm(array, target) {
      // src/algorithms/search/interpolation-search/interpolationSearch_i8_asm(~lib/staticarray/StaticArray<i8>, i8) => i32
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return exports.interpolationSearch_i8_asm(array, target);
    },
    metaBinarySearch_u64_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_u64_asm(~lib/staticarray/StaticArray<u64>, u64) => i32
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      target = target || 0n;
      return exports.metaBinarySearch_u64_asm(array, target);
    },
    metaBinarySearch_i64_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_i64_asm(~lib/staticarray/StaticArray<i64>, i64) => i32
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      target = target || 0n;
      return exports.metaBinarySearch_i64_asm(array, target);
    },
    metaBinarySearch_f64_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_f64_asm(~lib/staticarray/StaticArray<f64>, f64) => i32
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return exports.metaBinarySearch_f64_asm(array, target);
    },
    metaBinarySearch_f32_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_f32_asm(~lib/staticarray/StaticArray<f32>, f32) => i32
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return exports.metaBinarySearch_f32_asm(array, target);
    },
    metaBinarySearch_u32_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_u32_asm(~lib/staticarray/StaticArray<u32>, u32) => i32
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return exports.metaBinarySearch_u32_asm(array, target);
    },
    metaBinarySearch_i32_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_i32_asm(~lib/staticarray/StaticArray<i32>, i32) => i32
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return exports.metaBinarySearch_i32_asm(array, target);
    },
    metaBinarySearch_u16_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_u16_asm(~lib/staticarray/StaticArray<u16>, u16) => i32
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return exports.metaBinarySearch_u16_asm(array, target);
    },
    metaBinarySearch_i16_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_i16_asm(~lib/staticarray/StaticArray<i16>, i16) => i32
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return exports.metaBinarySearch_i16_asm(array, target);
    },
    metaBinarySearch_u8_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_u8_asm(~lib/staticarray/StaticArray<u8>, u8) => i32
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return exports.metaBinarySearch_u8_asm(array, target);
    },
    metaBinarySearch_i8_asm(array, target) {
      // src/algorithms/search/meta-binary-search/metaBinarySearch_i8_asm(~lib/staticarray/StaticArray<i8>, i8) => i32
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return exports.metaBinarySearch_i8_asm(array, target);
    },
    bubbleSort_u64_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_u64_asm(~lib/staticarray/StaticArray<u64>) => ~lib/staticarray/StaticArray<u64>
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      return __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, exports.bubbleSort_u64_asm(array) >>> 0);
    },
    bubbleSort_i64_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_i64_asm(~lib/staticarray/StaticArray<i64>) => ~lib/staticarray/StaticArray<i64>
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      return __liftStaticArray(__getI64, 3, exports.bubbleSort_i64_asm(array) >>> 0);
    },
    bubbleSort_f64_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_f64_asm(~lib/staticarray/StaticArray<f64>) => ~lib/staticarray/StaticArray<f64>
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return __liftStaticArray(__getF64, 3, exports.bubbleSort_f64_asm(array) >>> 0);
    },
    bubbleSort_f32_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_f32_asm(~lib/staticarray/StaticArray<f32>) => ~lib/staticarray/StaticArray<f32>
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return __liftStaticArray(__getF32, 2, exports.bubbleSort_f32_asm(array) >>> 0);
    },
    bubbleSort_u32_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_u32_asm(~lib/staticarray/StaticArray<u32>) => ~lib/staticarray/StaticArray<u32>
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, exports.bubbleSort_u32_asm(array) >>> 0);
    },
    bubbleSort_i32_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_i32_asm(~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32>
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return __liftStaticArray(__getI32, 2, exports.bubbleSort_i32_asm(array) >>> 0);
    },
    bubbleSort_u16_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_u16_asm(~lib/staticarray/StaticArray<u16>) => ~lib/staticarray/StaticArray<u16>
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return __liftStaticArray(__getU16, 1, exports.bubbleSort_u16_asm(array) >>> 0);
    },
    bubbleSort_i16_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_i16_asm(~lib/staticarray/StaticArray<i16>) => ~lib/staticarray/StaticArray<i16>
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return __liftStaticArray(__getI16, 1, exports.bubbleSort_i16_asm(array) >>> 0);
    },
    bubbleSort_u8_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_u8_asm(~lib/staticarray/StaticArray<u8>) => ~lib/staticarray/StaticArray<u8>
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return __liftStaticArray(__getU8, 0, exports.bubbleSort_u8_asm(array) >>> 0);
    },
    bubbleSort_i8_asm(array) {
      // src/algorithms/sort/bubble-sort/bubbleSort_i8_asm(~lib/staticarray/StaticArray<i8>) => ~lib/staticarray/StaticArray<i8>
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return __liftStaticArray(__getI8, 0, exports.bubbleSort_i8_asm(array) >>> 0);
    },
    mergeSort_u64_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_u64_asm(~lib/staticarray/StaticArray<u64>) => ~lib/staticarray/StaticArray<u64>
      arr = __lowerStaticArray(__setU64, 4, 3, arr, BigUint64Array) || __notnull();
      return __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, exports.mergeSort_u64_asm(arr) >>> 0);
    },
    mergeSort_i64_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_i64_asm(~lib/staticarray/StaticArray<i64>) => ~lib/staticarray/StaticArray<i64>
      arr = __lowerStaticArray(__setU64, 5, 3, arr, BigInt64Array) || __notnull();
      return __liftStaticArray(__getI64, 3, exports.mergeSort_i64_asm(arr) >>> 0);
    },
    mergeSort_f64_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_f64_asm(~lib/staticarray/StaticArray<f64>) => ~lib/staticarray/StaticArray<f64>
      arr = __lowerStaticArray(__setF64, 6, 3, arr, Float64Array) || __notnull();
      return __liftStaticArray(__getF64, 3, exports.mergeSort_f64_asm(arr) >>> 0);
    },
    mergeSort_f32_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_f32_asm(~lib/staticarray/StaticArray<f32>) => ~lib/staticarray/StaticArray<f32>
      arr = __lowerStaticArray(__setF32, 7, 2, arr, Float32Array) || __notnull();
      return __liftStaticArray(__getF32, 2, exports.mergeSort_f32_asm(arr) >>> 0);
    },
    mergeSort_u32_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_u32_asm(~lib/staticarray/StaticArray<u32>) => ~lib/staticarray/StaticArray<u32>
      arr = __lowerStaticArray(__setU32, 9, 2, arr, Uint32Array) || __notnull();
      return __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, exports.mergeSort_u32_asm(arr) >>> 0);
    },
    mergeSort_i32_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_i32_asm(~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32>
      arr = __lowerStaticArray(__setU32, 8, 2, arr, Int32Array) || __notnull();
      return __liftStaticArray(__getI32, 2, exports.mergeSort_i32_asm(arr) >>> 0);
    },
    mergeSort_u16_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_u16_asm(~lib/staticarray/StaticArray<u16>) => ~lib/staticarray/StaticArray<u16>
      arr = __lowerStaticArray(__setU16, 10, 1, arr, Uint16Array) || __notnull();
      return __liftStaticArray(__getU16, 1, exports.mergeSort_u16_asm(arr) >>> 0);
    },
    mergeSort_i16_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_i16_asm(~lib/staticarray/StaticArray<i16>) => ~lib/staticarray/StaticArray<i16>
      arr = __lowerStaticArray(__setU16, 11, 1, arr, Int16Array) || __notnull();
      return __liftStaticArray(__getI16, 1, exports.mergeSort_i16_asm(arr) >>> 0);
    },
    mergeSort_u8_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_u8_asm(~lib/staticarray/StaticArray<u8>) => ~lib/staticarray/StaticArray<u8>
      arr = __lowerStaticArray(__setU8, 12, 0, arr, Uint8Array) || __notnull();
      return __liftStaticArray(__getU8, 0, exports.mergeSort_u8_asm(arr) >>> 0);
    },
    mergeSort_i8_asm(arr) {
      // src/algorithms/sort/merge-sort/mergeSort_i8_asm(~lib/staticarray/StaticArray<i8>) => ~lib/staticarray/StaticArray<i8>
      arr = __lowerStaticArray(__setU8, 13, 0, arr, Int8Array) || __notnull();
      return __liftStaticArray(__getI8, 0, exports.mergeSort_i8_asm(arr) >>> 0);
    },
    quickSort_u64_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_u64_asm(~lib/staticarray/StaticArray<u64>) => ~lib/staticarray/StaticArray<u64>
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      return __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, exports.quickSort_u64_asm(array) >>> 0);
    },
    quickSort_i64_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_i64_asm(~lib/staticarray/StaticArray<i64>) => ~lib/staticarray/StaticArray<i64>
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      return __liftStaticArray(__getI64, 3, exports.quickSort_i64_asm(array) >>> 0);
    },
    quickSort_f64_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_f64_asm(~lib/staticarray/StaticArray<f64>) => ~lib/staticarray/StaticArray<f64>
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return __liftStaticArray(__getF64, 3, exports.quickSort_f64_asm(array) >>> 0);
    },
    quickSort_f32_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_f32_asm(~lib/staticarray/StaticArray<f32>) => ~lib/staticarray/StaticArray<f32>
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return __liftStaticArray(__getF32, 2, exports.quickSort_f32_asm(array) >>> 0);
    },
    quickSort_u32_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_u32_asm(~lib/staticarray/StaticArray<u32>) => ~lib/staticarray/StaticArray<u32>
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, exports.quickSort_u32_asm(array) >>> 0);
    },
    quickSort_i32_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_i32_asm(~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32>
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return __liftStaticArray(__getI32, 2, exports.quickSort_i32_asm(array) >>> 0);
    },
    quickSort_u16_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_u16_asm(~lib/staticarray/StaticArray<i16>) => ~lib/staticarray/StaticArray<i16>
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return __liftStaticArray(__getI16, 1, exports.quickSort_u16_asm(array) >>> 0);
    },
    quickSort_i16_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_i16_asm(~lib/staticarray/StaticArray<u16>) => ~lib/staticarray/StaticArray<u16>
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return __liftStaticArray(__getU16, 1, exports.quickSort_i16_asm(array) >>> 0);
    },
    quickSort_u8_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_u8_asm(~lib/staticarray/StaticArray<u8>) => ~lib/staticarray/StaticArray<u8>
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return __liftStaticArray(__getU8, 0, exports.quickSort_u8_asm(array) >>> 0);
    },
    quickSort_i8_asm(array) {
      // src/algorithms/sort/quick-sort/quickSort_i8_asm(~lib/staticarray/StaticArray<i8>) => ~lib/staticarray/StaticArray<i8>
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return __liftStaticArray(__getI8, 0, exports.quickSort_i8_asm(array) >>> 0);
    },
    selectionSort_u64_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_u64_asm(~lib/staticarray/StaticArray<u64>) => ~lib/staticarray/StaticArray<u64>
      array = __lowerStaticArray(__setU64, 4, 3, array, BigUint64Array) || __notnull();
      return __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, exports.selectionSort_u64_asm(array) >>> 0);
    },
    selectionSort_i64_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_i64_asm(~lib/staticarray/StaticArray<i64>) => ~lib/staticarray/StaticArray<i64>
      array = __lowerStaticArray(__setU64, 5, 3, array, BigInt64Array) || __notnull();
      return __liftStaticArray(__getI64, 3, exports.selectionSort_i64_asm(array) >>> 0);
    },
    selectionSort_f64_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_f64_asm(~lib/staticarray/StaticArray<f64>) => ~lib/staticarray/StaticArray<f64>
      array = __lowerStaticArray(__setF64, 6, 3, array, Float64Array) || __notnull();
      return __liftStaticArray(__getF64, 3, exports.selectionSort_f64_asm(array) >>> 0);
    },
    selectionSort_f32_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_f32_asm(~lib/staticarray/StaticArray<f32>) => ~lib/staticarray/StaticArray<f32>
      array = __lowerStaticArray(__setF32, 7, 2, array, Float32Array) || __notnull();
      return __liftStaticArray(__getF32, 2, exports.selectionSort_f32_asm(array) >>> 0);
    },
    selectionSort_u32_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_u32_asm(~lib/staticarray/StaticArray<u32>) => ~lib/staticarray/StaticArray<u32>
      array = __lowerStaticArray(__setU32, 9, 2, array, Uint32Array) || __notnull();
      return __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, exports.selectionSort_u32_asm(array) >>> 0);
    },
    selectionSort_i32_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_i32_asm(~lib/staticarray/StaticArray<i32>) => ~lib/staticarray/StaticArray<i32>
      array = __lowerStaticArray(__setU32, 8, 2, array, Int32Array) || __notnull();
      return __liftStaticArray(__getI32, 2, exports.selectionSort_i32_asm(array) >>> 0);
    },
    selectionSort_u16_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_u16_asm(~lib/staticarray/StaticArray<u16>) => ~lib/staticarray/StaticArray<u16>
      array = __lowerStaticArray(__setU16, 10, 1, array, Uint16Array) || __notnull();
      return __liftStaticArray(__getU16, 1, exports.selectionSort_u16_asm(array) >>> 0);
    },
    selectionSort_i16_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_i16_asm(~lib/staticarray/StaticArray<i16>) => ~lib/staticarray/StaticArray<i16>
      array = __lowerStaticArray(__setU16, 11, 1, array, Int16Array) || __notnull();
      return __liftStaticArray(__getI16, 1, exports.selectionSort_i16_asm(array) >>> 0);
    },
    selectionSort_u8_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_u8_asm(~lib/staticarray/StaticArray<u8>) => ~lib/staticarray/StaticArray<u8>
      array = __lowerStaticArray(__setU8, 12, 0, array, Uint8Array) || __notnull();
      return __liftStaticArray(__getU8, 0, exports.selectionSort_u8_asm(array) >>> 0);
    },
    selectionSort_i8_asm(array) {
      // src/algorithms/sort/selection-sort/selectionSort_i8_asm(~lib/staticarray/StaticArray<i8>) => ~lib/staticarray/StaticArray<i8>
      array = __lowerStaticArray(__setU8, 13, 0, array, Int8Array) || __notnull();
      return __liftStaticArray(__getI8, 0, exports.selectionSort_i8_asm(array) >>> 0);
    },
    kMean_u64_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_u64_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 4, 3, value, BigUint64Array) || __notnull()); }, 14, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(pointer => BigInt.asUintN(64, __getU64(pointer)), 3, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_u64_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_i64_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_i64_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU64, 5, 3, value, BigInt64Array) || __notnull()); }, 15, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getI64, 3, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_i64_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_f64_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_f64_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF64, 6, 3, value, Float64Array) || __notnull()); }, 16, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getF64, 3, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_f64_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_f32_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_f32_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setF32, 7, 2, value, Float32Array) || __notnull()); }, 17, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getF32, 2, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_f32_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_u32_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_u32_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 9, 2, value, Uint32Array) || __notnull()); }, 18, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(pointer => __getU32(pointer) >>> 0, 2, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_u32_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_i32_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_i32_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU32, 8, 2, value, Int32Array) || __notnull()); }, 19, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getI32, 2, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_i32_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_u16_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_u16_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 10, 1, value, Uint16Array) || __notnull()); }, 20, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getU16, 1, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_u16_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_i16_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_i16_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU16, 11, 1, value, Int16Array) || __notnull()); }, 21, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getI16, 1, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_i16_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_u8_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_u8_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 12, 0, value, Uint8Array) || __notnull()); }, 22, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getU8, 0, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_u8_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
    kMean_i8_asm(numberOfCluster, points, maxLoops, tolerance) {
      // src/algorithms/statistics/k-mean/kMean_i8_asm(i32, ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>, i32?, f64?) => ~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>>
      points = __lowerStaticArray((pointer, value) => { __setU32(pointer, __lowerStaticArray(__setU8, 13, 0, value, Int8Array) || __notnull()); }, 23, 2, points) || __notnull();
      exports.__setArgumentsLength(arguments.length);
      return __liftStaticArray(pointer => __liftStaticArray(pointer => __liftStaticArray(__getI8, 0, __getU32(pointer)), 2, __getU32(pointer)), 2, exports.kMean_i8_asm(numberOfCluster, points, maxLoops, tolerance) >>> 0);
    },
  }, exports);
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __liftStaticArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      length = __getU32(pointer - 4) >>> align,
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(pointer + (i << align >>> 0));
    return values;
  }
  function __lowerStaticArray(lowerElement, id, align, values, typedConstructor) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, id)) >>> 0;
    if (typedConstructor) {
      new typedConstructor(memory.buffer, buffer, length).set(values);
    } else {
      for (let i = 0; i < length; i++) lowerElement(buffer + (i << align >>> 0), values[i]);
    }
    exports.__unpin(buffer);
    return buffer;
  }
  const refcounts = new Map();
  function __retain(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount) refcounts.set(pointer, refcount + 1);
      else refcounts.set(exports.__pin(pointer), 1);
    }
    return pointer;
  }
  function __release(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount === 1) exports.__unpin(pointer), refcounts.delete(pointer);
      else if (refcount) refcounts.set(pointer, refcount - 1);
      else throw Error(`invalid refcount '${refcount}' for reference '${pointer}'`);
    }
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
  function __setU8(pointer, value) {
    try {
      __dataview.setUint8(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint8(pointer, value, true);
    }
  }
  function __setU16(pointer, value) {
    try {
      __dataview.setUint16(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint16(pointer, value, true);
    }
  }
  function __setU32(pointer, value) {
    try {
      __dataview.setUint32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint32(pointer, value, true);
    }
  }
  function __setU64(pointer, value) {
    try {
      __dataview.setBigUint64(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setBigUint64(pointer, value, true);
    }
  }
  function __setF32(pointer, value) {
    try {
      __dataview.setFloat32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setFloat32(pointer, value, true);
    }
  }
  function __setF64(pointer, value) {
    try {
      __dataview.setFloat64(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setFloat64(pointer, value, true);
    }
  }
  function __getI8(pointer) {
    try {
      return __dataview.getInt8(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt8(pointer, true);
    }
  }
  function __getU8(pointer) {
    try {
      return __dataview.getUint8(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint8(pointer, true);
    }
  }
  function __getI16(pointer) {
    try {
      return __dataview.getInt16(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt16(pointer, true);
    }
  }
  function __getU16(pointer) {
    try {
      return __dataview.getUint16(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint16(pointer, true);
    }
  }
  function __getI32(pointer) {
    try {
      return __dataview.getInt32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt32(pointer, true);
    }
  }
  function __getU32(pointer) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  function __getI64(pointer) {
    try {
      return __dataview.getBigInt64(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getBigInt64(pointer, true);
    }
  }
  function __getU64(pointer) {
    try {
      return __dataview.getBigUint64(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getBigUint64(pointer, true);
    }
  }
  function __getF32(pointer) {
    try {
      return __dataview.getFloat32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getFloat32(pointer, true);
    }
  }
  function __getF64(pointer) {
    try {
      return __dataview.getFloat64(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getFloat64(pointer, true);
    }
  }
  return adaptedExports;
}
export const {
  memory,
  average_u64_asm,
  average_i64_asm,
  average_f64_asm,
  average_f32_asm,
  average_i32_asm,
  average_u32_asm,
  average_u16_asm,
  average_i16_asm,
  average_u8_asm,
  average_i8_asm,
  max_u64_asm,
  max_i64_asm,
  max_f64_asm,
  max_f32_asm,
  max_u32_asm,
  max_i32_asm,
  max_u16_asm,
  max_i16_asm,
  max_u8_asm,
  max_i8_asm,
  min_u64_asm,
  min_i64_asm,
  min_f64_asm,
  min_f32_asm,
  min_u32_asm,
  min_i32_asm,
  min_u16_asm,
  min_i16_asm,
  min_u8_asm,
  min_i8_asm,
  sum_u64_asm,
  sum_i64_asm,
  sum_f64_asm,
  sum_f32_asm,
  sum_u32_asm,
  sum_i32_asm,
  sum_u16_asm,
  sum_i16_asm,
  sum_u8_asm,
  sum_i8_asm,
  matrixAddition_u64_asm,
  matrixAddition_i64_asm,
  matrixAddition_f64_asm,
  matrixAddition_f32_asm,
  matrixAddition_u32_asm,
  matrixAddition_i32_asm,
  matrixAddition_u16_asm,
  matrixAddition_i16_asm,
  matrixAddition_u8_asm,
  matrixAddition_i8_asm,
  matrixMultiplication_u64_asm,
  matrixMultiplication_i64_asm,
  matrixMultiplication_f64_asm,
  matrixMultiplication_f32_asm,
  matrixMultiplication_u32_asm,
  matrixMultiplication_i32_asm,
  matrixMultiplication_u16_asm,
  matrixMultiplication_i16_asm,
  matrixMultiplication_u8_asm,
  matrixMultiplication_i8_asm,
  matrixSubtraction_u64_asm,
  matrixSubtraction_i64_asm,
  matrixSubtraction_f64_asm,
  matrixSubtraction_f32_asm,
  matrixSubtraction_u32_asm,
  matrixSubtraction_i32_asm,
  matrixSubtraction_u16_asm,
  matrixSubtraction_i16_asm,
  matrixSubtraction_u8_asm,
  matrixSubtraction_i8_asm,
  binarySearch_u64_asm,
  binarySearch_i64_asm,
  binarySearch_f64_asm,
  binarySearch_f32_asm,
  binarySearch_u32_asm,
  binarySearch_i32_asm,
  binarySearch_u16_asm,
  binarySearch_i16_asm,
  binarySearch_u8_asm,
  binarySearch_i8_asm,
  interpolationSearch_u64_asm,
  interpolationSearch_i64_asm,
  interpolationSearch_f64_asm,
  interpolationSearch_f32_asm,
  interpolationSearch_u32_asm,
  interpolationSearch_i32_asm,
  interpolationSearch_u16_asm,
  interpolationSearch_i16_asm,
  interpolationSearch_u8_asm,
  interpolationSearch_i8_asm,
  metaBinarySearch_u64_asm,
  metaBinarySearch_i64_asm,
  metaBinarySearch_f64_asm,
  metaBinarySearch_f32_asm,
  metaBinarySearch_u32_asm,
  metaBinarySearch_i32_asm,
  metaBinarySearch_u16_asm,
  metaBinarySearch_i16_asm,
  metaBinarySearch_u8_asm,
  metaBinarySearch_i8_asm,
  bubbleSort_u64_asm,
  bubbleSort_i64_asm,
  bubbleSort_f64_asm,
  bubbleSort_f32_asm,
  bubbleSort_u32_asm,
  bubbleSort_i32_asm,
  bubbleSort_u16_asm,
  bubbleSort_i16_asm,
  bubbleSort_u8_asm,
  bubbleSort_i8_asm,
  mergeSort_u64_asm,
  mergeSort_i64_asm,
  mergeSort_f64_asm,
  mergeSort_f32_asm,
  mergeSort_u32_asm,
  mergeSort_i32_asm,
  mergeSort_u16_asm,
  mergeSort_i16_asm,
  mergeSort_u8_asm,
  mergeSort_i8_asm,
  quickSort_u64_asm,
  quickSort_i64_asm,
  quickSort_f64_asm,
  quickSort_f32_asm,
  quickSort_u32_asm,
  quickSort_i32_asm,
  quickSort_u16_asm,
  quickSort_i16_asm,
  quickSort_u8_asm,
  quickSort_i8_asm,
  selectionSort_u64_asm,
  selectionSort_i64_asm,
  selectionSort_f64_asm,
  selectionSort_f32_asm,
  selectionSort_u32_asm,
  selectionSort_i32_asm,
  selectionSort_u16_asm,
  selectionSort_i16_asm,
  selectionSort_u8_asm,
  selectionSort_i8_asm,
  kMean_u64_asm,
  kMean_i64_asm,
  kMean_f64_asm,
  kMean_f32_asm,
  kMean_u32_asm,
  kMean_i32_asm,
  kMean_u16_asm,
  kMean_i16_asm,
  kMean_u8_asm,
  kMean_i8_asm,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
  }
))(new URL("release.wasm", import.meta.url));
