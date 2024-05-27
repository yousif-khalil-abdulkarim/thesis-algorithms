function _interpolationSearch_uint64_asm(
  array: StaticArray<u64>,
  startOffset: i32,
  endOffset: i32,
  target: u64
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<u64>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint64_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint64_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_uint64_asm(
  array: StaticArray<u64>,
  target: u64
): i32 {
  return _interpolationSearch_uint64_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_int64_asm(
  array: StaticArray<i64>,
  startOffset: i32,
  endOffset: i32,
  target: i64
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<i64>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int64_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int64_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_int64_asm(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_int64_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_float64_asm(
  array: StaticArray<f64>,
  startOffset: i32,
  endOffset: i32,
  target: f64
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<f64>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_float64_asm(
        array,
        pos + 1,
        endOffset,
        target
      );
    }

    if (array[pos] > target) {
      return _interpolationSearch_float64_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_float64_asm(
  array: StaticArray<f64>,
  target: f64
): i32 {
  return _interpolationSearch_float64_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_float32_asm(
  array: StaticArray<f32>,
  startOffset: i32,
  endOffset: i32,
  target: f32
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<f32>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_float32_asm(
        array,
        pos + 1,
        endOffset,
        target
      );
    }

    if (array[pos] > target) {
      return _interpolationSearch_float32_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_float32_asm(
  array: StaticArray<f32>,
  target: f32
): i32 {
  return _interpolationSearch_float32_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_uint32_asm(
  array: StaticArray<u32>,
  startOffset: i32,
  endOffset: i32,
  target: u32
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<u32>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint32_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint32_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_uint32_asm(
  array: StaticArray<u32>,
  target: u32
): i32 {
  return _interpolationSearch_uint32_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_int32_asm(
  array: StaticArray<i32>,
  startOffset: i32,
  endOffset: i32,
  target: i32
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<i32>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int32_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int32_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_int32_asm(
  array: StaticArray<i32>,
  target: i32
): i32 {
  return _interpolationSearch_int32_asm(array, 0, array.length - 1, target);
}

function _interpolationSearch_uint16_asm(
  array: StaticArray<u16>,
  startOffset: i32,
  endOffset: i32,
  target: u16
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<u16>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint16_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint16_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_uint16_asm(
  array: StaticArray<u16>,
  target: u16
): i32 {
  return _interpolationSearch_uint16_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_int16_asm(
  array: StaticArray<i16>,
  startOffset: i32,
  endOffset: i32,
  target: i16
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<i16>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int16_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int16_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_int16_asm(
  array: StaticArray<i16>,
  target: i16
): i32 {
  return _interpolationSearch_int16_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_uint8_asm(
  array: StaticArray<u8>,
  startOffset: i32,
  endOffset: i32,
  target: u8
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<u8>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint8_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint8_asm(
        array,
        startOffset,
        pos - 1,
        target
      );
    }
  }
  return -1;
}
export function interpolationSearch_uint8_asm(
  array: StaticArray<u8>,
  target: u8
): i32 {
  return _interpolationSearch_uint8_asm(array, 0, array.length - 1, target);
}
function _interpolationSearch_int8_asm(
  array: StaticArray<i8>,
  startOffset: i32,
  endOffset: i32,
  target: i8
): i32 {
  let pos = -1;

  if (
    startOffset <= endOffset &&
    target >= array[startOffset] &&
    target <= array[endOffset]
  ) {
    pos =
      startOffset +
      <i32>(
        floor(
          (<i8>(endOffset - startOffset) /
            (array[endOffset] - array[startOffset])) *
            (target - array[startOffset])
        )
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int8_asm(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int8_asm(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_int8_asm(
  array: StaticArray<i8>,
  target: i8
): i32 {
  return _interpolationSearch_int8_asm(array, 0, array.length - 1, target);
}
