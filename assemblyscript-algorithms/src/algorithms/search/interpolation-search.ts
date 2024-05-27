function _interpolationSearch_uint64(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint64(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint64(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_uint64(array: StaticArray<u64>, target: u64): i32 {
  return _interpolationSearch_uint64(array, 0, array.length - 1, target);
}

function _interpolationSearch_int64(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int64(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int64(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_int64(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_int64(array, 0, array.length - 1, target);
}

function _interpolationSearch_float64(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_float64(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_float64(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_float64(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_float64(array, 0, array.length - 1, target);
}

function _interpolationSearch_float32(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_float32(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_float32(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_float32(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_float32(array, 0, array.length - 1, target);
}


function _interpolationSearch_uint32(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint32(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint32(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_uint32(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_uint32(array, 0, array.length - 1, target);
}

function _interpolationSearch_int32(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int32(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int32(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_int32(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_int32(array, 0, array.length - 1, target);
}

function _interpolationSearch_uint16(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint16(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint16(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_uint16(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_uint16(array, 0, array.length - 1, target);
}

function _interpolationSearch_int16(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int16(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int16(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_int16(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_int16(array, 0, array.length - 1, target);
}

function _interpolationSearch_uint8(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_uint8(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_uint8(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_uint8(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_uint8(array, 0, array.length - 1, target);
}

function _interpolationSearch_int8(
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
      Math.floor(
        ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
          (target - array[startOffset])
      );

    if (array[pos] == target) {
      return pos;
    }

    if (array[pos] < target) {
      return _interpolationSearch_int8(array, pos + 1, endOffset, target);
    }

    if (array[pos] > target) {
      return _interpolationSearch_int8(array, startOffset, pos - 1, target);
    }
  }
  return -1;
}
export function interpolationSearch_int8(
  array: StaticArray<i64>,
  target: i64
): i32 {
  return _interpolationSearch_int8(array, 0, array.length - 1, target);
}
