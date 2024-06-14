#include <math.h>
#include "search/interpolation-search/interpolation-search.h";
#include "shared/shared.h"

int _interpolationSearch_u64_c(u64* array, int startOffset, int endOffset, u64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_u64_c(struct Array1d_u64* array, u64 target) {
    return _interpolationSearch_u64_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i64_c(i64* array, int startOffset, int endOffset, i64 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_i64_c(struct Array1d_i64* array, i64 target) {
    return _interpolationSearch_i64_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_f64_c(f64* array, int startOffset, int endOffset, f64 target) {
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
            return _interpolationSearch_f64_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_f64_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_f64_c(struct Array1d_f64* array, f64 target) {
    return _interpolationSearch_f64_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_f32_c(f32* array, int startOffset, int endOffset, f32 target) {
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
            return _interpolationSearch_f32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_f32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_f32_c(struct Array1d_f32* array, f32 target) {
    return _interpolationSearch_f32_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_u32_c(u32* array, int startOffset, int endOffset, u32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_u32_c(struct Array1d_u32* array, u32 target) {
    return _interpolationSearch_u32_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i32_c(i32* array, int startOffset, int endOffset, i32 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i32_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i32_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_i32_c(struct Array1d_i32* array, i32 target) {
    return _interpolationSearch_i32_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_u16_c(u16* array, int startOffset, int endOffset, u16 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u16_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u16_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_u16_c(struct Array1d_u16* array, u16 target) {
    return _interpolationSearch_u16_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i16_c(i16* array, int startOffset, int endOffset, i16 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i16_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i16_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_i16_c(struct Array1d_i16* array, i16 target) {
    return _interpolationSearch_i16_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_u8_c(u8* array, int startOffset, int endOffset, u8 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_u8_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_u8_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_u8_c(struct Array1d_u8* array, u8 target) {
    return _interpolationSearch_u8_c(array->items, 0, array->length - 1, target);
}
int _interpolationSearch_i8_c(i8* array, int startOffset, int endOffset, i8 target) {
    int pos = -1;
    if (
        startOffset <= endOffset &&
        target >= array[startOffset] &&
        target <= array[endOffset]
    ) {
        pos =
            startOffset +
                ((endOffset - startOffset) / (array[endOffset] - array[startOffset])) *
                (target - array[startOffset]);

        if (array[pos] == target) {
            return pos;
        }

        if (array[pos] < target) {
            return _interpolationSearch_i8_c(array, pos + 1, endOffset, target);
        }

        if (array[pos] > target) {
            return _interpolationSearch_i8_c(array, startOffset, pos - 1, target);
        }
    }

    return -1;
}
int interpolationSearch_i8_c(struct Array1d_i8* array, i8 target) {
    return _interpolationSearch_i8_c(array->items, 0, array->length - 1, target);
}
