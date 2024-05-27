export function swapTwo<T>(list: StaticArray<T>, a: i32, b: i32): void {
  const itemA = list[a];
  list[a] = list[b];
  list[b] = itemA;
}
export function sortTwo<T>(list: StaticArray<T>, a: i32, b: i32): void {
  if (list[a] < list[b]) {
    swapTwo(list, a, b);
  }
}
