function merge_uint64_asm(
  array1: StaticArray<u64>,
  array2: StaticArray<u64>
): StaticArray<u64> {
  const mergedArray = new StaticArray<u64>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int64_asm(
  array1: StaticArray<i64>,
  array2: StaticArray<i64>
): StaticArray<i64> {
  const mergedArray = new StaticArray<i64>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_float64_asm(
  array1: StaticArray<f64>,
  array2: StaticArray<f64>
): StaticArray<f64> {
  const mergedArray = new StaticArray<f64>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_float32_asm(
  array1: StaticArray<f32>,
  array2: StaticArray<f32>
): StaticArray<f32> {
  const mergedArray = new StaticArray<f32>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_uint32_asm(
  array1: StaticArray<u32>,
  array2: StaticArray<u32>
): StaticArray<u32> {
  const mergedArray = new StaticArray<u32>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int32_asm(
  array1: StaticArray<i32>,
  array2: StaticArray<i32>
): StaticArray<i32> {
  const mergedArray = new StaticArray<i32>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_uint16_asm(
  array1: StaticArray<u16>,
  array2: StaticArray<u16>
): StaticArray<u16> {
  const mergedArray = new StaticArray<u16>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int16_asm(
  array1: StaticArray<i16>,
  array2: StaticArray<i16>
): StaticArray<i16> {
  const mergedArray = new StaticArray<i32>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_uint8_asm(
  array1: StaticArray<u8>,
  array2: StaticArray<u8>
): StaticArray<u8> {
  const mergedArray = new StaticArray<u8>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}
function merge_int8_asm(
  array1: StaticArray<i8>,
  array2: StaticArray<i8>
): StaticArray<i8> {
  const mergedArray = new StaticArray<i32>(array1.length + array2.length);
  for (let i = 0; i < array1.length; i++) {
    mergedArray[i] = array1[i];
  }
  for (let i = array1.length; i < mergedArray.length; i++) {
    mergedArray[i] = array2[i - array1.length];
  }
  return mergedArray;
}