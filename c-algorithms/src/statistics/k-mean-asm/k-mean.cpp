
#include<math.h>
#include<time.h>
#include<stdlib.h>
#include<stdio.h>
#include "shared/shared.h"

boolean array1d_includes_i32(Array1d_i32* array, i32 target) {
    for (int i = 0; i < array->length; i++) {
        if (array->items[i] == target) {
            return 1;
        }
    }
    return 0;
}

typedef struct Array2d_u64 {
    Array1d_u64** items;
    int length;
} Array2d_u64;
typedef struct Array2d_i64 {
    Array1d_i64** items;
    int length;
} Array2d_i64;
typedef struct Array2d_f64 {
    Array1d_f64** items;
    int length;
} Array2d_f64;
typedef struct Array2d_f32 {
    Array1d_f32** items;
    int length;
} Array2d_f32;
typedef struct Array2d_u32 {
    Array1d_u32** items;
    int length;
} Array2d_u32;
typedef struct Array2d_i32 {
    Array1d_i32** items;
    int length;
} Array2d_i32;
typedef struct Array2d_u16 {
    Array1d_u16** items;
    int length;
} Array2d_u16;
typedef struct Array2d_i16 {
    Array1d_i16** items;
    int length;
} Array2d_i16;
typedef struct Array2d_u8 {
    Array1d_u8** items;
    int length;
} Array2d_u8;
typedef struct Array2d_i8 {
    Array1d_i8** items;
    int length;
} Array2d_i8;

Array2d_u64* makeArray2d_u64(int length) {
    Array1d_u64** items = (Array1d_u64**)malloc(length * sizeof(Array1d_u64*));
    Array2d_u64* array2d = (Array2d_u64*)malloc(sizeof(Array2d_u64));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i64* makeArray2d_i64(int length) {
    Array1d_i64** items = (Array1d_i64**)malloc(length * sizeof(Array1d_i64*));
    Array2d_i64* array2d = (Array2d_i64*)malloc(sizeof(Array2d_i64));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_f64* makeArray2d_f64(int length) {
    Array1d_f64** items = (Array1d_f64**)malloc(length * sizeof(Array1d_f64*));
    Array2d_f64* array2d = (Array2d_f64*)malloc(sizeof(Array2d_f64));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_f32* makeArray2d_f32(int length) {
    Array1d_f32** items = (Array1d_f32**)malloc(length * sizeof(Array1d_f32*));
    Array2d_f32* array2d = (Array2d_f32*)malloc(sizeof(Array2d_f32));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_u32* makeArray2d_u32(int length) {
    Array1d_u32** items = (Array1d_u32**)malloc(length * sizeof(Array1d_u32*));
    Array2d_u32* array2d = (Array2d_u32*)malloc(sizeof(Array2d_u32));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i32* makeArray2d_i32(int length) {
    Array1d_i32** items = (Array1d_i32**)malloc(length * sizeof(Array1d_i32*));
    Array2d_i32* array2d = (Array2d_i32*)malloc(sizeof(Array2d_i32));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_u16* makeArray2d_u16(int length) {
    Array1d_u16** items = (Array1d_u16**)malloc(length * sizeof(Array1d_u16*));
    Array2d_u16* array2d = (Array2d_u16*)malloc(sizeof(Array2d_u16));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i16* makeArray2d_i16(int length) {
    Array1d_i16** items = (Array1d_i16**)malloc(length * sizeof(Array1d_i16*));
    Array2d_i16* array2d = (Array2d_i16*)malloc(sizeof(Array2d_i16));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_u8* makeArray2d_u8(int length) {
    Array1d_u8** items = (Array1d_u8**)malloc(length * sizeof(Array1d_u8*));
    Array2d_u8* array2d = (Array2d_u8*)malloc(sizeof(Array2d_u8));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}
Array2d_i8* makeArray2d_i8(int length) {
    Array1d_i8** items = (Array1d_i8**)malloc(length * sizeof(Array1d_i8*));
    Array2d_i8* array2d = (Array2d_i8*)malloc(sizeof(Array2d_i8));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array2d;
}

Array2d_u64* makePoints_u64(int pointAmount) {
    Array2d_u64* points = makeArray2d_u64(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u64(pointSize);
    }
    return points;
}
Array2d_i64* makePoints_i64(int pointAmount) {
    Array2d_i64* points = makeArray2d_i64(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i64(pointSize);
    }
    return points;
}
Array2d_f64* makePoints_f64(int pointAmount) {
    Array2d_f64* points = makeArray2d_f64(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_f64(pointSize);
    }
    return points;
}
Array2d_f32* makePoints_f32(int pointAmount) {
    Array2d_f32* points = makeArray2d_f32(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_f32(pointSize);
    }
    return points;
}
Array2d_u32* makePoints_u32(int pointAmount) {
    Array2d_u32* points = makeArray2d_u32(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u32(pointSize);
    }
    return points;
}
Array2d_i32* makePoints_i32(int pointAmount) {
    Array2d_i32* points = makeArray2d_i32(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i32(pointSize);
    }
    return points;
}
Array2d_u16* makePoints_u16(int pointAmount) {
    Array2d_u16* points = makeArray2d_u16(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u16(pointSize);
    }
    return points;
}
Array2d_i16* makePoints_i16(int pointAmount) {
    Array2d_i16* points = makeArray2d_i16(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i16(pointSize);
    }
    return points;
}
Array2d_u8* makePoints_u8(int pointAmount) {
    Array2d_u8* points = makeArray2d_u8(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_u8(pointSize);
    }
    return points;
}
Array2d_i8* makePoints_i8(int pointAmount) {
    Array2d_i8* points = makeArray2d_i8(pointAmount);
    int pointSize = 2;
    for (int i = 0; i < points->length; i++) {
        points->items[i] = makeArray1d_i8(pointSize);
    }
    return points;
}

void setPoint2d_u64(Array2d_u64* points, int pointIndex, u64 point0, u64 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_i64(Array2d_i64* points, int pointIndex, i64 point0, i64 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_f64(Array2d_f64* points, int pointIndex, f64 point0, f64 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_f32(Array2d_f32* points, int pointIndex, f32 point0, f32 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_u32(Array2d_u32* points, int pointIndex, u32 point0, u32 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_i32(Array2d_i32* points, int pointIndex, i32 point0, i32 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_u16(Array2d_u16* points, int pointIndex, u16 point0, u16 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_i16(Array2d_i16* points, int pointIndex, i16 point0, i16 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_u8(Array2d_u8* points, int pointIndex, u8 point0, u8 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}
void setPoint2d_i8(Array2d_i8* points, int pointIndex, i8 point0, i8 point1) {
    points->items[pointIndex]->items[0] = point0;
    points->items[pointIndex]->items[1] = point1;
}

void deleteArray2d_u64(Array2d_u64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u64(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i64(Array2d_i64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i64(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_f64(Array2d_f64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_f64(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_f32(Array2d_f32* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_f32(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_u32(Array2d_u32* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u32(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i32(Array2d_i32* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i32(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_u16(Array2d_u16* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u16(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i16(Array2d_i16* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i16(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_u8(Array2d_u8* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u8(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}
void deleteArray2d_i8(Array2d_i8* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i8(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}

void shallowDeleteArray2d_u64(Array2d_u64* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i64(Array2d_i64* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_f64(Array2d_f64* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_f32(Array2d_f32* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_u32(Array2d_u32* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i32(Array2d_i32* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_u16(Array2d_u16* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i16(Array2d_i16* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_u8(Array2d_u8* array2d) {
    free(array2d->items);
    free(array2d);
}
void shallowDeleteArray2d_i8(Array2d_i8* array2d) {
    free(array2d->items);
    free(array2d);
}

typedef struct Array3d_u64 {
    Array2d_u64** items;
    int length;
} Array3d_u64;
typedef struct Array3d_i64 {
    Array2d_i64** items;
    int length;
} Array3d_i64;
typedef struct Array3d_f64 {
    Array2d_f64** items;
    int length;
} Array3d_f64;
typedef struct Array3d_f32 {
    Array2d_f32** items;
    int length;
} Array3d_f32;
typedef struct Array3d_u32 {
    Array2d_u32** items;
    int length;
} Array3d_u32;
typedef struct Array3d_i32 {
    Array2d_i32** items;
    int length;
} Array3d_i32;
typedef struct Array3d_u16 {
    Array2d_u16** items;
    int length;
} Array3d_u16;
typedef struct Array3d_i16 {
    Array2d_i16** items;
    int length;
} Array3d_i16;
typedef struct Array3d_u8 {
    Array2d_u8** items;
    int length;
} Array3d_u8;
typedef struct Array3d_i8 {
    Array2d_i8** items;
    int length;
} Array3d_i8;

Array3d_u64* makeArray3d_u64(int length) {
    Array2d_u64** items = (Array2d_u64**)malloc(length * sizeof(Array2d_u64*));
    Array3d_u64* array3d = (Array3d_u64*)malloc(sizeof(Array3d_u64));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i64* makeArray3d_i64(int length) {
    Array2d_i64** items = (Array2d_i64**)malloc(length * sizeof(Array2d_i64*));
    Array3d_i64* array3d = (Array3d_i64*)malloc(sizeof(Array3d_i64));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_f64* makeArray3d_f64(int length) {
    Array2d_f64** items = (Array2d_f64**)malloc(length * sizeof(Array2d_f64*));
    Array3d_f64* array3d = (Array3d_f64*)malloc(sizeof(Array3d_f64));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_f32* makeArray3d_f32(int length) {
    Array2d_f32** items = (Array2d_f32**)malloc(length * sizeof(Array2d_f32*));
    Array3d_f32* array3d = (Array3d_f32*)malloc(sizeof(Array3d_f32));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_u32* makeArray3d_u32(int length) {
    Array2d_u32** items = (Array2d_u32**)malloc(length * sizeof(Array2d_u32*));
    Array3d_u32* array3d = (Array3d_u32*)malloc(sizeof(Array3d_u32));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i32* makeArray3d_i32(int length) {
    Array2d_i32** items = (Array2d_i32**)malloc(length * sizeof(Array2d_i32*));
    Array3d_i32* array3d = (Array3d_i32*)malloc(sizeof(Array3d_i32));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_u16* makeArray3d_u16(int length) {
    Array2d_u16** items = (Array2d_u16**)malloc(length * sizeof(Array2d_u16*));
    Array3d_u16* array3d = (Array3d_u16*)malloc(sizeof(Array3d_u16));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i16* makeArray3d_i16(int length) {
    Array2d_i16** items = (Array2d_i16**)malloc(length * sizeof(Array2d_i16*));
    Array3d_i16* array3d = (Array3d_i16*)malloc(sizeof(Array3d_i16));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_u8* makeArray3d_u8(int length) {
    Array2d_u8** items = (Array2d_u8**)malloc(length * sizeof(Array2d_u8*));
    Array3d_u8* array3d = (Array3d_u8*)malloc(sizeof(Array3d_u8));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}
Array3d_i8* makeArray3d_i8(int length) {
    Array2d_i8** items = (Array2d_i8**)malloc(length * sizeof(Array2d_i8*));
    Array3d_i8* array3d = (Array3d_i8*)malloc(sizeof(Array3d_i8));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = NULL;
    }
    return array3d;
}

void deleteArray3d_u64(Array3d_u64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u64(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i64(Array3d_i64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i64(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_f64(Array3d_f64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_f64(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_f32(Array3d_f32* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_f32(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_u32(Array3d_u32* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u32(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i32(Array3d_i32* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i32(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_u16(Array3d_u16* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u16(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i16(Array3d_i16* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i16(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_u8(Array3d_u8* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u8(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}
void deleteArray3d_i8(Array3d_i8* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i8(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}

void shallowDeleteArray3d_u64(Array3d_u64* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i64(Array3d_i64* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_f64(Array3d_f64* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_f32(Array3d_f32* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_u32(Array3d_u32* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i32(Array3d_i32* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_u16(Array3d_u16* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i16(Array3d_i16* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_u8(Array3d_u8* array3d) {
    free(array3d->items);
    free(array3d);
}
void shallowDeleteArray3d_i8(Array3d_i8* array3d) {
    free(array3d->items);
    free(array3d);
}

Array1d_u64* copyArray1d_u64(Array1d_u64* array1d) {
    Array1d_u64* copied = makeArray1d_u64(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i64* copyArray1d_i64(Array1d_i64* array1d) {
    Array1d_i64* copied = makeArray1d_i64(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_f64* copyArray1d_f64(Array1d_f64* array1d) {
    Array1d_f64* copied = makeArray1d_f64(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_f32* copyArray1d_f32(Array1d_f32* array1d) {
    Array1d_f32* copied = makeArray1d_f32(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_u32* copyArray1d_u32(Array1d_u32* array1d) {
    Array1d_u32* copied = makeArray1d_u32(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i32* copyArray1d_i32(Array1d_i32* array1d) {
    Array1d_i32* copied = makeArray1d_i32(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_u16* copyArray1d_u16(Array1d_u16* array1d) {
    Array1d_u16* copied = makeArray1d_u16(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i16* copyArray1d_i16(Array1d_i16* array1d) {
    Array1d_i16* copied = makeArray1d_i16(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_u8* copyArray1d_u8(Array1d_u8* array1d) {
    Array1d_u8* copied = makeArray1d_u8(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}
Array1d_i8* copyArray1d_i8(Array1d_i8* array1d) {
    Array1d_i8* copied = makeArray1d_i8(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
}

u64 calcDistance_u64_c(Array1d_u64* point0, Array1d_u64* point1) {
    u64 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i64 calcDistance_i64_c(Array1d_i64* point0, Array1d_i64* point1) {
    i64 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
f64 calcDistance_f64_c(Array1d_f64* point0, Array1d_f64* point1) {
    f64 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
f32 calcDistance_f32_c(Array1d_f32* point0, Array1d_f32* point1) {
    f32 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
u32 calcDistance_u32_c(Array1d_u32* point0, Array1d_u32* point1) {
    u32 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i32 calcDistance_i32_c(Array1d_i32* point0, Array1d_i32* point1) {
    i32 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
u16 calcDistance_u16_c(Array1d_u16* point0, Array1d_u16* point1) {
    u16 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i16 calcDistance_i16_c(Array1d_i16* point0, Array1d_i16* point1) {
    i16 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
u8 calcDistance_u8_c(Array1d_u8* point0, Array1d_u8* point1) {
    u8 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}
i8 calcDistance_i8_c(Array1d_i8* point0, Array1d_i8* point1) {
    i8 sum = 0;
    for (int dimIndex = 0; dimIndex < point0->length; dimIndex++) {
        sum +=
            (point0->items[dimIndex] - point1->items[dimIndex]) *
            (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}

Array1d_u64* calcCentroid_u64_c(Array2d_u64* cluster, int dimensionInPoint) {
    Array1d_u64* meanPerDimension = makeArray1d_u64(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        u64 mean = sum / (u64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i64* calcCentroid_i64_c(Array2d_i64* cluster, int dimensionInPoint) {
    Array1d_i64* meanPerDimension = makeArray1d_i64(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        i64 mean = sum / (i64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_f64* calcCentroid_f64_c(Array2d_f64* cluster, int dimensionInPoint) {
    Array1d_f64* meanPerDimension = makeArray1d_f64(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        f64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        f64 mean = sum / (f64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_f32* calcCentroid_f32_c(Array2d_f32* cluster, int dimensionInPoint) {
    Array1d_f32* meanPerDimension = makeArray1d_f32(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        f32 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        f32 mean = sum / (f32)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_u32* calcCentroid_u32_c(Array2d_u32* cluster, int dimensionInPoint) {
    Array1d_u32* meanPerDimension = makeArray1d_u32(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u32 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        u32 mean = sum / (u32)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i32* calcCentroid_i32_c(Array2d_i32* cluster, int dimensionInPoint) {
    Array1d_i32* meanPerDimension = makeArray1d_i32(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i32 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        
        i32 mean = sum / (i32)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_u16* calcCentroid_u16_c(Array2d_u16* cluster, int dimensionInPoint) {
    Array1d_u16* meanPerDimension = makeArray1d_u16(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u16 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        
        u16 clusterLength = (u16)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        u16 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i16* calcCentroid_i16_c(Array2d_i16* cluster, int dimensionInPoint) {
    Array1d_i16* meanPerDimension = makeArray1d_i16(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i16 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }

        i16 clusterLength = (i16)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        i16 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_u8* calcCentroid_u8_c(Array2d_u8* cluster, int dimensionInPoint) {
    Array1d_u8* meanPerDimension = makeArray1d_u8(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u8 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }
        
        u8 clusterLength = (u8)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        u8 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
Array1d_i8* calcCentroid_i8_c(Array2d_i8* cluster, int dimensionInPoint) {
    Array1d_i8* meanPerDimension = makeArray1d_i8(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i8 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex]->items[dimensionIndex];
        }

        i8 clusterLength = (i8)(cluster->length);
        if (clusterLength == 0) {
            clusterLength = 1;
        }
        i8 mean = sum / clusterLength;
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}

int calcArgMin_u64_c(Array1d_u64* distances) {
    int indexOfSmallestValue = 0;
    u64 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u64 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i64_c(Array1d_i64* distances) {
    int indexOfSmallestValue = 0;
    i64 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i64 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_f64_c(Array1d_f64* distances) {
    int indexOfSmallestValue = 0;
    f64 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        f64 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_f32_c(Array1d_f32* distances) {
    int indexOfSmallestValue = 0;
    f32 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        f32 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_u32_c(Array1d_u32* distances) {
    int indexOfSmallestValue = 0;
    u32 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u32 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i32_c(Array1d_i32* distances) {
    int indexOfSmallestValue = 0;
    i32 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i32 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_u16_c(Array1d_u16* distances) {
    int indexOfSmallestValue = 0;
    u16 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u16 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i16_c(Array1d_i16* distances) {
    int indexOfSmallestValue = 0;
    i16 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i16 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_u8_c(Array1d_u8* distances) {
    int indexOfSmallestValue = 0;
    u8 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        u8 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
int calcArgMin_i8_c(Array1d_i8* distances) {
    int indexOfSmallestValue = 0;
    i8 smallestValue = distances->items[0];
    for (int i = 0; i < distances->length; i++) {
        i8 newDistance = distances->items[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}

boolean checkIfConverged_u64_c(Array2d_u64* oldCentroids, Array2d_u64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u64 *oldCentroid = oldCentroids->items[i];
        Array1d_u64 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i64_c(Array2d_i64* oldCentroids, Array2d_i64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i64 *oldCentroid = oldCentroids->items[i];
        Array1d_i64 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_f64_c(Array2d_f64* oldCentroids, Array2d_f64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_f64 *oldCentroid = oldCentroids->items[i];
        Array1d_f64 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_f32_c(Array2d_f32* oldCentroids, Array2d_f32* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_f32 *oldCentroid = oldCentroids->items[i];
        Array1d_f32 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_u32_c(Array2d_u32* oldCentroids, Array2d_u32* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u32 *oldCentroid = oldCentroids->items[i];
        Array1d_u32 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i32_c(Array2d_i32* oldCentroids, Array2d_i32* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i32 *oldCentroid = oldCentroids->items[i];
        Array1d_i32 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_u16_c(Array2d_u16* oldCentroids, Array2d_u16* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u16 *oldCentroid = oldCentroids->items[i];
        Array1d_u16 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i16_c(Array2d_i16* oldCentroids, Array2d_i16* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i16 *oldCentroid = oldCentroids->items[i];
        Array1d_i16 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_u8_c(Array2d_u8* oldCentroids, Array2d_u8* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_u8 *oldCentroid = oldCentroids->items[i];
        Array1d_u8 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < fabs((double)oldCentroid->items[dimIndex] - (double)newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}
boolean checkIfConverged_i8_c(Array2d_i8* oldCentroids, Array2d_i8* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i8 *oldCentroid = oldCentroids->items[i];
        Array1d_i8 *newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid->length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid->items[dimIndex] - newCentroid->items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}

/*
Creates centriods
The points are copied not refernced.
*/
Array2d_u64* initCentroid_u64_c(int numberOfCluster, Array2d_u64* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u64* centroids = makeArray2d_u64(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u64* value = points->items[index];
        centroids->items[i] = copyArray1d_u64(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_i64* initCentroid_i64_c(int numberOfCluster, Array2d_i64* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i64* centroids = makeArray2d_i64(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i64* value = points->items[index];
        centroids->items[i] = copyArray1d_i64(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_f64* initCentroid_f64_c(int numberOfCluster, Array2d_f64* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_f64* centroids = makeArray2d_f64(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_f64* value = points->items[index];
        centroids->items[i] = copyArray1d_f64(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_f32* initCentroid_f32_c(int numberOfCluster, Array2d_f32* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_f32* centroids = makeArray2d_f32(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_f32* value = points->items[index];
        centroids->items[i] = copyArray1d_f32(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_u32* initCentroid_u32_c(int numberOfCluster, Array2d_u32* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u32* centroids = makeArray2d_u32(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u32* value = points->items[index];
        centroids->items[i] = copyArray1d_u32(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_i32* initCentroid_i32_c(int numberOfCluster, Array2d_i32* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i32* centroids = makeArray2d_i32(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i32* value = points->items[index];
        centroids->items[i] = copyArray1d_i32(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_u16* initCentroid_u16_c(int numberOfCluster, Array2d_u16* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u16* centroids = makeArray2d_u16(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u16* value = points->items[index];
        centroids->items[i] = copyArray1d_u16(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_i16* initCentroid_i16_c(int numberOfCluster, Array2d_i16* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i16* centroids = makeArray2d_i16(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i16* value = points->items[index];
        centroids->items[i] = copyArray1d_i16(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_u8* initCentroid_u8_c(int numberOfCluster, Array2d_u8* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_u8* centroids = makeArray2d_u8(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_u8* value = points->items[index];
        centroids->items[i] = copyArray1d_u8(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}
Array2d_i8* initCentroid_i8_c(int numberOfCluster, Array2d_i8* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    srand((unsigned int)time(NULL));
    while (i < numberOfCluster) {
        int randomIndex = rand() % numberOfCluster;
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    Array2d_i8* centroids = makeArray2d_i8(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i8* value = points->items[index];
        centroids->items[i] = copyArray1d_i8(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}

Array1d_i32* calculteClusterAssignments_u64(Array2d_u64* points, Array2d_u64* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u64* point = points->items[i];
        Array1d_u64* distancesToEachCentroid = makeArray1d_u64(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u64* centroid = centroids->items[i];
            u64 distance = calcDistance_u64_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u64_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u64(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i64(Array2d_i64* points, Array2d_i64* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i64* point = points->items[i];
        Array1d_i64* distancesToEachCentroid = makeArray1d_i64(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i64* centroid = centroids->items[i];
            i64 distance = calcDistance_i64_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i64_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i64(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_f64(Array2d_f64* points, Array2d_f64* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_f64* point = points->items[i];
        Array1d_f64* distancesToEachCentroid = makeArray1d_f64(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_f64* centroid = centroids->items[i];
            f64 distance = calcDistance_f64_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_f64_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_f64(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_f32(Array2d_f32* points, Array2d_f32* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_f32* point = points->items[i];
        Array1d_f32* distancesToEachCentroid = makeArray1d_f32(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_f32* centroid = centroids->items[i];
            f32 distance = calcDistance_f32_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_f32_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_f32(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_u32(Array2d_u32* points, Array2d_u32* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u32* point = points->items[i];
        Array1d_u32* distancesToEachCentroid = makeArray1d_u32(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u32* centroid = centroids->items[i];
            u32 distance = calcDistance_u32_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u32_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u32(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i32(Array2d_i32* points, Array2d_i32* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i32* point = points->items[i];
        Array1d_i32* distancesToEachCentroid = makeArray1d_i32(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i32* centroid = centroids->items[i];
            i32 distance = calcDistance_i32_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i32_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i32(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_u16(Array2d_u16* points, Array2d_u16* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u16* point = points->items[i];
        Array1d_u16* distancesToEachCentroid = makeArray1d_u16(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u16* centroid = centroids->items[i];
            u16 distance = calcDistance_u16_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u16_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u16(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i16(Array2d_i16* points, Array2d_i16* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i16* point = points->items[i];
        Array1d_i16* distancesToEachCentroid = makeArray1d_i16(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i16* centroid = centroids->items[i];
            i16 distance = calcDistance_i16_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i16_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i16(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_u8(Array2d_u8* points, Array2d_u8* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_u8* point = points->items[i];
        Array1d_u8* distancesToEachCentroid = makeArray1d_u8(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_u8* centroid = centroids->items[i];
            u8 distance = calcDistance_u8_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_u8_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_u8(distancesToEachCentroid);
    }
    return clusterAssignments;
}
Array1d_i32* calculteClusterAssignments_i8(Array2d_i8* points, Array2d_i8* centroids) {
    Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
    for (int i = 0; i < points->length; i++) {
        Array1d_i8* point = points->items[i];
        Array1d_i8* distancesToEachCentroid = makeArray1d_i8(centroids->length);
        for (int i = 0; i < distancesToEachCentroid->length; i++) {
            Array1d_i8* centroid = centroids->items[i];
            i8 distance = calcDistance_i8_c(centroid, point);
            distancesToEachCentroid->items[i] = distance;
        }
        int clusterAssignment = calcArgMin_i8_c(distancesToEachCentroid);
        clusterAssignments->items[i] = clusterAssignment;

        // secure delete
        deleteArray1d_i8(distancesToEachCentroid);
    }
    return clusterAssignments;
}

Array1d_i32* calculateTotalPointPerCluster_u64(Array2d_u64* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i64(Array2d_i64* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_f64(Array2d_f64* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_f32(Array2d_f32* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_u32(Array2d_u32* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i32(Array2d_i32* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_u16(Array2d_u16* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i16(Array2d_i16* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_u8(Array2d_u8* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}
Array1d_i32* calculateTotalPointPerCluster_i8(Array2d_i8* points, Array1d_i32* clusterAssignments,int numberOfCluster) {
    Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (int i = 0; i < totalPointsPerCluster->length; i++) {
        totalPointsPerCluster->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        int clusterAssignment = clusterAssignments->items[i];
        totalPointsPerCluster->items[clusterAssignment] += 1;
    }
    return totalPointsPerCluster;
}

Array3d_u64* assignPointsToCluster_u64( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u64* points) {
    Array3d_u64* clusters =  makeArray3d_u64(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u64* array2d = makeArray2d_u64(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u64* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_i64* assignPointsToCluster_i64( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i64* points) {
    Array3d_i64* clusters =  makeArray3d_i64(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i64* array2d = makeArray2d_i64(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i64* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_f64* assignPointsToCluster_f64( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_f64* points) {
    Array3d_f64* clusters =  makeArray3d_f64(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_f64* array2d = makeArray2d_f64(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_f64* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_f32* assignPointsToCluster_f32( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_f32* points) {
    Array3d_f32* clusters =  makeArray3d_f32(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_f32* array2d = makeArray2d_f32(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_f32* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_u32* assignPointsToCluster_u32( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u32* points) {
    Array3d_u32* clusters =  makeArray3d_u32(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u32* array2d = makeArray2d_u32(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u32* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_i32* assignPointsToCluster_i32( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i32* points) {
    Array3d_i32* clusters =  makeArray3d_i32(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i32* array2d = makeArray2d_i32(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i32* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_u16* assignPointsToCluster_u16( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u16* points) {
    Array3d_u16* clusters =  makeArray3d_u16(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u16* array2d = makeArray2d_u16(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u16* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_i16* assignPointsToCluster_i16( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i16* points) {
    Array3d_i16* clusters =  makeArray3d_i16(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i16* array2d = makeArray2d_i16(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i16* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_u8* assignPointsToCluster_u8( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u8* points) {
    Array3d_u8* clusters =  makeArray3d_u8(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_u8* array2d = makeArray2d_u8(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_u8* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}
Array3d_i8* assignPointsToCluster_i8( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i8* points) {
    Array3d_i8* clusters =  makeArray3d_i8(numberOfCluster);
    
    // fill with empty 2d array
    for (int i = 0; i < numberOfCluster; i++) {
        Array2d_i8* array2d = makeArray2d_i8(totalPointsPerCluster->items[i]);
        clusters->items[i] = array2d;
    }

    Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);

    // clustersPushIndex.fill(0)
    for (int i = 0; i < clustersPushIndex->length; i++) {
        clustersPushIndex->items[i] = 0;
    }

    for (int i = 0; i < points->length; i++) {
        Array1d_i8* point = points->items[i];
        int clusterAssignment = clusterAssignments->items[i];
        int pushIndex = clustersPushIndex->items[clusterAssignment];
        clusters->items[clusterAssignment]->items[pushIndex] = point;
        clustersPushIndex->items[clusterAssignment]++;
    }
    // secure delete 1DArray
    deleteArray1d_i32(clustersPushIndex);
    return clusters;
}

Array2d_u64* calculateCentriods_u64(Array3d_u64* clusters,int dimensionsInPoint) {
    Array2d_u64* newCentroids = makeArray2d_u64(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u64* item = calcCentroid_u64_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i64* calculateCentriods_i64(Array3d_i64* clusters,int dimensionsInPoint) {
    Array2d_i64* newCentroids = makeArray2d_i64(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i64* item = calcCentroid_i64_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_f64* calculateCentriods_f64(Array3d_f64* clusters,int dimensionsInPoint) {
    Array2d_f64* newCentroids = makeArray2d_f64(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_f64* item = calcCentroid_f64_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_f32* calculateCentriods_f32(Array3d_f32* clusters,int dimensionsInPoint) {
    Array2d_f32* newCentroids = makeArray2d_f32(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_f32* item = calcCentroid_f32_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_u32* calculateCentriods_u32(Array3d_u32* clusters,int dimensionsInPoint) {
    Array2d_u32* newCentroids = makeArray2d_u32(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u32* item = calcCentroid_u32_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i32* calculateCentriods_i32(Array3d_i32* clusters,int dimensionsInPoint) {
    Array2d_i32* newCentroids = makeArray2d_i32(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i32* item = calcCentroid_i32_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_u16* calculateCentriods_u16(Array3d_u16* clusters,int dimensionsInPoint) {
    Array2d_u16* newCentroids = makeArray2d_u16(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u16* item = calcCentroid_u16_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i16* calculateCentriods_i16(Array3d_i16* clusters,int dimensionsInPoint) {
    Array2d_i16* newCentroids = makeArray2d_i16(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i16* item = calcCentroid_i16_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_u8* calculateCentriods_u8(Array3d_u8* clusters,int dimensionsInPoint) {
    Array2d_u8* newCentroids = makeArray2d_u8(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_u8* item = calcCentroid_u8_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}
Array2d_i8* calculateCentriods_i8(Array3d_i8* clusters,int dimensionsInPoint) {
    Array2d_i8* newCentroids = makeArray2d_i8(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i8* item = calcCentroid_i8_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}

Array3d_u64* kMean_u64_c(int numberOfCluster, Array2d_u64* points, int maxLoops, double tolerance) {
    Array2d_u64* centroids = initCentroid_u64_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u64* clusters = makeArray3d_u64(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u64(points,centroids);
        deleteArray2d_u64(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u64(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u64 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u64(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u64(clusters);
        }
        clusters= assignPointsToCluster_u64(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u64(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_u64_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u64(centroids);

    return clusters;
}
Array3d_i64* kMean_i64_c(int numberOfCluster, Array2d_i64* points, int maxLoops, double tolerance) {
    Array2d_i64* centroids = initCentroid_i64_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i64* clusters = makeArray3d_i64(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i64(points,centroids);
        deleteArray2d_i64(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i64(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i64 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i64(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i64(clusters);
        }
        clusters= assignPointsToCluster_i64(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i64(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_i64_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i64(centroids);

    return clusters;
}
Array3d_f64* kMean_f64_c(int numberOfCluster, Array2d_f64* points, int maxLoops, double tolerance) {
    Array2d_f64* centroids = initCentroid_f64_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_f64* clusters = makeArray3d_f64(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_f64(points,centroids);
        deleteArray2d_f64(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_f64(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_f64 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_f64(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_f64(clusters);
        }
        clusters= assignPointsToCluster_f64(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_f64(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_f64_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_f64(centroids);

    return clusters;
}
Array3d_f32* kMean_f32_c(int numberOfCluster, Array2d_f32* points, int maxLoops, double tolerance) {
    Array2d_f32* centroids = initCentroid_f32_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_f32* clusters = makeArray3d_f32(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_f32(points,centroids);
        deleteArray2d_f32(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_f32(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_f32 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_f32(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_f32(clusters);
        }
        clusters= assignPointsToCluster_f32(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_f32(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_f32_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_f32(centroids);

    return clusters;
}
Array3d_u32* kMean_u32_c(int numberOfCluster, Array2d_u32* points, int maxLoops, double tolerance) {
    Array2d_u32* centroids = initCentroid_u32_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u32* clusters = makeArray3d_u32(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u32(points,centroids);
        deleteArray2d_u32(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u32(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u32 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u32(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u32(clusters);
        }
        clusters= assignPointsToCluster_u32(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u32(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_u32_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u32(centroids);

    return clusters;
}
Array3d_i32* kMean_i32_c(int numberOfCluster, Array2d_i32* points, int maxLoops, double tolerance) {
    Array2d_i32* centroids = initCentroid_i32_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i32* clusters = makeArray3d_i32(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i32(points,centroids);
        deleteArray2d_i32(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i32(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i32 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i32(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i32(clusters);
        }
        clusters= assignPointsToCluster_i32(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i32(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_i32_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i32(centroids);

    return clusters;
}
Array3d_u16* kMean_u16_c(int numberOfCluster, Array2d_u16* points, int maxLoops, double tolerance) {
    Array2d_u16* centroids = initCentroid_u16_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u16* clusters = makeArray3d_u16(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u16(points,centroids);
        deleteArray2d_u16(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u16(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u16 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u16(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u16(clusters);
        }
        clusters= assignPointsToCluster_u16(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u16(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_u16_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u16(centroids);

    return clusters;
}
Array3d_i16* kMean_i16_c(int numberOfCluster, Array2d_i16* points, int maxLoops, double tolerance) {
    Array2d_i16* centroids = initCentroid_i16_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i16* clusters = makeArray3d_i16(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i16(points,centroids);
        deleteArray2d_i16(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i16(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i16 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i16(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i16(clusters);
        }
        clusters= assignPointsToCluster_i16(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i16(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_i16_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i16(centroids);

    return clusters;
}
Array3d_u8* kMean_u8_c(int numberOfCluster, Array2d_u8* points, int maxLoops, double tolerance) {
    Array2d_u8* centroids = initCentroid_u8_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_u8* clusters = makeArray3d_u8(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_u8(points,centroids);
        deleteArray2d_u8(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_u8(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_u8 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_u8(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_u8(clusters);
        }
        clusters= assignPointsToCluster_u8(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_u8(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_u8_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_u8(centroids);

    return clusters;
}
Array3d_i8* kMean_i8_c(int numberOfCluster, Array2d_i8* points, int maxLoops, double tolerance) {
    Array2d_i8* centroids = initCentroid_i8_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i8* clusters = makeArray3d_i8(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments_i8(points,centroids);
        deleteArray2d_i8(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster_i8(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i8 clusters and its nested array but keep the data points

        if (clusters != NULL) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != NULL) {
                    shallowDeleteArray2d_i8(clusters->items[i]);
                }
            }
            shallowDeleteArray3d_i8(clusters);
        }
        clusters= assignPointsToCluster_i8(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods_i8(clusters,dimensionInPoint);

         // secure delete oneday Array
         deleteArray1d_i32(totalPointsPerCluster);
         // secure delete 1DArray
         deleteArray1d_i32(clusterAssignments);

        converged = checkIfConverged_i8_c(centroids, centroids, tolerance);

        
        if (converged) {
            break;
        }
       
    }

   deleteArray2d_i8(centroids);

    return clusters;
}


