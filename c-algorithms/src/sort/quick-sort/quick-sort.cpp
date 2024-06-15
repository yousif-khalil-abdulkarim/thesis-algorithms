#include <stdlib.h>
#include "sort/quick-sort/quick-sort.h";

int getPivotIndex_u64_c(u64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u64_c(array, i, swapIndex);
        }
    }
    swapTwo_u64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i64_c(i64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i64_c(array, i, swapIndex);
        }
    }
    swapTwo_i64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_f64_c(f64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_f64_c(array, i, swapIndex);
        }
    }
    swapTwo_f64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_f32_c(f32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_f32_c(array, i, swapIndex);
        }
    }
    swapTwo_f32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_u32_c(u32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u32_c(array, i, swapIndex);
        }
    }
    swapTwo_u32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i32_c(i32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i32_c(array, i, swapIndex);
        }
    }
    swapTwo_i32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_u16_c(u16* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u16_c(array, i, swapIndex);
        }
    }
    swapTwo_u16_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i16_c(i16* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i16_c(array, i, swapIndex);
        }
    }
    swapTwo_i16_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_u8_c(u8* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_u8_c(array, i, swapIndex);
        }
    }
    swapTwo_u8_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_i8_c(i8* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_i8_c(array, i, swapIndex);
        }
    }
    swapTwo_i8_c(array, start, swapIndex);
    return swapIndex;
}

u64* _quickSort_u64_c(u64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u64_c(array, left, right);
        _quickSort_u64_c(array, left, pivotIndex - 1);
        _quickSort_u64_c(array, pivotIndex + 1, right);
    }
    return array;
}
i64* _quickSort_i64_c(i64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i64_c(array, left, right);
        getPivotIndex_i64_c(array, left, pivotIndex - 1);
        getPivotIndex_i64_c(array, pivotIndex + 1, right);
    }
    return array;
}
f64* _quickSort_f64_c(f64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_f64_c(array, left, right);
        getPivotIndex_f64_c(array, left, pivotIndex - 1);
        getPivotIndex_f64_c(array, pivotIndex + 1, right);
    }
    return array;
}
f32* _quickSort_f32_c(f32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_f32_c(array, left, right);
        getPivotIndex_f32_c(array, left, pivotIndex - 1);
        getPivotIndex_f32_c(array, pivotIndex + 1, right);
    }
    return array;
}
u32* _quickSort_u32_c(u32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u32_c(array, left, right);
        getPivotIndex_u32_c(array, left, pivotIndex - 1);
        getPivotIndex_u32_c(array, pivotIndex + 1, right);
    }
    return array;
}
i32* _quickSort_i32_c(i32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i32_c(array, left, right);
        getPivotIndex_i32_c(array, left, pivotIndex - 1);
        getPivotIndex_i32_c(array, pivotIndex + 1, right);
    }
    return array;
}
u16* _quickSort_u16_c(u16* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u16_c(array, left, right);
        getPivotIndex_u16_c(array, left, pivotIndex - 1);
        getPivotIndex_u16_c(array, pivotIndex + 1, right);
    }
    return array;
}
i16* _quickSort_i16_c(i16* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i16_c(array, left, right);
        getPivotIndex_i16_c(array, left, pivotIndex - 1);
        getPivotIndex_i16_c(array, pivotIndex + 1, right);
    }
    return array;
}
u8* _quickSort_u8_c(u8* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_u8_c(array, left, right);
        getPivotIndex_u8_c(array, left, pivotIndex - 1);
        getPivotIndex_u8_c(array, pivotIndex + 1, right);
    }
    return array;
}
i8* _quickSort_i8_c(i8* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_i8_c(array, left, right);
        getPivotIndex_i8_c(array, left, pivotIndex - 1);
        getPivotIndex_i8_c(array, pivotIndex + 1, right);
    }
    return array;
}

Array1d_u64* quickSort_u64_c(Array1d_u64* array) {
    _quickSort_u64_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_i64* quickSort_i64_c(Array1d_i64* array) {
    _quickSort_i64_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_f64* quickSort_f64_c(Array1d_f64* array) {
    _quickSort_f64_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_f32* quickSort_f32_c(Array1d_f32* array) {
    _quickSort_f32_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_u32* quickSort_u32_c(Array1d_u32* array) {
    _quickSort_u32_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_i32* quickSort_i32_c(Array1d_i32* array) {
    _quickSort_i32_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_u16* quickSort_u16_c(Array1d_u16* array) {
    _quickSort_u16_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_i16* quickSort_i16_c(Array1d_i16* array) {
    _quickSort_i16_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_u8* quickSort_u8_c(Array1d_u8* array) {
    _quickSort_u8_c(array->items, 0, array->length - 1);
    return array;
}
Array1d_i8* quickSort_i8_c(Array1d_i8* array) {
    _quickSort_i8_c(array->items, 0, array->length - 1);
    return array;
}
