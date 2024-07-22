(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32 i32)))
 (type $3 (func (param i32 i32 i32 f64) (result i32)))
 (type $4 (func (param i32 i32 i32 i32)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (param i32 i32 f64) (result i32)))
 (type $7 (func (param i32 i64) (result i32)))
 (type $8 (func (param i32) (result i64)))
 (type $9 (func (param i32 i32)))
 (type $10 (func (param i32 i32 i32 i32) (result i32)))
 (type $11 (func (param i32)))
 (type $12 (func))
 (type $13 (func (param i32 f64) (result i32)))
 (type $14 (func (param i32 f32) (result i32)))
 (type $15 (func (param i32) (result f64)))
 (type $16 (func (param i32) (result f32)))
 (type $17 (func (param i32 i32 i64)))
 (type $18 (func (result f64)))
 (type $19 (func (param i32 i32) (result i64)))
 (type $20 (func (param i32 i32 i32 i64) (result i32)))
 (type $21 (func (result i32)))
 (type $22 (func (param f64) (result f64)))
 (type $23 (func (param i64) (result i64)))
 (type $24 (func (param i32 i32) (result f64)))
 (type $25 (func (param i32 i32) (result f32)))
 (type $26 (func (param i32 i32 f64)))
 (type $27 (func (param i32 i32 f32)))
 (type $28 (func (param i32 i32 i32 f32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1808))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34716))
 (memory $0 2 65536)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $2 (i32.const 1164) "|")
 (data $2.1 (i32.const 1176) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $3 (i32.const 1292) ",")
 (data $3.1 (i32.const 1304) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $4 (i32.const 1340) "<")
 (data $4.1 (i32.const 1352) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $5 (i32.const 1404) "<")
 (data $5.1 (i32.const 1416) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $8 (i32.const 1532) ",")
 (data $8.1 (i32.const 1544) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $10 (i32.const 1612) "<")
 (data $10.1 (i32.const 1624) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $11 (i32.const 1676) "<")
 (data $11.1 (i32.const 1688) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $12 (i32.const 1740) "<")
 (data $12.1 (i32.const 1752) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $13 (i32.const 1808) "\"\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00$\02\00\00$\n\00\00$\1a\00\00$\19\00\00$\t\00\00$\01\00\00\a4\00\00\00\a4\08\00\00d\00\00\00d\08\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A\00\00\04A")
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "average_u64_asm" (func $export:src/algorithms/basic/average/average_u64_asm))
 (export "average_i64_asm" (func $export:src/algorithms/basic/average/average_i64_asm))
 (export "average_f64_asm" (func $export:src/algorithms/basic/average/average_f64_asm))
 (export "average_f32_asm" (func $export:src/algorithms/basic/average/average_f32_asm))
 (export "average_i32_asm" (func $export:src/algorithms/basic/average/average_i32_asm))
 (export "average_u32_asm" (func $export:src/algorithms/basic/average/average_u32_asm))
 (export "average_u16_asm" (func $export:src/algorithms/basic/average/average_u16_asm))
 (export "average_i16_asm" (func $export:src/algorithms/basic/average/average_i16_asm))
 (export "average_u8_asm" (func $export:src/algorithms/basic/average/average_u8_asm))
 (export "average_i8_asm" (func $export:src/algorithms/basic/average/average_i8_asm))
 (export "max_u64_asm" (func $export:src/algorithms/basic/max/max_u64_asm))
 (export "max_i64_asm" (func $export:src/algorithms/basic/max/max_i64_asm))
 (export "max_f64_asm" (func $export:src/algorithms/basic/max/max_f64_asm))
 (export "max_f32_asm" (func $export:src/algorithms/basic/max/max_f32_asm))
 (export "max_u32_asm" (func $export:src/algorithms/basic/max/max_u32_asm))
 (export "max_i32_asm" (func $export:src/algorithms/basic/max/max_i32_asm))
 (export "max_u16_asm" (func $export:src/algorithms/basic/max/max_u16_asm))
 (export "max_i16_asm" (func $export:src/algorithms/basic/max/max_i16_asm))
 (export "max_u8_asm" (func $export:src/algorithms/basic/max/max_u8_asm))
 (export "max_i8_asm" (func $export:src/algorithms/basic/max/max_i8_asm))
 (export "min_u64_asm" (func $export:src/algorithms/basic/min/min_u64_asm))
 (export "min_i64_asm" (func $export:src/algorithms/basic/min/min_i64_asm))
 (export "min_f64_asm" (func $export:src/algorithms/basic/min/min_f64_asm))
 (export "min_f32_asm" (func $export:src/algorithms/basic/min/min_f32_asm))
 (export "min_u32_asm" (func $export:src/algorithms/basic/min/min_u32_asm))
 (export "min_i32_asm" (func $export:src/algorithms/basic/min/min_i32_asm))
 (export "min_u16_asm" (func $export:src/algorithms/basic/min/min_u16_asm))
 (export "min_i16_asm" (func $export:src/algorithms/basic/min/min_i16_asm))
 (export "min_u8_asm" (func $export:src/algorithms/basic/min/min_u8_asm))
 (export "min_i8_asm" (func $export:src/algorithms/basic/min/min_i8_asm))
 (export "sum_u64_asm" (func $export:src/algorithms/basic/sum/sum_u64_asm))
 (export "sum_i64_asm" (func $export:src/algorithms/basic/sum/sum_i64_asm))
 (export "sum_f64_asm" (func $export:src/algorithms/basic/sum/sum_f64_asm))
 (export "sum_f32_asm" (func $export:src/algorithms/basic/sum/sum_f32_asm))
 (export "sum_u32_asm" (func $export:src/algorithms/basic/sum/sum_u32_asm))
 (export "sum_i32_asm" (func $export:src/algorithms/basic/sum/sum_i32_asm))
 (export "sum_u16_asm" (func $export:src/algorithms/basic/sum/sum_u16_asm))
 (export "sum_i16_asm" (func $export:src/algorithms/basic/sum/sum_i16_asm))
 (export "sum_u8_asm" (func $export:src/algorithms/basic/sum/sum_u8_asm))
 (export "sum_i8_asm" (func $export:src/algorithms/basic/sum/sum_i8_asm))
 (export "matrixAddition_u64_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u64_asm))
 (export "matrixAddition_i64_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i64_asm))
 (export "matrixAddition_f64_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_f64_asm))
 (export "matrixAddition_f32_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_f32_asm))
 (export "matrixAddition_u32_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u32_asm))
 (export "matrixAddition_i32_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i32_asm))
 (export "matrixAddition_u16_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u16_asm))
 (export "matrixAddition_i16_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i16_asm))
 (export "matrixAddition_u8_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u8_asm))
 (export "matrixAddition_i8_asm" (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i8_asm))
 (export "matrixMultiplication_u64_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u64_asm))
 (export "matrixMultiplication_i64_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i64_asm))
 (export "matrixMultiplication_f64_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f64_asm))
 (export "matrixMultiplication_f32_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f32_asm))
 (export "matrixMultiplication_u32_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u32_asm))
 (export "matrixMultiplication_i32_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i32_asm))
 (export "matrixMultiplication_u16_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u16_asm))
 (export "matrixMultiplication_i16_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i16_asm))
 (export "matrixMultiplication_u8_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u8_asm))
 (export "matrixMultiplication_i8_asm" (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i8_asm))
 (export "matrixSubtraction_u64_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u64_asm))
 (export "matrixSubtraction_i64_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i64_asm))
 (export "matrixSubtraction_f64_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f64_asm))
 (export "matrixSubtraction_f32_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f32_asm))
 (export "matrixSubtraction_u32_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u32_asm))
 (export "matrixSubtraction_i32_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i32_asm))
 (export "matrixSubtraction_u16_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u16_asm))
 (export "matrixSubtraction_i16_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i16_asm))
 (export "matrixSubtraction_u8_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u8_asm))
 (export "matrixSubtraction_i8_asm" (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i8_asm))
 (export "binarySearch_u64_asm" (func $export:src/algorithms/search/binary-search/binarySearch_u64_asm))
 (export "binarySearch_i64_asm" (func $export:src/algorithms/search/binary-search/binarySearch_i64_asm))
 (export "binarySearch_f64_asm" (func $export:src/algorithms/search/binary-search/binarySearch_f64_asm))
 (export "binarySearch_f32_asm" (func $export:src/algorithms/search/binary-search/binarySearch_f32_asm))
 (export "binarySearch_u32_asm" (func $export:src/algorithms/search/binary-search/binarySearch_u32_asm))
 (export "binarySearch_i32_asm" (func $export:src/algorithms/search/binary-search/binarySearch_i32_asm))
 (export "binarySearch_u16_asm" (func $export:src/algorithms/search/binary-search/binarySearch_u16_asm))
 (export "binarySearch_i16_asm" (func $export:src/algorithms/search/binary-search/binarySearch_i16_asm))
 (export "binarySearch_u8_asm" (func $export:src/algorithms/search/binary-search/binarySearch_u8_asm))
 (export "binarySearch_i8_asm" (func $export:src/algorithms/search/binary-search/binarySearch_i8_asm))
 (export "interpolationSearch_u64_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u64_asm))
 (export "interpolationSearch_i64_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i64_asm))
 (export "interpolationSearch_f64_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_f64_asm))
 (export "interpolationSearch_f32_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_f32_asm))
 (export "interpolationSearch_u32_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u32_asm))
 (export "interpolationSearch_i32_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i32_asm))
 (export "interpolationSearch_u16_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u16_asm))
 (export "interpolationSearch_i16_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i16_asm))
 (export "interpolationSearch_u8_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u8_asm))
 (export "interpolationSearch_i8_asm" (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i8_asm))
 (export "metaBinarySearch_u64_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u64_asm))
 (export "metaBinarySearch_i64_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i64_asm))
 (export "metaBinarySearch_f64_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_f64_asm))
 (export "metaBinarySearch_f32_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_f32_asm))
 (export "metaBinarySearch_u32_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u32_asm))
 (export "metaBinarySearch_i32_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i32_asm))
 (export "metaBinarySearch_u16_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u16_asm))
 (export "metaBinarySearch_i16_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i16_asm))
 (export "metaBinarySearch_u8_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u8_asm))
 (export "metaBinarySearch_i8_asm" (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i8_asm))
 (export "bubbleSort_u64_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u64_asm))
 (export "bubbleSort_i64_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i64_asm))
 (export "bubbleSort_f64_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_f64_asm))
 (export "bubbleSort_f32_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_f32_asm))
 (export "bubbleSort_u32_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u32_asm))
 (export "bubbleSort_i32_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i32_asm))
 (export "bubbleSort_u16_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u16_asm))
 (export "bubbleSort_i16_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i16_asm))
 (export "bubbleSort_u8_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u8_asm))
 (export "bubbleSort_i8_asm" (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i8_asm))
 (export "mergeSort_u64_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_u64_asm))
 (export "mergeSort_i64_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_i64_asm))
 (export "mergeSort_f64_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_f64_asm))
 (export "mergeSort_f32_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_f32_asm))
 (export "mergeSort_u32_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_u32_asm))
 (export "mergeSort_i32_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_i32_asm))
 (export "mergeSort_u16_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_u16_asm))
 (export "mergeSort_i16_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_i16_asm))
 (export "mergeSort_u8_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_u8_asm))
 (export "mergeSort_i8_asm" (func $export:src/algorithms/sort/merge-sort/mergeSort_i8_asm))
 (export "quickSort_u64_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_u64_asm))
 (export "quickSort_i64_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_i64_asm))
 (export "quickSort_f64_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_f64_asm))
 (export "quickSort_f32_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_f32_asm))
 (export "quickSort_u32_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_u32_asm))
 (export "quickSort_i32_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_i32_asm))
 (export "quickSort_u16_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_u16_asm))
 (export "quickSort_i16_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_i16_asm))
 (export "quickSort_u8_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_u8_asm))
 (export "quickSort_i8_asm" (func $export:src/algorithms/sort/quick-sort/quickSort_i8_asm))
 (export "selectionSort_u64_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_u64_asm))
 (export "selectionSort_i64_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_i64_asm))
 (export "selectionSort_f64_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_f64_asm))
 (export "selectionSort_f32_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_f32_asm))
 (export "selectionSort_u32_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_u32_asm))
 (export "selectionSort_i32_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_i32_asm))
 (export "selectionSort_u16_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_u16_asm))
 (export "selectionSort_i16_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_i16_asm))
 (export "selectionSort_u8_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_u8_asm))
 (export "selectionSort_i8_asm" (func $export:src/algorithms/sort/selection-sort/selectionSort_i8_asm))
 (export "kMean_u64_asm" (func $export:src/algorithms/statistics/k-mean/kMean_u64_asm@varargs))
 (export "kMean_i64_asm" (func $export:src/algorithms/statistics/k-mean/kMean_i64_asm@varargs))
 (export "kMean_f64_asm" (func $export:src/algorithms/statistics/k-mean/kMean_f64_asm@varargs))
 (export "kMean_f32_asm" (func $export:src/algorithms/statistics/k-mean/kMean_f32_asm@varargs))
 (export "kMean_u32_asm" (func $export:src/algorithms/statistics/k-mean/kMean_u32_asm@varargs))
 (export "kMean_i32_asm" (func $export:src/algorithms/statistics/k-mean/kMean_i32_asm@varargs))
 (export "kMean_u16_asm" (func $export:src/algorithms/statistics/k-mean/kMean_u16_asm@varargs))
 (export "kMean_i16_asm" (func $export:src/algorithms/statistics/k-mean/kMean_i16_asm@varargs))
 (export "kMean_u8_asm" (func $export:src/algorithms/statistics/k-mean/kMean_u8_asm@varargs))
 (export "kMean_i8_asm" (func $export:src/algorithms/statistics/k-mean/kMean_i8_asm@varargs))
 (start $~start)
 (func $~lib/staticarray/StaticArray<u64>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 3
  i32.shr_u
 )
 (func $~lib/staticarray/StaticArray<f32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
 )
 (func $~lib/staticarray/StaticArray<u16>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/staticarray/StaticArray<u8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 1312
  call $~lib/rt/itcms/__visit
  i32.const 1184
  call $~lib/rt/itcms/__visit
  i32.const 1360
  call $~lib/rt/itcms/__visit
  i32.const 1696
  call $~lib/rt/itcms/__visit
  i32.const 1760
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  call $~lib/rt/itcms/Object#get:next
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1424
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   i32.eqz
   local.get $0
   i32.const 34716
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 1808
   i32.load
   i32.gt_u
   if
    i32.const 1056
    i32.const 1552
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 1812
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $2
  select
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1632
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1632
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1632
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   call $~lib/rt/itcms/Object#set:prev
  end
  local.get $5
  if
   local.get $5
   local.get $4
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1632
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1632
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   call $~lib/rt/tlsf/Root#set:flMap
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1632
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   call $~lib/rt/tlsf/Root#set:flMap
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1632
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1632
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1632
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  if
   local.get $3
   local.get $1
   call $~lib/rt/itcms/Object#set:nextWithColor
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1632
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1632
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1632
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/Object#set:prev
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 34720
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  i32.const 36288
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 34720
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 34720
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 34720
  i32.const 36292
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 34720
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 34716
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.ne
    if
     i32.const 0
     i32.const 1424
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 34716
    i32.lt_u
    if
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:nextWithColor
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/Object#set:prev
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     call $~lib/rt/itcms/Object#get:size
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $1
     i32.const 34716
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $2
      local.get $1
      i32.const 4
      i32.sub
      local.set $0
      local.get $1
      i32.const 15
      i32.and
      i32.const 1
      local.get $1
      select
      if (result i32)
       i32.const 1
      else
       local.get $0
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1632
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      local.get $0
      i32.load
      i32.const 1
      i32.or
      call $~lib/rt/tlsf/Root#set:flMap
      local.get $2
      local.get $0
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/roundSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.const 27
  local.get $0
  i32.clz
  i32.sub
  i32.shl
  i32.add
  i32.const 1
  i32.sub
  local.get $0
  local.get $0
  i32.const 536870910
  i32.lt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   call $~lib/rt/tlsf/roundSize
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1632
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1632
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1360
   i32.const 1632
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $1
    call $~lib/rt/tlsf/roundSize
   else
    local.get $1
   end
   local.set $2
   memory.size
   local.tee $3
   local.get $2
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $3
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $3
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $3
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1632
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1632
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $4
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1632
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $1
   local.get $4
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/tlsf/Root#set:flMap
   local.get $2
   i32.const 4
   i32.add
   local.get $1
   i32.add
   local.tee $1
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/tlsf/Root#set:flMap
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $4
   i32.const -2
   i32.and
   call $~lib/rt/tlsf/Root#set:flMap
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   call $~lib/rt/tlsf/Root#set:flMap
  end
  local.get $2
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1360
   i32.const 1424
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$40
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$40
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/math/NativeMath.log (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  i32.const 31
  i32.shr_u
  local.tee $4
  local.get $1
  i32.const 1048576
  i32.lt_u
  i32.or
  if
   local.get $2
   i64.const 1
   i64.shl
   i64.eqz
   if
    f64.const -1
    local.get $0
    local.get $0
    f64.mul
    f64.div
    return
   end
   local.get $4
   if
    local.get $0
    local.get $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   i32.const -54
   local.set $5
   local.get $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret_f64
   local.tee $2
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $1
  else
   local.get $1
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   else
    local.get $2
    i64.const 32
    i64.shl
    i64.eqz
    local.get $1
    i32.const 1072693248
    i32.eq
    i32.and
    if
     f64.const 0
     return
    end
   end
  end
  local.get $2
  i64.const 4294967295
  i64.and
  local.get $1
  i32.const 614242
  i32.add
  local.tee $1
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  f64.reinterpret_i64
  f64.const -1
  f64.add
  local.tee $7
  f64.const 0.5
  f64.mul
  local.get $7
  f64.mul
  local.set $0
  local.get $7
  local.get $7
  f64.const 2
  f64.add
  f64.div
  local.tee $8
  local.get $8
  f64.mul
  local.tee $3
  local.get $3
  f64.mul
  local.set $6
  local.get $8
  local.get $0
  local.get $3
  local.get $6
  local.get $6
  local.get $6
  f64.const 0.14798198605116586
  f64.mul
  f64.const 0.1818357216161805
  f64.add
  f64.mul
  f64.const 0.2857142874366239
  f64.add
  f64.mul
  f64.const 0.6666666666666735
  f64.add
  f64.mul
  local.get $6
  local.get $6
  local.get $6
  f64.const 0.15313837699209373
  f64.mul
  f64.const 0.22222198432149784
  f64.add
  f64.mul
  f64.const 0.3999999999940942
  f64.add
  f64.mul
  f64.add
  f64.add
  f64.mul
  local.get $5
  local.get $1
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  i32.add
  f64.convert_i32_s
  local.tee $3
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  local.get $0
  f64.sub
  local.get $7
  f64.add
  local.get $3
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/murmurHash3 (param $0 i64) (result i64)
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $0
  i64.const 33
  i64.shr_u
  local.get $0
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $0
  i64.const 33
  i64.shr_u
  local.get $0
  i64.xor
 )
 (func $~lib/math/splitMix32 (param $0 i32) (result i32)
  local.get $0
  i32.const 1831565813
  i32.add
  local.tee $0
  i32.const 1
  i32.or
  local.get $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  i32.mul
  local.tee $0
  i32.const 61
  i32.or
  local.get $0
  local.get $0
  i32.const 7
  i32.shr_u
  i32.xor
  i32.mul
  local.get $0
  i32.add
  local.get $0
  i32.xor
  local.tee $0
  i32.const 14
  i32.shr_u
  local.get $0
  i32.xor
 )
 (func $~lib/math/NativeMath.random (result f64)
  (local $0 i64)
  (local $1 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.tee $0
   i64.eqz
   if
    i64.const -7046029254386353131
    local.set $0
   end
   local.get $0
   call $~lib/math/murmurHash3
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   call $~lib/math/murmurHash3
   global.set $~lib/math/random_state1_64
   local.get $0
   i32.wrap_i64
   call $~lib/math/splitMix32
   global.set $~lib/math/random_state0_32
   global.get $~lib/math/random_state0_32
   call $~lib/math/splitMix32
   drop
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $1
  global.get $~lib/math/random_state1_64
  local.tee $0
  global.set $~lib/math/random_state0_64
  local.get $1
  local.get $1
  i64.const 23
  i64.shl
  i64.xor
  local.tee $1
  local.get $1
  i64.const 17
  i64.shr_u
  i64.xor
  local.get $0
  i64.xor
  local.get $0
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $0
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const -1
  f64.add
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 1696
    i32.const 1424
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 1760
   i32.const 1424
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $0
   call $~lib/rt/itcms/Object#unlink
   local.get $0
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $invalid
    block $~lib/staticarray/StaticArray<i8>
     block $~lib/staticarray/StaticArray<u8>
      block $~lib/staticarray/StaticArray<i16>
       block $~lib/staticarray/StaticArray<u16>
        block $~lib/staticarray/StaticArray<u32>
         block $~lib/staticarray/StaticArray<i32>
          block $~lib/staticarray/StaticArray<f32>
           block $~lib/staticarray/StaticArray<f64>
            block $~lib/staticarray/StaticArray<i64>
             block $~lib/staticarray/StaticArray<u64>
              block $~lib/arraybuffer/ArrayBufferView
               block $~lib/string/String
                block $~lib/arraybuffer/ArrayBuffer
                 block $~lib/object/Object
                  local.get $0
                  i32.const 8
                  i32.sub
                  i32.load
                  br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/staticarray/StaticArray<u64> $~lib/staticarray/StaticArray<i64> $~lib/staticarray/StaticArray<f64> $~lib/staticarray/StaticArray<f32> $~lib/staticarray/StaticArray<i32> $~lib/staticarray/StaticArray<u32> $~lib/staticarray/StaticArray<u16> $~lib/staticarray/StaticArray<i16> $~lib/staticarray/StaticArray<u8> $~lib/staticarray/StaticArray<i8> $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $invalid
                 end
                 return
                end
                return
               end
               return
              end
              local.get $0
              i32.load
              local.tee $0
              if
               local.get $0
               call $~lib/rt/itcms/__visit
              end
              return
             end
             return
            end
            return
           end
           return
          end
          return
         end
         return
        end
        return
       end
       return
      end
      return
     end
     return
    end
    return
   end
   unreachable
  end
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $0
    i32.load
    local.tee $2
    if
     local.get $2
     call $~lib/rt/itcms/__visit
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 34716
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1472
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1504
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 1584
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 1948
  i32.lt_s
  if
   i32.const 34736
   i32.const 34784
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/staticarray/StaticArray<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<i64>#__get (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<u16>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<i16>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.add
  i32.load8_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<i8>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.add
  i32.load8_s
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 1184
   i32.const 1120
   i32.const 82
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $2
  if
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 295
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 20
   i32.sub
   local.tee $1
   call $~lib/rt/itcms/Object#get:color
   global.get $~lib/rt/itcms/white
   i32.eq
   if
    local.get $0
    i32.const 20
    i32.sub
    local.tee $0
    call $~lib/rt/itcms/Object#get:color
    local.tee $2
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    if
     local.get $0
     call $~lib/rt/itcms/Object#makeGray
    else
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
     local.get $2
     i32.const 3
     i32.eq
     i32.and
     if
      local.get $1
      call $~lib/rt/itcms/Object#makeGray
     end
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/staticarray/StaticArray<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_u64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<u64>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<u64>#__get
      local.get $7
      i64.add
      call $~lib/staticarray/StaticArray<u64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_i64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<i64>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<i64>#__get
      local.get $7
      i64.add
      call $~lib/staticarray/StaticArray<u64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/staticarray/StaticArray<f64>#__set (param $0 i32) (param $1 i32) (param $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_f64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<f64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f64>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $7
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f64>#__get
      f64.add
      call $~lib/staticarray/StaticArray<f64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/staticarray/StaticArray<f32>#__set (param $0 i32) (param $1 i32) (param $2 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_f32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<f32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f32>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $7
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f32>#__get
      f32.add
      call $~lib/staticarray/StaticArray<f32>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/staticarray/StaticArray<u32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_u32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u32>#__get
      local.get $9
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_i32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i32>#__get
      local.get $9
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/staticarray/StaticArray<u16>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_u16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u16>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u16>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u16>#__get
      local.get $9
      i32.add
      call $~lib/staticarray/StaticArray<u16>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_i16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i16>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i16>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i16>#__get
      local.get $9
      i32.add
      call $~lib/staticarray/StaticArray<u16>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/staticarray/StaticArray<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.get $2
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_u8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u8>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u8>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u8>#__get
      local.get $9
      i32.add
      call $~lib/staticarray/StaticArray<u8>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-addition/matrixAddition_i8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i8>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i8>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i8>#__get
      local.get $9
      i32.add
      call $~lib/staticarray/StaticArray<u8>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
  local.tee $10
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<u64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $10
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i64.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|3
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $11
        local.get $2
        call $~lib/staticarray/StaticArray<u64>#__get
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $6
        local.get $11
        local.get $3
        call $~lib/staticarray/StaticArray<u64>#__get
        local.get $9
        i64.mul
        i64.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|3
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      local.get $10
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u64>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>#constructor
  local.tee $10
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<i64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $10
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i64.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|3
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $11
        local.get $2
        call $~lib/staticarray/StaticArray<i64>#__get
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $6
        local.get $11
        local.get $3
        call $~lib/staticarray/StaticArray<i64>#__get
        local.get $9
        i64.mul
        i64.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|3
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      local.get $10
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u64>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>#constructor
  local.tee $10
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<f64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $10
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      f64.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|3
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $11
        local.get $2
        call $~lib/staticarray/StaticArray<f64>#__get
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $6
        local.get $9
        local.get $11
        local.get $3
        call $~lib/staticarray/StaticArray<f64>#__get
        f64.mul
        f64.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|3
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      local.get $10
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<f64>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>#constructor
  local.tee $10
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<f32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $10
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      f32.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|3
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $11
        local.get $2
        call $~lib/staticarray/StaticArray<f32>#__get
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $11
        i32.store
        local.get $6
        local.get $9
        local.get $11
        local.get $3
        call $~lib/staticarray/StaticArray<f32>#__get
        f32.mul
        f32.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|3
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      local.get $10
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<f32>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>#constructor
  local.tee $9
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<u32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $9
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i32.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|3
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $10
        local.get $2
        call $~lib/staticarray/StaticArray<u32>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $6
        local.get $10
        local.get $3
        call $~lib/staticarray/StaticArray<u32>#__get
        local.get $11
        i32.mul
        i32.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|3
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>#constructor
  local.tee $9
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $9
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i32.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|3
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $10
        local.get $2
        call $~lib/staticarray/StaticArray<i32>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $6
        local.get $10
        local.get $3
        call $~lib/staticarray/StaticArray<i32>#__get
        local.get $11
        i32.mul
        i32.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|3
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>#constructor
  local.tee $9
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<u16>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $9
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i32.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|4
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $10
        local.get $2
        call $~lib/staticarray/StaticArray<u16>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $6
        local.get $10
        local.get $3
        call $~lib/staticarray/StaticArray<u16>#__get
        local.get $11
        i32.mul
        i32.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|4
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u16>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>#constructor
  local.tee $9
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<i16>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $9
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i32.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|4
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $10
        local.get $2
        call $~lib/staticarray/StaticArray<i16>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $6
        local.get $10
        local.get $3
        call $~lib/staticarray/StaticArray<i16>#__get
        local.get $11
        i32.mul
        i32.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|4
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u16>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>#constructor
  local.tee $9
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<u8>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $9
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i32.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|4
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $10
        local.get $2
        call $~lib/staticarray/StaticArray<u8>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $6
        local.get $10
        local.get $3
        call $~lib/staticarray/StaticArray<u8>#__get
        local.get $11
        i32.mul
        i32.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|4
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u8>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>#constructor
  local.tee $9
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store
    local.get $7
    call $~lib/staticarray/StaticArray<i8>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $9
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    i32.const 0
    local.set $3
    loop $for-loop|2
     local.get $3
     local.get $7
     i32.lt_s
     if
      i32.const 0
      local.set $6
      i32.const 0
      local.set $2
      loop $for-loop|4
       local.get $2
       local.get $8
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=4
        local.get $0
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $10
        local.get $2
        call $~lib/staticarray/StaticArray<i8>#__get
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=4
        local.get $1
        local.get $2
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.set $10
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        local.get $6
        local.get $10
        local.get $3
        call $~lib/staticarray/StaticArray<i8>#__get
        local.get $11
        i32.mul
        i32.add
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|4
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $2
      local.get $3
      local.get $6
      call $~lib/staticarray/StaticArray<u8>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|2
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<u64>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $7
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<u64>#__get
      i64.sub
      call $~lib/staticarray/StaticArray<u64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<i64>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $7
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<i64>#__get
      i64.sub
      call $~lib/staticarray/StaticArray<u64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<f64>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f64>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $7
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f64>#__get
      f64.sub
      call $~lib/staticarray/StaticArray<f64>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>#constructor
  local.tee $8
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<f32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $8
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f32>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $7
      local.get $9
      local.get $2
      call $~lib/staticarray/StaticArray<f32>#__get
      f32.sub
      call $~lib/staticarray/StaticArray<f32>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u32>#__get
      i32.sub
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.sub
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u16>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u16>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u16>#__get
      i32.sub
      call $~lib/staticarray/StaticArray<u16>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i16>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i16>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i16>#__get
      i32.sub
      call $~lib/staticarray/StaticArray<u16>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<u8>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u8>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<u8>#__get
      i32.sub
      call $~lib/staticarray/StaticArray<u8>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>#constructor
  local.tee $7
  i32.store offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $4
    call $~lib/staticarray/StaticArray<i8>#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $7
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=4
      local.get $7
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i8>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $1
      local.get $3
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=4
      local.get $6
      local.get $2
      local.get $9
      local.get $8
      local.get $2
      call $~lib/staticarray/StaticArray<i8>#__get
      i32.sub
      call $~lib/staticarray/StaticArray<u8>#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_u64_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $3
    i64.le_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $3
    i64.ge_u
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u64>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $5
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u64>#__get
    i64.sub
    i32.wrap_i64
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u64>#__get
    i64.sub
    i32.wrap_i64
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $3
    i64.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $3
    i64.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u64_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $3
    i64.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u64_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_i64_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $3
    i64.le_s
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $3
    i64.ge_s
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i64>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $5
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i64>#__get
    i64.sub
    i32.wrap_i64
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i64>#__get
    i64.sub
    i32.wrap_i64
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $3
    i64.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $3
    i64.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i64_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $3
    i64.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i64_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_f64_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f64>#__get
    local.get $3
    f64.le
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<f64>#__get
    local.get $3
    f64.ge
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<f64>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $5
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f64>#__get
    f64.sub
    f64.floor
    i32.trunc_sat_f64_s
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f64>#__get
    f64.sub
    f64.floor
    i32.trunc_sat_f64_s
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f64>#__get
    local.get $3
    f64.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f64>#__get
    local.get $3
    f64.lt
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_f64_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f64>#__get
    local.get $3
    f64.gt
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_f64_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_f32_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (result i32)
  (local $4 i32)
  (local $5 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#__get
    local.get $3
    f32.le
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<f32>#__get
    local.get $3
    f32.ge
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<f32>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $5
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#__get
    f32.sub
    f32.floor
    i32.trunc_sat_f32_s
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#__get
    f32.sub
    f32.floor
    i32.trunc_sat_f32_s
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f32>#__get
    local.get $3
    f32.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f32>#__get
    local.get $3
    f32.lt
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_f32_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f32>#__get
    local.get $3
    f32.gt
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_f32_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_u32_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $3
    i32.le_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $3
    i32.ge_u
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u32>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $4
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u32>#__get
    i32.sub
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u32>#__get
    i32.sub
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $3
    i32.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $3
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u32_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $3
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u32_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_i32_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $3
    i32.le_s
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $3
    i32.ge_s
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $4
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i32>#__get
    i32.sub
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i32>#__get
    i32.sub
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $3
    i32.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i32_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i32_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_u16_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $3
    i32.const 65535
    i32.and
    i32.le_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $3
    i32.const 65535
    i32.and
    i32.ge_u
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u16>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $4
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u16>#__get
    i32.sub
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    i32.const 65535
    i32.and
    local.tee $5
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u16>#__get
    i32.sub
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $5
    i32.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $5
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u16_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $3
    i32.const 65535
    i32.and
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u16_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_i16_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $3
    i32.extend16_s
    i32.le_s
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $3
    i32.extend16_s
    i32.ge_s
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i16>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $4
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i16>#__get
    i32.sub
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    i32.extend16_s
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i16>#__get
    i32.sub
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $3
    i32.extend16_s
    i32.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $3
    i32.extend16_s
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i16_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $3
    i32.extend16_s
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i16_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_u8_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $3
    i32.const 255
    i32.and
    i32.le_u
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $3
    i32.const 255
    i32.and
    i32.ge_u
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u8>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $4
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u8>#__get
    i32.sub
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    i32.const 255
    i32.and
    local.tee $5
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u8>#__get
    i32.sub
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $5
    i32.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $5
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u8_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $3
    i32.const 255
    i32.and
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_u8_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/interpolation-search/_interpolationSearch_i8_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $folding-inner0
   local.get $1
   local.get $2
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $3
    i32.extend8_s
    i32.le_s
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $3
    i32.extend8_s
    i32.ge_s
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i8>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.sub
    local.get $4
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i8>#__get
    i32.sub
    i32.div_s
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $4
    local.get $3
    i32.extend8_s
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i8>#__get
    i32.sub
    i32.mul
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $3
    i32.extend8_s
    i32.eq
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $3
    i32.extend8_s
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.get $2
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i8_asm
     local.set $4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $3
    i32.extend8_s
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     local.get $4
     i32.const 1
     i32.sub
     local.get $3
     call $src/algorithms/search/interpolation-search/_interpolationSearch_i8_asm
     local.set $4
     br $folding-inner0
    end
   end
   i32.const -1
   local.set $4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_u64_asm (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<u64>#__get
     local.get $1
     i64.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u64>#__get
      local.get $1
      i64.le_u
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<u64>#__get
   local.get $1
   i64.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_i64_asm (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<i64>#__get
     local.get $1
     i64.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i64>#__get
      local.get $1
      i64.le_s
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<i64>#__get
   local.get $1
   i64.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_f64_asm (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<f64>#__get
     local.get $1
     f64.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<f64>#__get
      local.get $1
      f64.le
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<f64>#__get
   local.get $1
   f64.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_f32_asm (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<f32>#__get
     local.get $1
     f32.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<f32>#__get
      local.get $1
      f32.le
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<f32>#__get
   local.get $1
   f32.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_u32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<u32>#__get
     local.get $1
     i32.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u32>#__get
      local.get $1
      i32.le_u
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<u32>#__get
   local.get $1
   i32.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_i32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<i32>#__get
     local.get $1
     i32.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i32>#__get
      local.get $1
      i32.le_s
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<i32>#__get
   local.get $1
   i32.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_u16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<u16>#__get
     local.get $1
     i32.const 65535
     i32.and
     local.tee $6
     i32.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u16>#__get
      local.get $6
      i32.le_u
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<u16>#__get
   local.get $1
   i32.const 65535
   i32.and
   i32.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_i16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<i16>#__get
     local.get $1
     i32.extend16_s
     i32.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i16>#__get
      local.get $1
      i32.extend16_s
      i32.le_s
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<i16>#__get
   local.get $1
   i32.extend16_s
   i32.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_u8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<u8>#__get
     local.get $1
     i32.const 255
     i32.and
     local.tee $6
     i32.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u8>#__get
      local.get $6
      i32.le_u
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<u8>#__get
   local.get $1
   i32.const 255
   i32.and
   i32.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/search/meta-binary-search/metaBinarySearch_i8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.tee $5
  i32.const 1
  i32.sub
  f64.convert_i32_s
  call $~lib/math/NativeMath.log
  f64.const 2
  call $~lib/math/NativeMath.log
  f64.div
  f64.const 1
  f64.add
  i32.trunc_sat_f64_s
  local.set $4
  block $folding-inner0
   loop $for-loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<i8>#__get
     local.get $1
     i32.extend8_s
     i32.eq
     br_if $folding-inner0
     local.get $5
     local.get $2
     i32.const 1
     local.get $4
     i32.shl
     i32.or
     local.tee $3
     i32.gt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i8>#__get
      local.get $1
      i32.extend8_s
      i32.le_s
     else
      i32.const 0
     end
     if
      local.get $3
      local.set $2
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const -1
   local.get $2
   local.get $0
   local.get $2
   call $~lib/staticarray/StaticArray<i8>#__get
   local.get $1
   i32.extend8_s
   i32.ne
   select
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/algorithms/shared/swapTwo<u64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<u64>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u64>#__get
  call $~lib/staticarray/StaticArray<u64>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u64>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_u64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u64>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<u64>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<u64>#__get
      local.get $4
      i64.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<u64>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<i64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<i64>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<i64>#__get
  call $~lib/staticarray/StaticArray<u64>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u64>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_i64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u64>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<i64>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<i64>#__get
      local.get $4
      i64.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<i64>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<f64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<f64>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<f64>#__get
  call $~lib/staticarray/StaticArray<f64>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<f64>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_f64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u64>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<f64>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<f64>#__get
      local.get $4
      f64.gt
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<f64>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<f32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<f32>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<f32>#__get
  call $~lib/staticarray/StaticArray<f32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_f32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<f32>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<f32>#__get
      local.get $4
      f32.gt
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<f32>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<u32>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u32>#__get
  call $~lib/staticarray/StaticArray<u32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_u32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<u32>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<u32>#__get
      local.get $4
      i32.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<u32>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<i32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<i32>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<i32>#__get
  call $~lib/staticarray/StaticArray<u32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_i32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<i32>#__get
      local.get $4
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<i32>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<u16> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<u16>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u16>#__get
  call $~lib/staticarray/StaticArray<u16>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u16>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_u16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u16>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<u16>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<u16>#__get
      local.get $4
      i32.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<u16>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<i16> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<i16>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<i16>#__get
  call $~lib/staticarray/StaticArray<u16>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u16>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_i16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u16>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<i16>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<i16>#__get
      local.get $4
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<i16>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<u8> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<u8>#__get
  call $~lib/staticarray/StaticArray<u8>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u8>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_u8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u8>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<u8>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<u8>#__get
      local.get $4
      i32.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<u8>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/shared/swapTwo<i8> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<i8>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $0
  local.get $2
  call $~lib/staticarray/StaticArray<i8>#__get
  call $~lib/staticarray/StaticArray<u8>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/staticarray/StaticArray<u8>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/bubble-sort/bubbleSort_i8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $2
   i32.gt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     call $~lib/staticarray/StaticArray<u8>#get:length
     local.get $2
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      call $~lib/staticarray/StaticArray<i8>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<i8>#__get
      local.get $4
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $3
       local.get $1
       call $src/algorithms/shared/swapTwo<i8>
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/merge-sort/merge<u64> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<u64>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $11
  call $~lib/staticarray/StaticArray<u64>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<u64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<u64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $11
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u64>#__get
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $10
    i64.ge_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<u64>#__get
     call $~lib/staticarray/StaticArray<u64>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<u64>#__get
     call $~lib/staticarray/StaticArray<u64>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<u64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<u64>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<u64>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<u64>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<i64> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<i64>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $11
  call $~lib/staticarray/StaticArray<i64>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<i64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<i64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $11
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i64>#__get
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $10
    i64.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<i64>#__get
     call $~lib/staticarray/StaticArray<u64>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<i64>#__get
     call $~lib/staticarray/StaticArray<u64>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i64>#__get
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<i64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<i64>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<i64>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<i64>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<f64> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $11
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<f64>#__get
    call $~lib/staticarray/StaticArray<f64>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<f64>#__get
    call $~lib/staticarray/StaticArray<f64>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $11
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<f64>#__get
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<f64>#__get
    local.get $10
    f64.ge
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<f64>#__get
     call $~lib/staticarray/StaticArray<f64>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<f64>#__get
     call $~lib/staticarray/StaticArray<f64>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<f64>#__get
    call $~lib/staticarray/StaticArray<f64>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<f64>#__get
    call $~lib/staticarray/StaticArray<f64>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<f64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<f64>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<f64>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<f64>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<f32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $11
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    call $~lib/staticarray/StaticArray<f32>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<f32>#__get
    call $~lib/staticarray/StaticArray<f32>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $11
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<f32>#__get
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<f32>#__get
    local.get $10
    f32.ge
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<f32>#__get
     call $~lib/staticarray/StaticArray<f32>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#__get
     call $~lib/staticarray/StaticArray<f32>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<f32>#__get
    call $~lib/staticarray/StaticArray<f32>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $11
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<f32>#__get
    call $~lib/staticarray/StaticArray<f32>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<f32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<f32>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<f32>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<f32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<u32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<u32>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $10
  call $~lib/staticarray/StaticArray<u32>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<u32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<u32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $10
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $2
    i32.ge_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<u32>#__get
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__get
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<u32>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<u32>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<u32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $10
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $10
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $2
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<i32>#__get
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<i32>#__get
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<i32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<i32>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<i32>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<i32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<u16> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<u16>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $10
  call $~lib/staticarray/StaticArray<u16>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<u16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<u16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $10
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u16>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $2
    i32.ge_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<u16>#__get
     call $~lib/staticarray/StaticArray<u16>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<u16>#__get
     call $~lib/staticarray/StaticArray<u16>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<u16> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<u16>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<u16>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<u16>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<i16> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<i16>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $10
  call $~lib/staticarray/StaticArray<i16>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<i16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<i16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $10
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i16>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $2
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<i16>#__get
     call $~lib/staticarray/StaticArray<u16>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<i16>#__get
     call $~lib/staticarray/StaticArray<u16>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i16>#__get
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<i16> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<i16>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<i16>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<i16>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<u8> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $10
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<u8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<u8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $10
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $2
    i32.ge_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<u8>#__get
     call $~lib/staticarray/StaticArray<u8>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<u8>#__get
     call $~lib/staticarray/StaticArray<u8>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<u8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<u8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<u8> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<u8>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<u8>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<u8>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/merge<i8> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $9
  call $~lib/staticarray/StaticArray<i8>#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.sub
  local.tee $10
  call $~lib/staticarray/StaticArray<i8>#constructor
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $7
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $4
    local.get $7
    local.get $0
    local.get $1
    local.get $7
    i32.add
    call $~lib/staticarray/StaticArray<i8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $8
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $8
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    local.get $8
    i32.add
    call $~lib/staticarray/StaticArray<i8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  loop $while-continue|2
   local.get $5
   local.get $10
   i32.lt_s
   local.get $6
   local.get $9
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i8>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $2
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $4
     local.get $6
     call $~lib/staticarray/StaticArray<i8>#__get
     call $~lib/staticarray/StaticArray<u8>#__set
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $0
     local.get $1
     local.get $3
     local.get $5
     call $~lib/staticarray/StaticArray<i8>#__get
     call $~lib/staticarray/StaticArray<u8>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
  loop $while-continue|3
   local.get $6
   local.get $9
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    local.get $6
    call $~lib/staticarray/StaticArray<i8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|3
   end
  end
  loop $while-continue|4
   local.get $5
   local.get $10
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i8>#__get
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/merge-sort/_mergeSort<i8> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $2
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 2
  i32.div_s
  i32.add
  local.tee $3
  call $src/algorithms/sort/merge-sort/_mergeSort<i8>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.add
  local.get $2
  call $src/algorithms/sort/merge-sort/_mergeSort<i8>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  local.get $2
  call $src/algorithms/sort/merge-sort/merge<i8>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<u64> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<u64>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $5
    i64.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<u64>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<u64>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<i64> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<i64>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $5
    i64.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<i64>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<i64>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<f64> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<f64>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f64>#__get
    local.get $5
    f64.lt
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<f64>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<f64>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<f32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<f32>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<f32>#__get
    local.get $5
    f32.lt
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<f32>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<f32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<u32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<u32>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $5
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<u32>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<u32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<i32>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $5
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<i32>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<i32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<i16> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<i16>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $5
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<i16>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<i16>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<u16> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<u16>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $5
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<u16>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<u16>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<u8> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<u8>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $5
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<u8>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<u8>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/quick-sort/getPivotIndex<i8> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.tee $3
  call $~lib/staticarray/StaticArray<i8>#__get
  local.set $5
  local.get $3
  i32.const 1
  i32.add
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $5
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     call $src/algorithms/shared/swapTwo<i8>
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $src/algorithms/shared/swapTwo<i8>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_u64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<u64>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u64>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<u64>#__get
      local.get $4
      i64.gt_u
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<u64>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_i64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<u64>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i64>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<i64>#__get
      local.get $4
      i64.gt_s
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<i64>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_f64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<u64>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<f64>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<f64>#__get
      local.get $4
      f64.gt
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<f64>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_f32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<f32>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<f32>#__get
      local.get $4
      f32.gt
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<f32>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_u32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u32>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<u32>#__get
      local.get $4
      i32.gt_u
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<u32>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_i32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<i32>#__get
      local.get $4
      i32.gt_s
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<i32>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_u16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<u16>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u16>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<u16>#__get
      local.get $4
      i32.gt_u
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<u16>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_i16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<u16>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i16>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<i16>#__get
      local.get $4
      i32.gt_s
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<i16>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_u8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<u8>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<u8>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<u8>#__get
      local.get $4
      i32.gt_u
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<u8>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/sort/selection-sort/selectionSort_i8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.gt_s
   if
    local.get $1
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $3
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/staticarray/StaticArray<u8>#get:length
     local.get $3
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $3
      call $~lib/staticarray/StaticArray<i8>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $3
      local.get $2
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<i8>#__get
      local.get $4
      i32.gt_s
      select
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    local.get $2
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $src/algorithms/shared/swapTwo<i8>
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<i32>#includes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $folding-inner1
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.tee $3
   i32.eqz
   local.get $3
   i32.const 0
   i32.le_s
   i32.or
   i32.eqz
   if
    loop $while-continue|0
     local.get $2
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $1
      i32.eq
      br_if $folding-inner1
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|0
     end
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.ge_s
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_u64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_u64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<u64>#constructor
  local.tee $5
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i64.const 0
    local.set $2
    i32.const 0
    local.set $4
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<u64>#__get
      local.get $2
      i64.add
      local.set $2
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i64.extend_i32_s
    i64.div_u
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_u64_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<u64>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<u64>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<u64>#__get
       i64.sub
       f64.convert_i64_u
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_u64_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_u64_asm
  local.tee $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 24
  call $~lib/rt/itcms/__new
  local.tee $14
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $14
  i32.store offset=12
  loop $while-continue|0
   local.get $7
   i32.eqz
   local.get $2
   local.get $16
   i32.gt_s
   i32.and
   if
    local.get $16
    i32.const 1
    i32.add
    local.set $16
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $17
    i32.store offset=16
    i32.const 0
    local.set $10
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $10
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<u64>#constructor
      local.tee $5
      i32.store offset=24
      i32.const 0
      local.set $7
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<u64>#get:length
       local.get $7
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $6
        local.get $7
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $8
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        i32.const 0
        local.set $11
        i64.const 0
        local.set $4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|0
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         local.get $8
         call $~lib/staticarray/StaticArray<u64>#get:length
         local.get $11
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<u64>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<u64>#__get
          i64.sub
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<u64>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $4
          local.get $13
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<u64>#__get
          i64.sub
          i64.mul
          i64.add
          local.set $4
          local.get $11
          i32.const 1
          i32.add
          local.set $11
          br $for-loop|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<u64>#__set
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      i32.const 0
      local.set $7
      local.get $5
      i32.const 0
      call $~lib/staticarray/StaticArray<u64>#__get
      local.set $4
      i32.const 0
      local.set $8
      loop $for-loop|00
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<u64>#get:length
       local.get $8
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $8
        call $~lib/staticarray/StaticArray<u64>#__get
        local.tee $12
        local.get $4
        i64.lt_u
        if
         local.get $8
         local.set $7
         local.get $12
         local.set $4
        end
        local.get $8
        i32.const 1
        i32.add
        local.set $8
        br $for-loop|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $10
      local.get $7
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $8
    i32.store offset=32
    i32.const 0
    local.set $7
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      local.get $5
      local.get $8
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|5
     local.get $0
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $14
      local.get $7
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $11
    i32.store offset=40
    i32.const 0
    local.set $7
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=36
      local.get $14
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $5
      local.get $8
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=8
      local.get $11
      local.get $9
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $7
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=52
      local.get $14
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $15
      call $src/algorithms/statistics/k-mean/calcCentroid_u64_asm
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $5
      local.get $7
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $5
    local.get $6
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_u64_asm
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $6
    i32.store offset=4
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_i64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_i64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<i64>#constructor
  local.tee $5
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i64.const 0
    local.set $2
    i32.const 0
    local.set $4
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<i64>#__get
      local.get $2
      i64.add
      local.set $2
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i64.extend_i32_s
    i64.div_s
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u64>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_i64_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $7
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<u64>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<i64>#__get
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store
       i32.const 0
       local.get $2
       local.get $6
       local.get $7
       local.get $3
       call $~lib/staticarray/StaticArray<i64>#__get
       i64.sub
       local.tee $6
       i64.const 63
       i64.shr_s
       local.tee $8
       local.get $6
       local.get $8
       i64.add
       i64.xor
       f64.convert_i64_s
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_i64_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_i64_asm
  local.tee $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 25
  call $~lib/rt/itcms/__new
  local.tee $14
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $14
  i32.store offset=12
  loop $while-continue|0
   local.get $7
   i32.eqz
   local.get $2
   local.get $16
   i32.gt_s
   i32.and
   if
    local.get $16
    i32.const 1
    i32.add
    local.set $16
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $17
    i32.store offset=16
    i32.const 0
    local.set $10
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $10
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<i64>#constructor
      local.tee $5
      i32.store offset=24
      i32.const 0
      local.set $7
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<u64>#get:length
       local.get $7
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $6
        local.get $7
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $8
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        i32.const 0
        local.set $11
        i64.const 0
        local.set $4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|0
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         local.get $8
         call $~lib/staticarray/StaticArray<u64>#get:length
         local.get $11
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<i64>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<i64>#__get
          i64.sub
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<i64>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $4
          local.get $13
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<i64>#__get
          i64.sub
          i64.mul
          i64.add
          local.set $4
          local.get $11
          i32.const 1
          i32.add
          local.set $11
          br $for-loop|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<u64>#__set
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      i32.const 0
      local.set $7
      local.get $5
      i32.const 0
      call $~lib/staticarray/StaticArray<i64>#__get
      local.set $4
      i32.const 0
      local.set $8
      loop $for-loop|00
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<u64>#get:length
       local.get $8
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $8
        call $~lib/staticarray/StaticArray<i64>#__get
        local.tee $12
        local.get $4
        i64.lt_s
        if
         local.get $8
         local.set $7
         local.get $12
         local.set $4
        end
        local.get $8
        i32.const 1
        i32.add
        local.set $8
        br $for-loop|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $10
      local.get $7
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $8
    i32.store offset=32
    i32.const 0
    local.set $7
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      local.get $5
      local.get $8
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|5
     local.get $0
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $14
      local.get $7
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $11
    i32.store offset=40
    i32.const 0
    local.set $7
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=36
      local.get $14
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $5
      local.get $8
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=8
      local.get $11
      local.get $9
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $7
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=52
      local.get $14
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $15
      call $src/algorithms/statistics/k-mean/calcCentroid_i64_asm
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $5
      local.get $7
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $5
    local.get $6
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_i64_asm
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $6
    i32.store offset=4
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_f64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_f64_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<f64>#constructor
  local.tee $5
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    f64.const 0
    local.set $2
    i32.const 0
    local.set $4
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $2
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<f64>#__get
      f64.add
      local.set $2
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.div
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<f64>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_f64_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<u64>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<f64>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<f64>#__get
       f64.sub
       f64.abs
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_f64_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_f64_asm
  local.tee $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<u64>#get:length
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 26
  call $~lib/rt/itcms/__new
  local.tee $14
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $14
  i32.store offset=12
  loop $while-continue|0
   local.get $7
   i32.eqz
   local.get $2
   local.get $16
   i32.gt_s
   i32.and
   if
    local.get $16
    i32.const 1
    i32.add
    local.set $16
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $17
    i32.store offset=16
    i32.const 0
    local.set $10
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $10
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<f64>#constructor
      local.tee $5
      i32.store offset=24
      i32.const 0
      local.set $7
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<u64>#get:length
       local.get $7
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $6
        local.get $7
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $8
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        i32.const 0
        local.set $11
        f64.const 0
        local.set $4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|0
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         local.get $8
         call $~lib/staticarray/StaticArray<u64>#get:length
         local.get $11
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<f64>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<f64>#__get
          f64.sub
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<f64>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $4
          local.get $13
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<f64>#__get
          f64.sub
          f64.mul
          f64.add
          local.set $4
          local.get $11
          i32.const 1
          i32.add
          local.set $11
          br $for-loop|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<f64>#__set
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      i32.const 0
      local.set $7
      local.get $5
      i32.const 0
      call $~lib/staticarray/StaticArray<f64>#__get
      local.set $4
      i32.const 0
      local.set $8
      loop $for-loop|00
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<u64>#get:length
       local.get $8
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $8
        call $~lib/staticarray/StaticArray<f64>#__get
        local.tee $12
        local.get $4
        f64.lt
        if
         local.get $8
         local.set $7
         local.get $12
         local.set $4
        end
        local.get $8
        i32.const 1
        i32.add
        local.set $8
        br $for-loop|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $10
      local.get $7
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $8
    i32.store offset=32
    i32.const 0
    local.set $7
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      local.get $5
      local.get $8
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|5
     local.get $0
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $14
      local.get $7
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $11
    i32.store offset=40
    i32.const 0
    local.set $7
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=36
      local.get $14
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $5
      local.get $8
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=8
      local.get $11
      local.get $9
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $7
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=52
      local.get $14
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $15
      call $src/algorithms/statistics/k-mean/calcCentroid_f64_asm
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $5
      local.get $7
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $5
    local.get $6
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_f64_asm
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $6
    i32.store offset=4
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_f32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_f32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<f32>#constructor
  local.tee $5
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    f32.const 0
    local.set $2
    i32.const 0
    local.set $4
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $2
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<f32>#__get
      f32.add
      local.set $2
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    f32.convert_i32_s
    f32.div
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<f32>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_f32_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<f32>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<f32>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<f32>#__get
       f32.sub
       f32.abs
       f64.promote_f32
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_f32_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f32)
  (local $13 f32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_f32_asm
  local.tee $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 27
  call $~lib/rt/itcms/__new
  local.tee $14
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $14
  i32.store offset=12
  loop $while-continue|0
   local.get $7
   i32.eqz
   local.get $2
   local.get $16
   i32.gt_s
   i32.and
   if
    local.get $16
    i32.const 1
    i32.add
    local.set $16
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $17
    i32.store offset=16
    i32.const 0
    local.set $10
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $10
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<f32>#constructor
      local.tee $5
      i32.store offset=24
      i32.const 0
      local.set $7
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<f32>#get:length
       local.get $7
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $6
        local.get $7
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $8
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        i32.const 0
        local.set $11
        f32.const 0
        local.set $4
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|0
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         local.get $8
         call $~lib/staticarray/StaticArray<f32>#get:length
         local.get $11
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<f32>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<f32>#__get
          f32.sub
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $8
          i32.store
          local.get $8
          local.get $11
          call $~lib/staticarray/StaticArray<f32>#__get
          local.set $12
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $4
          local.get $13
          local.get $12
          local.get $9
          local.get $11
          call $~lib/staticarray/StaticArray<f32>#__get
          f32.sub
          f32.mul
          f32.add
          local.set $4
          local.get $11
          i32.const 1
          i32.add
          local.set $11
          br $for-loop|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<f32>#__set
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      i32.const 0
      local.set $7
      local.get $5
      i32.const 0
      call $~lib/staticarray/StaticArray<f32>#__get
      local.set $4
      i32.const 0
      local.set $8
      loop $for-loop|00
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/staticarray/StaticArray<f32>#get:length
       local.get $8
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        local.get $8
        call $~lib/staticarray/StaticArray<f32>#__get
        local.tee $12
        local.get $4
        f32.lt
        if
         local.get $8
         local.set $7
         local.get $12
         local.set $4
        end
        local.get $8
        i32.const 1
        i32.add
        local.set $8
        br $for-loop|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $10
      local.get $7
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $8
    i32.store offset=32
    i32.const 0
    local.set $7
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      local.get $8
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $8
      local.get $5
      local.get $8
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|5
     local.get $0
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $14
      local.get $7
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $11
    i32.store offset=40
    i32.const 0
    local.set $7
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $7
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $7
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $17
      i32.store
      local.get $17
      local.get $7
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $9
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=36
      local.get $14
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $5
      local.get $8
      local.get $10
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=8
      local.get $11
      local.get $9
      local.get $11
      local.get $9
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $7
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=52
      local.get $14
      local.get $7
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=36
      local.get $8
      local.get $15
      call $src/algorithms/statistics/k-mean/calcCentroid_f32_asm
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store offset=8
      local.get $5
      local.get $7
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $5
    local.get $6
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_f32_asm
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $6
    i32.store offset=4
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_u32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_u
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_u32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<u32>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<u32>#__get
      local.get $5
      i32.add
      local.set $5
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $5
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i32.div_u
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_u32_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<f32>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<u32>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<u32>#__get
       i32.sub
       f64.convert_i32_u
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_u32_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_u32_asm
  local.tee $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 28
  call $~lib/rt/itcms/__new
  local.tee $11
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $11
  i32.store offset=12
  loop $while-continue|0
   local.get $4
   i32.eqz
   local.get $2
   local.get $13
   i32.gt_s
   i32.and
   if
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $14
    i32.store offset=16
    i32.const 0
    local.set $15
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $15
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $15
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $7
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<u32>#constructor
      local.tee $6
      i32.store offset=24
      i32.const 0
      local.set $4
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<f32>#get:length
       local.get $4
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $9
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        i32.const 0
        local.set $16
        i32.const 0
        local.set $17
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|0
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store
         local.get $9
         call $~lib/staticarray/StaticArray<f32>#get:length
         local.get $16
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<u32>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<u32>#__get
          i32.sub
          local.set $8
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<u32>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $17
          local.get $8
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<u32>#__get
          i32.sub
          i32.mul
          i32.add
          local.set $17
          local.get $16
          i32.const 1
          i32.add
          local.set $16
          br $for-loop|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $4
        local.get $17
        call $~lib/staticarray/StaticArray<u32>#__set
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      i32.const 0
      local.set $4
      local.get $6
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__get
      local.set $8
      i32.const 0
      local.set $17
      loop $for-loop|00
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<f32>#get:length
       local.get $17
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $17
        call $~lib/staticarray/StaticArray<u32>#__get
        local.tee $5
        local.get $8
        i32.lt_u
        if
         local.get $5
         local.set $8
         local.get $17
         local.set $4
        end
        local.get $17
        i32.const 1
        i32.add
        local.set $17
        br $for-loop|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $15
      local.get $4
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $15
      i32.const 1
      i32.add
      local.set $15
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $6
    i32.store offset=32
    i32.const 0
    local.set $4
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      local.get $5
      local.get $6
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|5
     local.get $0
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $11
      local.get $4
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $10
    i32.store offset=40
    i32.const 0
    local.set $4
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     local.get $10
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=36
      local.get $11
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $5
      local.get $6
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $10
      local.get $8
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $4
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=52
      local.get $11
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $12
      call $src/algorithms/statistics/k-mean/calcCentroid_u32_asm
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $5
      local.get $4
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $5
    local.get $7
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_u32_asm
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $7
    i32.store offset=4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $11
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_i32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_i32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<i32>#__get
      local.get $5
      i32.add
      local.set $5
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $5
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i32.div_s
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u32>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_i32_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<f32>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<i32>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<i32>#__get
       i32.sub
       local.tee $7
       i32.const 31
       i32.shr_s
       local.tee $8
       local.get $7
       local.get $8
       i32.add
       i32.xor
       f64.convert_i32_s
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_i32_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_i32_asm
  local.tee $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<f32>#get:length
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 29
  call $~lib/rt/itcms/__new
  local.tee $11
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $11
  i32.store offset=12
  loop $while-continue|0
   local.get $4
   i32.eqz
   local.get $2
   local.get $13
   i32.gt_s
   i32.and
   if
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $14
    i32.store offset=16
    i32.const 0
    local.set $15
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $15
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $15
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $7
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<i32>#constructor
      local.tee $6
      i32.store offset=24
      i32.const 0
      local.set $4
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<f32>#get:length
       local.get $4
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $9
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        i32.const 0
        local.set $16
        i32.const 0
        local.set $17
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|0
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store
         local.get $9
         call $~lib/staticarray/StaticArray<f32>#get:length
         local.get $16
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<i32>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<i32>#__get
          i32.sub
          local.set $8
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<i32>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $17
          local.get $8
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<i32>#__get
          i32.sub
          i32.mul
          i32.add
          local.set $17
          local.get $16
          i32.const 1
          i32.add
          local.set $16
          br $for-loop|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $4
        local.get $17
        call $~lib/staticarray/StaticArray<u32>#__set
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      i32.const 0
      local.set $4
      local.get $6
      i32.const 0
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      i32.const 0
      local.set $17
      loop $for-loop|00
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<f32>#get:length
       local.get $17
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $17
        call $~lib/staticarray/StaticArray<i32>#__get
        local.tee $5
        local.get $8
        i32.lt_s
        if
         local.get $5
         local.set $8
         local.get $17
         local.set $4
        end
        local.get $17
        i32.const 1
        i32.add
        local.set $17
        br $for-loop|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $15
      local.get $4
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $15
      i32.const 1
      i32.add
      local.set $15
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $6
    i32.store offset=32
    i32.const 0
    local.set $4
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      local.get $5
      local.get $6
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|5
     local.get $0
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $11
      local.get $4
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $10
    i32.store offset=40
    i32.const 0
    local.set $4
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     local.get $10
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=36
      local.get $11
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $5
      local.get $6
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $10
      local.get $8
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $4
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=52
      local.get $11
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $12
      call $src/algorithms/statistics/k-mean/calcCentroid_i32_asm
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $5
      local.get $4
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $5
    local.get $7
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_i32_asm
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $7
    i32.store offset=4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $11
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_u16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_u16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<u16>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    loop $for-loop|2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<u16>#__get
      local.get $5
      i32.add
      local.set $5
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $5
    i32.const 65535
    i32.and
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i32.const 65535
    i32.and
    i32.div_u
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_u16_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<u16>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<u16>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<u16>#__get
       i32.sub
       i32.const 65535
       i32.and
       f64.convert_i32_u
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_u16_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_u16_asm
  local.tee $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 30
  call $~lib/rt/itcms/__new
  local.tee $11
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $11
  i32.store offset=12
  loop $while-continue|0
   local.get $4
   i32.eqz
   local.get $2
   local.get $13
   i32.gt_s
   i32.and
   if
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $14
    i32.store offset=16
    i32.const 0
    local.set $15
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $15
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $15
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $7
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<u16>#constructor
      local.tee $6
      i32.store offset=24
      i32.const 0
      local.set $4
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u16>#get:length
       local.get $4
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $9
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        i32.const 0
        local.set $16
        i32.const 0
        local.set $17
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|10
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store
         local.get $9
         call $~lib/staticarray/StaticArray<u16>#get:length
         local.get $16
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<u16>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<u16>#__get
          i32.sub
          local.set $8
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<u16>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $17
          local.get $8
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<u16>#__get
          i32.sub
          i32.mul
          i32.add
          local.set $17
          local.get $16
          i32.const 1
          i32.add
          local.set $16
          br $for-loop|10
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $4
        local.get $17
        call $~lib/staticarray/StaticArray<u16>#__set
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      i32.const 0
      local.set $4
      local.get $6
      i32.const 0
      call $~lib/staticarray/StaticArray<u16>#__get
      local.set $8
      i32.const 0
      local.set $17
      loop $for-loop|0
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u16>#get:length
       local.get $17
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $17
        call $~lib/staticarray/StaticArray<u16>#__get
        local.tee $5
        local.get $8
        i32.lt_u
        if
         local.get $5
         local.set $8
         local.get $17
         local.set $4
        end
        local.get $17
        i32.const 1
        i32.add
        local.set $17
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $15
      local.get $4
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $15
      i32.const 1
      i32.add
      local.set $15
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $6
    i32.store offset=32
    i32.const 0
    local.set $4
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      local.get $5
      local.get $6
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|5
     local.get $0
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $11
      local.get $4
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $10
    i32.store offset=40
    i32.const 0
    local.set $4
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     local.get $10
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=36
      local.get $11
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $5
      local.get $6
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $10
      local.get $8
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $4
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=52
      local.get $11
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $12
      call $src/algorithms/statistics/k-mean/calcCentroid_u16_asm
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $5
      local.get $4
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $5
    local.get $7
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_u16_asm
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $7
    i32.store offset=4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $11
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_i16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_i16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<i16>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    loop $for-loop|2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<i16>#__get
      local.get $5
      i32.add
      local.set $5
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $5
    i32.extend16_s
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i32.extend16_s
    i32.div_s
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u16>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_i16_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<u16>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<i16>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<i16>#__get
       i32.sub
       i32.extend16_s
       local.tee $7
       i32.const 31
       i32.shr_s
       local.tee $8
       local.get $7
       local.get $8
       i32.add
       i32.xor
       i32.extend16_s
       f64.convert_i32_s
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_i16_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_i16_asm
  local.tee $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<u16>#get:length
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 31
  call $~lib/rt/itcms/__new
  local.tee $11
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $11
  i32.store offset=12
  loop $while-continue|0
   local.get $4
   i32.eqz
   local.get $2
   local.get $13
   i32.gt_s
   i32.and
   if
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $14
    i32.store offset=16
    i32.const 0
    local.set $15
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $15
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $15
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $7
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<i16>#constructor
      local.tee $6
      i32.store offset=24
      i32.const 0
      local.set $4
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u16>#get:length
       local.get $4
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $9
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        i32.const 0
        local.set $16
        i32.const 0
        local.set $17
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|10
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store
         local.get $9
         call $~lib/staticarray/StaticArray<u16>#get:length
         local.get $16
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<i16>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<i16>#__get
          i32.sub
          local.set $8
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<i16>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $17
          local.get $8
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<i16>#__get
          i32.sub
          i32.mul
          i32.add
          local.set $17
          local.get $16
          i32.const 1
          i32.add
          local.set $16
          br $for-loop|10
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $4
        local.get $17
        call $~lib/staticarray/StaticArray<u16>#__set
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      i32.const 0
      local.set $4
      local.get $6
      i32.const 0
      call $~lib/staticarray/StaticArray<i16>#__get
      local.set $8
      i32.const 0
      local.set $17
      loop $for-loop|0
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u16>#get:length
       local.get $17
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $17
        call $~lib/staticarray/StaticArray<i16>#__get
        local.tee $5
        local.get $8
        i32.lt_s
        if
         local.get $5
         local.set $8
         local.get $17
         local.set $4
        end
        local.get $17
        i32.const 1
        i32.add
        local.set $17
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $15
      local.get $4
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $15
      i32.const 1
      i32.add
      local.set $15
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $6
    i32.store offset=32
    i32.const 0
    local.set $4
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      local.get $5
      local.get $6
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|5
     local.get $0
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $11
      local.get $4
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $10
    i32.store offset=40
    i32.const 0
    local.set $4
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     local.get $10
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=36
      local.get $11
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $5
      local.get $6
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $10
      local.get $8
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $4
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=52
      local.get $11
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $12
      call $src/algorithms/statistics/k-mean/calcCentroid_i16_asm
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $5
      local.get $4
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $5
    local.get $7
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_i16_asm
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $7
    i32.store offset=4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $11
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_u8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_u8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<u8>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    loop $for-loop|2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<u8>#__get
      local.get $5
      i32.add
      local.set $5
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $5
    i32.const 255
    i32.and
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i32.const 255
    i32.and
    i32.div_u
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_u8_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<u8>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<u8>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<u8>#__get
       i32.sub
       i32.const 255
       i32.and
       f64.convert_i32_u
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_u8_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_u8_asm
  local.tee $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 32
  call $~lib/rt/itcms/__new
  local.tee $11
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $11
  i32.store offset=12
  loop $while-continue|0
   local.get $4
   i32.eqz
   local.get $2
   local.get $13
   i32.gt_s
   i32.and
   if
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $14
    i32.store offset=16
    i32.const 0
    local.set $15
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $15
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $15
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $7
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<u8>#constructor
      local.tee $6
      i32.store offset=24
      i32.const 0
      local.set $4
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u8>#get:length
       local.get $4
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $9
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        i32.const 0
        local.set $16
        i32.const 0
        local.set $17
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|10
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store
         local.get $9
         call $~lib/staticarray/StaticArray<u8>#get:length
         local.get $16
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<u8>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<u8>#__get
          i32.sub
          local.set $8
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<u8>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $17
          local.get $8
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<u8>#__get
          i32.sub
          i32.mul
          i32.add
          local.set $17
          local.get $16
          i32.const 1
          i32.add
          local.set $16
          br $for-loop|10
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $4
        local.get $17
        call $~lib/staticarray/StaticArray<u8>#__set
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      i32.const 0
      local.set $4
      local.get $6
      i32.const 0
      call $~lib/staticarray/StaticArray<u8>#__get
      local.set $8
      i32.const 0
      local.set $17
      loop $for-loop|0
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u8>#get:length
       local.get $17
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $17
        call $~lib/staticarray/StaticArray<u8>#__get
        local.tee $5
        local.get $8
        i32.lt_u
        if
         local.get $5
         local.set $8
         local.get $17
         local.set $4
        end
        local.get $17
        i32.const 1
        i32.add
        local.set $17
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $15
      local.get $4
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $15
      i32.const 1
      i32.add
      local.set $15
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $6
    i32.store offset=32
    i32.const 0
    local.set $4
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      local.get $5
      local.get $6
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|5
     local.get $0
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $11
      local.get $4
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $10
    i32.store offset=40
    i32.const 0
    local.set $4
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     local.get $10
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=36
      local.get $11
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $5
      local.get $6
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $10
      local.get $8
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $4
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=52
      local.get $11
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $12
      call $src/algorithms/statistics/k-mean/calcCentroid_u8_asm
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $5
      local.get $4
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $5
    local.get $7
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_u8_asm
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $7
    i32.store offset=4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $11
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $src/algorithms/statistics/k-mean/initCentroid_i8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/staticarray/StaticArray<i32>#constructor
  local.tee $3
  i32.store
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    call $~lib/math/NativeMath.random
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $6
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_sat_f64_s
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $5
    call $~lib/staticarray/StaticArray<i32>#includes
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     local.get $2
     local.get $5
     call $~lib/staticarray/StaticArray<u32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/staticarray/StaticArray<f32>#get:length
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>#constructor
  local.tee $0
  i32.store offset=8
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/staticarray/StaticArray<i32>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
    local.tee $2
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=16
    local.get $0
    local.get $4
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/calcCentroid_i8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/staticarray/StaticArray<i8>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    loop $for-loop|2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $2
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $2
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $~lib/staticarray/StaticArray<i8>#__get
      local.get $5
      i32.add
      local.set $5
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $5
    i32.extend8_s
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    i32.extend8_s
    i32.div_s
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    local.get $3
    local.get $2
    call $~lib/staticarray/StaticArray<u8>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/algorithms/statistics/k-mean/checkIfConverged_i8_asm (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $folding-inner0 (result i32)
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/staticarray/StaticArray<f32>#get:length
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $4
     call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
     local.tee $6
     i32.store offset=8
     i32.const 0
     local.set $3
     loop $for-loop|1
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      call $~lib/staticarray/StaticArray<u8>#get:length
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $3
       call $~lib/staticarray/StaticArray<i8>#__get
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       i32.const 0
       local.get $2
       local.get $7
       local.get $6
       local.get $3
       call $~lib/staticarray/StaticArray<i8>#__get
       i32.sub
       i32.extend8_s
       local.tee $7
       i32.const 31
       i32.shr_s
       local.tee $8
       local.get $7
       local.get $8
       i32.add
       i32.xor
       i32.extend8_s
       f64.convert_i32_s
       f64.lt
       br_if $folding-inner0
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   i32.const 1
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/algorithms/statistics/k-mean/kMean_i8_asm (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $src/algorithms/statistics/k-mean/initCentroid_i8_asm
  local.tee $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/staticarray/StaticArray<u8>#get:length
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  i32.shl
  i32.const 33
  call $~lib/rt/itcms/__new
  local.tee $11
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $11
  i32.store offset=12
  loop $while-continue|0
   local.get $4
   i32.eqz
   local.get $2
   local.get $13
   i32.gt_s
   i32.and
   if
    local.get $13
    i32.const 1
    i32.add
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#get:length
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $14
    i32.store offset=16
    i32.const 0
    local.set $15
    loop $for-loop|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $15
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $15
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $10
      i32.store offset=20
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $7
      call $~lib/staticarray/StaticArray<f32>#get:length
      call $~lib/staticarray/StaticArray<i8>#constructor
      local.tee $6
      i32.store offset=24
      i32.const 0
      local.set $4
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u8>#get:length
       local.get $4
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        local.get $4
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
        local.tee $9
        i32.store offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=8
        i32.const 0
        local.set $16
        i32.const 0
        local.set $17
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        call $~stack_check
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        loop $for-loop|10
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store
         local.get $9
         call $~lib/staticarray/StaticArray<u8>#get:length
         local.get $16
         i32.gt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<i8>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<i8>#__get
          i32.sub
          local.set $8
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store
          local.get $9
          local.get $16
          call $~lib/staticarray/StaticArray<i8>#__get
          local.set $5
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store
          local.get $17
          local.get $8
          local.get $5
          local.get $10
          local.get $16
          call $~lib/staticarray/StaticArray<i8>#__get
          i32.sub
          i32.mul
          i32.add
          local.set $17
          local.get $16
          i32.const 1
          i32.add
          local.set $16
          br $for-loop|10
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $4
        local.get $17
        call $~lib/staticarray/StaticArray<u8>#__set
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      call $~stack_check
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      i32.const 0
      local.set $4
      local.get $6
      i32.const 0
      call $~lib/staticarray/StaticArray<i8>#__get
      local.set $8
      i32.const 0
      local.set $17
      loop $for-loop|0
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       call $~lib/staticarray/StaticArray<u8>#get:length
       local.get $17
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $17
        call $~lib/staticarray/StaticArray<i8>#__get
        local.tee $5
        local.get $8
        i32.lt_s
        if
         local.get $5
         local.set $8
         local.get $17
         local.set $4
        end
        local.get $17
        i32.const 1
        i32.add
        local.set $17
        br $for-loop|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $15
      local.get $4
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $15
      i32.const 1
      i32.add
      local.set $15
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $6
    i32.store offset=32
    i32.const 0
    local.set $4
    loop $for-loop|3
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|3
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      local.get $5
      local.get $6
      local.get $5
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|4
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|5
     local.get $0
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>#constructor
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      local.get $11
      local.get $4
      local.get $5
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|5
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<i32>#constructor
    local.tee $10
    i32.store offset=40
    i32.const 0
    local.set $4
    loop $for-loop|6
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     local.get $10
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $4
      i32.const 0
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|6
     end
    end
    i32.const 0
    local.set $4
    loop $for-loop|7
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.tee $9
      i32.store offset=44
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $4
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $8
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=36
      local.get $11
      local.get $8
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store offset=8
      local.get $5
      local.get $6
      local.get $9
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=8
      local.get $10
      local.get $8
      local.get $10
      local.get $8
      call $~lib/staticarray/StaticArray<i32>#__get
      i32.const 1
      i32.add
      call $~lib/staticarray/StaticArray<u32>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|7
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>#constructor
    local.tee $5
    i32.store offset=48
    i32.const 0
    local.set $4
    loop $for-loop|8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     call $~lib/staticarray/StaticArray<f32>#get:length
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store offset=52
      local.get $11
      local.get $4
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=36
      local.get $6
      local.get $12
      call $src/algorithms/statistics/k-mean/calcCentroid_i8_asm
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $5
      local.get $4
      local.get $6
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|8
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    local.get $5
    local.get $7
    local.get $3
    call $src/algorithms/statistics/k-mean/checkIfConverged_i8_asm
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    local.tee $7
    i32.store offset=4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 56
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $11
     return
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 14
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<u64>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 4
  i32.const 3
  i32.const 134217727
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i64>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<i64>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 5
  i32.const 3
  i32.const 134217727
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f64>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<f64>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 6
  i32.const 3
  i32.const 134217727
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<f32>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 17
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<f32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 7
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u32>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 18
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<u32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 9
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i32>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 19
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u16>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<u16>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 536870910
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i16>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 21
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<i16>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 11
  i32.const 1
  i32.const 536870910
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u8>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 22
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<u8>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<u8>#constructor
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<i8>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 23
  i32.const 2
  i32.const 268435455
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor
 )
 (func $~lib/staticarray/StaticArray<i8>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.const 13
  call $byn$mgfn-shared$~lib/staticarray/StaticArray<u8>#constructor
 )
 (func $export:src/algorithms/basic/average/average_u64_asm (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u64>#__get
  local.set $1
  i32.const 1
  local.set $2
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $1
    i64.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i64.extend_i32_s
  i64.div_u
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/average/average_i64_asm (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i64>#__get
  local.set $1
  i32.const 1
  local.set $2
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $1
    i64.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i64.extend_i32_s
  i64.div_s
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/average/average_f64_asm (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f64>#__get
  local.set $1
  i32.const 1
  local.set $2
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<f64>#__get
    f64.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  f64.convert_i32_s
  f64.div
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/average/average_f32_asm (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f32>#__get
  local.set $1
  i32.const 1
  local.set $2
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    local.get $2
    call $~lib/staticarray/StaticArray<f32>#__get
    f32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  f32.convert_i32_s
  f32.div
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/average/average_i32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i32>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.div_s
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/basic/average/average_u32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u32>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.div_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/basic/average/average_u16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u16>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  i32.const 65535
  i32.and
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.add
  i32.const 65535
  i32.and
  i32.div_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/basic/average/average_i16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i16>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  i32.extend16_s
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.add
  i32.extend16_s
  i32.div_s
  i32.extend16_s
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/basic/average/average_u8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  i32.const 255
  i32.and
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.add
  i32.const 255
  i32.and
  i32.div_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/basic/average/average_i8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i8>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  i32.extend8_s
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.add
  i32.extend8_s
  i32.div_s
  i32.extend8_s
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/basic/max/max_u64_asm (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u64>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u64>#__get
    local.tee $2
    local.get $1
    i64.gt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_i64_asm (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i64>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i64>#__get
    local.tee $2
    local.get $1
    i64.gt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_f64_asm (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f64>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<f64>#__get
    local.tee $2
    local.get $1
    f64.gt
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_f32_asm (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f32>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<f32>#__get
    local.tee $2
    local.get $1
    f32.gt
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_u32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u32>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u32>#__get
    local.tee $2
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_i32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i32>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i32>#__get
    local.tee $2
    local.get $1
    i32.gt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_u16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u16>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u16>#__get
    local.tee $2
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_i16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i16>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i16>#__get
    local.tee $2
    local.get $1
    i32.gt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_u8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u8>#__get
    local.tee $2
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/max/max_i8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i8>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i8>#__get
    local.tee $2
    local.get $1
    i32.gt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_u64_asm (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u64>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u64>#__get
    local.tee $2
    local.get $1
    i64.lt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_i64_asm (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i64>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i64>#__get
    local.tee $2
    local.get $1
    i64.lt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_f64_asm (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f64>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<f64>#__get
    local.tee $2
    local.get $1
    f64.lt
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_f32_asm (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f32>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<f32>#__get
    local.tee $2
    local.get $1
    f32.lt
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_u32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u32>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u32>#__get
    local.tee $2
    local.get $1
    i32.lt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_i32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i32>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i32>#__get
    local.tee $2
    local.get $1
    i32.lt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_u16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u16>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u16>#__get
    local.tee $2
    local.get $1
    i32.lt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_i16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i16>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i16>#__get
    local.tee $2
    local.get $1
    i32.lt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_u8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<u8>#__get
    local.tee $2
    local.get $1
    i32.lt_u
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/min/min_i8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i8>#__get
  local.set $1
  i32.const 1
  local.set $3
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $3
    call $~lib/staticarray/StaticArray<i8>#__get
    local.tee $2
    local.get $1
    i32.lt_s
    if
     local.get $2
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/basic/sum/sum_u64_asm (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u64>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u64>#__get
    local.get $2
    i64.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/basic/sum/sum_i64_asm (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i64>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i64>#__get
    local.get $2
    i64.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/basic/sum/sum_f64_asm (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f64>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u64>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f64>#__get
    f64.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/basic/sum/sum_f32_asm (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<f32>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $2
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<f32>#__get
    f32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/basic/sum/sum_u32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u32>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u32>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/basic/sum/sum_i32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i32>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<f32>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i32>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/basic/sum/sum_u16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u16>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u16>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.const 65535
  i32.and
 )
 (func $export:src/algorithms/basic/sum/sum_i16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i16>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u16>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i16>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.extend16_s
 )
 (func $export:src/algorithms/basic/sum/sum_u8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<u8>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<u8>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.const 255
  i32.and
 )
 (func $export:src/algorithms/basic/sum/sum_i8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/staticarray/StaticArray<i8>#__get
  local.set $2
  i32.const 1
  local.set $1
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/staticarray/StaticArray<u8>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<i8>#__get
    local.get $2
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.extend8_s
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_f64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_f32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_u8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-addition/matrixAddition_i8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-addition/matrixAddition_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-multiplication/matrixMultiplication_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f64_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/algorithms/matrix/matrix-subtraction/matrixSubtraction_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_u64_asm (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $2
     call $~lib/staticarray/StaticArray<u64>#__get
     local.get $1
     i64.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<u64>#__get
     local.get $1
     i64.gt_u
     if
      local.get $2
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $2
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_i64_asm (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $2
     call $~lib/staticarray/StaticArray<i64>#__get
     local.get $1
     i64.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<i64>#__get
     local.get $1
     i64.gt_s
     if
      local.get $2
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $2
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_f64_asm (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $2
     call $~lib/staticarray/StaticArray<f64>#__get
     local.get $1
     f64.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<f64>#__get
     local.get $1
     f64.gt
     if
      local.get $2
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $2
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_f32_asm (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $2
     call $~lib/staticarray/StaticArray<f32>#__get
     local.get $1
     f32.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     call $~lib/staticarray/StaticArray<f32>#__get
     local.get $1
     f32.gt
     if
      local.get $2
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $2
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_u32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $1
     call $~lib/staticarray/StaticArray<u32>#__get
     local.get $2
     i32.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<u32>#__get
     local.get $2
     i32.gt_u
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $1
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_i32_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $1
     call $~lib/staticarray/StaticArray<i32>#__get
     local.get $2
     i32.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<i32>#__get
     local.get $2
     i32.gt_s
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $1
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_u16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $1
     call $~lib/staticarray/StaticArray<u16>#__get
     local.get $2
     i32.const 65535
     i32.and
     local.tee $5
     i32.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<u16>#__get
     local.get $5
     i32.gt_u
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $1
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_i16_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $1
     call $~lib/staticarray/StaticArray<i16>#__get
     local.get $2
     i32.extend16_s
     i32.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<i16>#__get
     local.get $2
     i32.extend16_s
     i32.gt_s
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $1
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_u8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $1
     call $~lib/staticarray/StaticArray<i8>#__get
     local.get $2
     i32.extend8_s
     i32.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<i8>#__get
     local.get $2
     i32.extend8_s
     i32.gt_s
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $1
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/search/binary-search/binarySearch_i8_asm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  local.set $4
  block $folding-inner0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     local.get $4
     local.get $3
     i32.sub
     i32.const 2
     i32.div_s
     i32.add
     local.tee $1
     call $~lib/staticarray/StaticArray<u8>#__get
     local.get $2
     i32.const 255
     i32.and
     local.tee $5
     i32.eq
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<u8>#__get
     local.get $5
     i32.gt_u
     if
      local.get $1
      i32.const 1
      i32.sub
      local.set $4
     else
      local.get $1
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u64_asm (param $0 i32) (param $1 i64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i64_asm (param $0 i32) (param $1 i64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_f64_asm (param $0 i32) (param $1 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_f32_asm (param $0 i32) (param $1 f32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_u8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/interpolation-search/interpolationSearch_i8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  local.get $1
  call $src/algorithms/search/interpolation-search/_interpolationSearch_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u64_asm (param $0 i32) (param $1 i64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i64_asm (param $0 i32) (param $1 i64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_f64_asm (param $0 i32) (param $1 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_f32_asm (param $0 i32) (param $1 f32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i32_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i16_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_u8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/search/meta-binary-search/metaBinarySearch_i8_asm (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/algorithms/search/meta-binary-search/metaBinarySearch_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_f64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_f32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u16_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i16_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_u8_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/bubble-sort/bubbleSort_i8_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/bubble-sort/bubbleSort_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_u64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<u64>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_i64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<i64>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_f64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<f64>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_f32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<f32>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_u32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<u32>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_i32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<i32>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_u16_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<u16>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_i16_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<i16>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_u8_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<u8>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/merge-sort/mergeSort_i8_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  call $src/algorithms/sort/merge-sort/_mergeSort<i8>
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_u64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u64>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<u64>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u64>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_i64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i64>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<i64>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i64>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_f64_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u64>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<f64>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<f64>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<f64>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_f32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<f32>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<f32>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<f32>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_u32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u32>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<u32>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u32>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_i32_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<f32>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i32>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<i32>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i32>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_u16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i16>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<i16>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i16>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_i16_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u16>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u16>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<u16>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u16>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_u8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u8>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<u8>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<u8>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/quick-sort/quickSort_i8_asm (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/staticarray/StaticArray<u8>#get:length
  i32.const 1
  i32.sub
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i8>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   local.get $2
   i32.const 1
   i32.sub
   call $src/algorithms/sort/quick-sort/getPivotIndex<i8>
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   local.get $1
   call $src/algorithms/sort/quick-sort/getPivotIndex<i8>
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_u64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_i64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_f64_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_f32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_u32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_i32_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_u16_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_i16_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_u8_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/sort/selection-sort/selectionSort_i8_asm (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/algorithms/sort/selection-sort/selectionSort_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_u64_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_u64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_i64_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_i64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_f64_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_f64_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_f32_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_f32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_u32_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_u32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_i32_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_i32_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_u16_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_u16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_i16_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_i16_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_u8_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_u8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:src/algorithms/statistics/k-mean/kMean_i8_asm@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f64) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 1000
    local.set $2
   end
   f64.const 0.0001
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/algorithms/statistics/k-mean/kMean_i8_asm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn$mgfn-shared$~lib/staticarray/StaticArray<u8>#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn$mgfn-shared$~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<u64>>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $3
  i32.gt_u
  if
   i32.const 1312
   i32.const 1120
   i32.const 51
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $2
  i32.shl
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
