export function metaBinarySearch_u64_asm(
  array: StaticArray<u64>,
  target: u64
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i64_asm(
  array: StaticArray<i64>,
  target: i64
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_f64_asm(
  array: StaticArray<f64>,
  target: f64
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_f32_asm(
  array: StaticArray<f32>,
  target: f32
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_u32_asm(
  array: StaticArray<u32>,
  target: u32
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i32_asm(
  array: StaticArray<i32>,
  target: i32
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_u16_asm(
  array: StaticArray<u16>,
  target: u16
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i16_asm(
  array: StaticArray<i16>,
  target: i16
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_u8_asm(
  array: StaticArray<u8>,
  target: u8
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
export function metaBinarySearch_i8_asm(
  array: StaticArray<i8>,
  target: i8
): i32 {
  let n = array.length;
  let lg = <i32>(NativeMath.log(n - 1) / NativeMath.log(2) + 1);

  let pos = 0;
  for (let i = lg; i >= 0; i--) {
    if (array[pos] == target) return pos;

    let new_pos = pos | (1 << i);

    if (new_pos < n && array[new_pos] <= target) pos = new_pos;
  }

  return array[pos] == target ? pos : -1;
}
