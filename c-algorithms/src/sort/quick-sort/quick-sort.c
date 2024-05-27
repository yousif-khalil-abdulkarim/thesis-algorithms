#include <stdlib.h>
#include "sort/quick-sort/quick-sort.h";

int getPivotIndex_uint64_c(u64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_uint64_c(array, i, swapIndex);
        }
    }
    swapTwo_uint64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_int64_c(i64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_int64_c(array, i, swapIndex);
        }
    }
    swapTwo_int64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_float64_c(f64* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_float64_c(array, i, swapIndex);
        }
    }
    swapTwo_float64_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_float32_c(f32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_float32_c(array, i, swapIndex);
        }
    }
    swapTwo_float32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_uint32_c(u32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_uint32_c(array, i, swapIndex);
        }
    }
    swapTwo_uint32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_int32_c(i32* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_int32_c(array, i, swapIndex);
        }
    }
    swapTwo_int32_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_uint16_c(u16* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_uint16_c(array, i, swapIndex);
        }
    }
    swapTwo_uint16_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_int16_c(i16* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_int16_c(array, i, swapIndex);
        }
    }
    swapTwo_int16_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_uint8_c(u8* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_uint8_c(array, i, swapIndex);
        }
    }
    swapTwo_uint8_c(array, start, swapIndex);
    return swapIndex;
}
int getPivotIndex_int8_c(i8* array, int start, int end) {
    int swapIndex = start;
    int pivotValue = array[start];
    for (int i = start + 1; i <= end; i++) {
        if (array[i] < pivotValue) {
            swapIndex++;
            swapTwo_int8_c(array, i, swapIndex);
        }
    }
    swapTwo_int8_c(array, start, swapIndex);
    return swapIndex;
}

u64* _quickSort_uint64_c(u64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_uint64_c(array, left, right);
        _quickSort_uint64_c(array, left, pivotIndex - 1);
        _quickSort_uint64_c(array, pivotIndex + 1, right);
    }
    return array;
}
i64* _quickSort_int64_c(i64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_int64_c(array, left, right);
        getPivotIndex_int64_c(array, left, pivotIndex - 1);
        getPivotIndex_int64_c(array, pivotIndex + 1, right);
    }
    return array;
}
f64* _quickSort_float64_c(f64* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_float64_c(array, left, right);
        getPivotIndex_float64_c(array, left, pivotIndex - 1);
        getPivotIndex_float64_c(array, pivotIndex + 1, right);
    }
    return array;
}
f32* _quickSort_float32_c(f32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_float32_c(array, left, right);
        getPivotIndex_float32_c(array, left, pivotIndex - 1);
        getPivotIndex_float32_c(array, pivotIndex + 1, right);
    }
    return array;
}
u32* _quickSort_uint32_c(u32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_uint32_c(array, left, right);
        getPivotIndex_uint32_c(array, left, pivotIndex - 1);
        getPivotIndex_uint32_c(array, pivotIndex + 1, right);
    }
    return array;
}
i32* _quickSort_int32_c(i32* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_int32_c(array, left, right);
        getPivotIndex_int32_c(array, left, pivotIndex - 1);
        getPivotIndex_int32_c(array, pivotIndex + 1, right);
    }
    return array;
}
u16* _quickSort_uint16_c(u16* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_uint16_c(array, left, right);
        getPivotIndex_uint16_c(array, left, pivotIndex - 1);
        getPivotIndex_uint16_c(array, pivotIndex + 1, right);
    }
    return array;
}
i16* _quickSort_int16_c(i16* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_int16_c(array, left, right);
        getPivotIndex_int16_c(array, left, pivotIndex - 1);
        getPivotIndex_int16_c(array, pivotIndex + 1, right);
    }
    return array;
}
u8* _quickSort_uint8_c(u8* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_uint8_c(array, left, right);
        getPivotIndex_uint8_c(array, left, pivotIndex - 1);
        getPivotIndex_uint8_c(array, pivotIndex + 1, right);
    }
    return array;
}
i8* _quickSort_int8_c(i8* array, int left, int right) {
    if (left < right) {
        int pivotIndex = getPivotIndex_int8_c(array, left, right);
        getPivotIndex_int8_c(array, left, pivotIndex - 1);
        getPivotIndex_int8_c(array, pivotIndex + 1, right);
    }
    return array;
}

u64* quickSort_uint64_c(u64* array, int arrayLength) {
    return _quickSort_uint64_c(array, 0, arrayLength - 1);
}
i64* quickSort_int64_c(i64* array, int arrayLength) {
    return _quickSort_int64_c(array, 0, arrayLength - 1);
}
f64* quickSort_float64_c(f64* array, int arrayLength) {
    return _quickSort_float64_c(array, 0, arrayLength - 1);
}
f32* quickSort_float32_c(f32* array, int arrayLength) {
    return _quickSort_float32_c(array, 0, arrayLength - 1);
}
u32* quickSort_uint32_c(u32* array, int arrayLength) {
    return _quickSort_uint32_c(array, 0, arrayLength - 1);
}
i32* quickSort_int32_c(i32* array, int arrayLength) {
    return _quickSort_int32_c(array, 0, arrayLength - 1);
}
u16* quickSort_uint16_c(u16* array, int arrayLength) {
    return _quickSort_uint16_c(array, 0, arrayLength - 1);
}
i16* quickSort_int16_c(i16* array, int arrayLength) {
    return _quickSort_int16_c(array, 0, arrayLength - 1);
}
u8* quickSort_uint8_c(u8* array, int arrayLength) {
    return _quickSort_uint8_c(array, 0, arrayLength - 1);
}
i8* quickSort_int8_c(i8* array, int arrayLength) {
    return _quickSort_int8_c(array, 0, arrayLength - 1);
}