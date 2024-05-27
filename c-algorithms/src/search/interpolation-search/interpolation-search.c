#include "search/interpolation-search/interpolation-search.h";

int _interpolationSearch_uint64_c(u64* array, int startOffset, int endOffset, u64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_uint64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_uint64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_uint64_c(u64* array, int arrayLenth, u64 target) {
    return _interpolationSearch_uint64_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_int64_c(i64* array, int startOffset, int endOffset, i64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_int64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_int64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_int64_c(i64* array, int arrayLenth, i64 target) {
    return _interpolationSearch_int64_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_float64_c(f64* array, int startOffset, int endOffset, f64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_float64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_float64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_float64_c(f64* array, int arrayLenth, f64 target) {
    return _interpolationSearch_float64_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_float32_c(f32* array, int startOffset, int endOffset, f32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_float32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_float32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_float32_c(f32* array, int arrayLenth, f32 target) {
    return _interpolationSearch_float32_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_uint32_c(u32* array, int startOffset, int endOffset, u32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_uint32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_uint32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_uint32_c(u32* array, int arrayLenth, u32 target) {
    return _interpolationSearch_uint32_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_int32_c(i32* array, int startOffset, int endOffset, i32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_int32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_int32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_int32_c(i32* array, int arrayLenth, i32 target) {
    return _interpolationSearch_int32_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_uint16_c(u16* array, int startOffset, int endOffset, u16 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_uint16_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_uint16_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_uint16_c(u16* array, int arrayLenth, u16 target) {
    return _interpolationSearch_uint16_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_int16_c(i16* array, int startOffset, int endOffset, i16 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_int16_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_int16_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_int16_c(i16* array, int arrayLenth, i16 target) {
    return _interpolationSearch_int16_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_uint8_c(u8* array, int startOffset, int endOffset, u8 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_uint8_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_uint8_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_uint8_c(u8* array, int arrayLenth, u8 target) {
    return _interpolationSearch_uint8_c(array, 0, arrayLenth - 1, target);
}
int _interpolationSearch_int8_c(i8* array, int startOffset, int endOffset, i8 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
            floor(
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset])
            );

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_int8_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_int8_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_int8_c(i8* array, int arrayLenth, i8 target) {
    return _interpolationSearch_int8_c(array, 0, arrayLenth - 1, target);
}
