#ifndef K_MEAN
#define K_MEAN
#include "shared/shared.h"
#include <stdlib.h>
#include<math.h>
#include<time.h>
#include<stdlib.h>

boolean array1d_includes_i32(Array1d_i32* array, i32 target);

typedef struct Array2d_i64 {
    Array1d_i64** items;
    int length;
} Array2d_i64;
Array2d_i64* makeArray2d_i64(int length);
void deleteArray2d_i64(Array2d_i64* array2d);



typedef struct Array3d_i64 {
    Array2d_i64** items;
    int length;
} Array3d_i64;
Array3d_i64* makeArray3d_i64(int length);
void deleteArray3d_i64(Array3d_i64* array3d);

void shalloWdeleteArray3d_i64(Array3d_i64* array3d);
void shalloWdeleteArray2d_i64(Array2d_i64* array2d);
Array3d_i64* shallowCopy3d_i64(Array3d_i64* array3d);
Array2d_i64* shallowCopy2d_i64(Array2d_i64* array2d);
Array2d_i64* DeepCopy2d_i64(Array2d_i64* array2d);
// Start !!!!
i64 calcDistance_i64_c(Array1d_i64* point0, Array1d_i64* point1);

Array1d_i64* calcCentroid_i64_c(Array2d_i64* cluster, int dimensionInPoint);

int calcArgMin_i64_c(Array1d_i64* distances);

boolean checkIfConverged_i64_c(Array2d_i64* oldCentroids, Array2d_i64* newCentroids, double tolerance);

Array2d_i64* initCentroid_i64_c(int numberOfCluster, Array2d_i64* points);

Array3d_i64* kMean_i64_c(int numberOfCluster, Array2d_i64* points, int maxLoops, double tolerance);
#endif