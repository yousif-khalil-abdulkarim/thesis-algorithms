export function swapTwo(list, a, b) {
    const itemA = list[a];
    list[a] = list[b];
    list[b] = itemA;
}
export function sortTwo(list, a, b) {
    if (list[a] < list[b]) {
        swapTwo(list, a, b);
    }
}
