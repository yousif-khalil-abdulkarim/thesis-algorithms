// @ts-check
import { initSearchArray } from "../../../../../execute-search-test/init-search-array.js";
import { exponentialSize } from "../../../../../shared.js";

export const data = initSearchArray("i8", exponentialSize(12));
