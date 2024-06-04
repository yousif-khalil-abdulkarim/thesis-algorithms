#ifndef K_MEAN
#define K_MEAN
#include "shared/shared.h"
#include <stdlib.h>
#include<math.h>
#include<time.h>
#include<stdlib.h>

boolean array1d_includes_i32(struct Array1d_i32* array, i32 target);

struct Array2d_u64 {
    struct Array1d_u64* items;
    int length;
};
struct Array2d_u64* makeArray2d_u64(int length) {
    struct Array1d_u64* items = (struct Array1d_u64*)malloc(length * sizeof(struct Array1d_u64));
    struct Array2d_u64* array2d = (struct Array2d_u64*)malloc(sizeof(struct Array2d_u64));
    array2d->length = length;
    array2d->items = items;
    return array2d; 
}
void deleteArray2d_u64(struct Array2d_u64* array2d);

struct Array3d_u64 {
    struct Array2d_u64* items;
    int length;
};
struct Array3d_u64* makeArray3d_u64(int length);
void deleteArray3d_u64(struct Array3d_u64* array3d);

// Start !!!!
u64 calcDistance_u64_c(struct Array1d_u64* point0, struct Array1d_u64* point1);

struct Array1d_u64* calcCentroid_u64_c(struct Array2d_u64* cluster, int dimensionInPoint);

int calcArgMin_u64_c(struct Array1d_u64* distances);

boolean checkIfConverged_u64_c(struct Array2d_u64* oldCentroids, struct Array2d_u64* newCentroids, double tolerance);

struct Array2d_u64* initCentroid_u64_c(int numberOfCluster, struct Array2d_u64* points);

struct Array3d_u64* kMean_u64_c(int numberOfCluster, struct Array2d_u64* points, int maxLoops, double tolerance);
#endif