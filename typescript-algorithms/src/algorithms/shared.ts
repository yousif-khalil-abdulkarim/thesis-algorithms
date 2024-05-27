export function swapTwo<
  T extends
    | BigUint64Array
    | BigInt64Array
    | Float64Array
    | Float32Array
    | Uint32Array
    | Int32Array
    | Uint16Array
    | Int16Array
    | Uint8Array
    | Int8Array
>(list: T, a: number, b: number): void {
  const itemA = list[a];
  list[a] = list[b];
  list[b] = itemA;
}
export function sortTwo<
  T extends
    | BigUint64Array
    | BigInt64Array
    | Float64Array
    | Float32Array
    | Uint32Array
    | Int32Array
    | Uint16Array
    | Int16Array
    | Uint8Array
    | Int8Array
>(list: T, a: number, b: number): void {
  if (list[a] < list[b]) {
    swapTwo(list, a, b);
  }
}
