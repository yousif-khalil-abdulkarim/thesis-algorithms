#ifndef K_MEAN
#define K_MEAN
#include "shared/shared.h"
#include <stdlib.h>
#include<math.h>
#include<time.h>
#include<stdlib.h>

boolean array1d_includes_i32(struct Array1d_i32* array, i32 target);

struct Array2d_i64 {
    struct Array1d_i64* items;
    int length;
};
struct Array2d_i64* makeArray2d_i64(int length);
void deleteArray2d_i64(struct Array2d_i64* array2d);

struct Array3d_i64 {
    struct Array2d_i64* items;
    int length;
};
struct Array3d_i64* makeArray3d_i64(int length);
void deleteArray3d_i64(struct Array3d_i64* array3d);

// Start !!!!
i64 calcDistance_i64_c(struct Array1d_i64* point0, struct Array1d_i64* point1);

struct Array1d_i64* calcCentroid_i64_c(struct Array2d_i64* cluster, int dimensionInPoint);

int calcArgMin_i64_c(struct Array1d_i64* distances);

boolean checkIfConverged_i64_c(struct Array2d_i64* oldCentroids, struct Array2d_i64* newCentroids, double tolerance);

struct Array2d_i64* initCentroid_i64_c(int numberOfCluster, struct Array2d_i64* points);

struct Array3d_i64* kMean_i64_c(int numberOfCluster, struct Array2d_i64* points, int maxLoops, double tolerance);
#endif