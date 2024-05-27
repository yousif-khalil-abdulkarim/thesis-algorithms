#include "search/binary-search/binary-search.h";

int binarySearch_uint64_c(u64* array, int arrayLength, u64 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_int64_c(i64* array, int arrayLength, i64 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_float64_c(f64* array, int arrayLength, f64 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_float32_c(f32* array, int arrayLength, f32 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_uint32_c(u32* array, int arrayLength, u32 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_int32_c(i32* array, int arrayLength, i32 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_uint16_c(u16* array, int arrayLength, u16 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_int16_c(i16* array, int arrayLength, i16 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_uint8_c(u8* array, int arrayLength, u8 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
int binarySearch_int8_c(i8* array, int arrayLength, i8 target) {
    int l = 0;
    int r = arrayLength - 1;
    int mid = -1;
    while(r >= 1) {
        mid = l + (r - l) / 2;
        if (array[mid] == target) {
            return mid;
        }
        if (array[mid] > target) {
            r = mid - 1;
        }
        else {
            l = mid + 1;
        }
    }
    return -1;
}
