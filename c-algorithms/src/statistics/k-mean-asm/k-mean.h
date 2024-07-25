#ifndef K_MEAN
#define K_MEAN
#include "shared/shared.h"
boolean array1d_includes_i32_c(Array1d_i32* array, i32 target);

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

Array2d_u64* makeArray2d_u64_c(int length);
Array2d_i64* makeArray2d_i64_c(int length);
Array2d_f64* makeArray2d_f64_c(int length);
Array2d_f32* makeArray2d_f32_c(int length);
Array2d_u32* makeArray2d_u32_c(int length);
Array2d_i32* makeArray2d_i32_c(int length);
Array2d_u16* makeArray2d_u16_c(int length);
Array2d_i16* makeArray2d_i16_c(int length);
Array2d_u8* makeArray2d_u8_c(int length);
Array2d_i8* makeArray2d_i8_c(int length);

Array2d_u64* makePoints_u64_c(int pointAmount);
Array2d_i64* makePoints_i64_c(int pointAmount);
Array2d_f64* makePoints_f64_c(int pointAmount);
Array2d_f32* makePoints_f32_c(int pointAmount);
Array2d_u32* makePoints_u32_c(int pointAmount);
Array2d_i32* makePoints_i32_c(int pointAmount);
Array2d_u16* makePoints_u16_c(int pointAmount);
Array2d_i16* makePoints_i16_c(int pointAmount);
Array2d_u8* makePoints_u8_c(int pointAmount);
Array2d_i8* makePoints_i8_c(int pointAmount);

void setPoint_u64_c(Array2d_u64* points, int pointIndex, u64 point0, u64 point1);
void setPoint_i64_c(Array2d_i64* points, int pointIndex, i64 point0, i64 point1);
void setPoint_f64_c(Array2d_f64* points, int pointIndex, f64 point0, f64 point1);
void setPoint_f32_c(Array2d_f32* points, int pointIndex, f32 point0, f32 point1);
void setPoint_u32_c(Array2d_u32* points, int pointIndex, u32 point0, u32 point1);
void setPoint_i32_c(Array2d_i32* points, int pointIndex, i32 point0, i32 point1);
void setPoint_u16_c(Array2d_u16* points, int pointIndex, u16 point0, u16 point1);
void setPoint_i16_c(Array2d_i16* points, int pointIndex, i16 point0, i16 point1);
void setPoint_u8_c(Array2d_u8* points, int pointIndex, u8 point0, u8 point1);
void setPoint_i8_c(Array2d_i8* points, int pointIndex, i8 point0, i8 point1);

void deleteArray2d_u64_c(Array2d_u64* array2d);
void deleteArray2d_i64_c(Array2d_i64* array2d);
void deleteArray2d_f64_c(Array2d_f64* array2d);
void deleteArray2d_f32_c(Array2d_f32* array2d);
void deleteArray2d_u32_c(Array2d_u32* array2d);
void deleteArray2d_i32_c(Array2d_i32* array2d);
void deleteArray2d_u16_c(Array2d_u16* array2d);
void deleteArray2d_i16_c(Array2d_i16* array2d);
void deleteArray2d_u8_c(Array2d_u8* array2d);
void deleteArray2d_i8_c(Array2d_i8* array2d);

void shallowDeleteArray2d_u64_c(Array2d_u64* array2d);
void shallowDeleteArray2d_i64_c(Array2d_i64* array2d);
void shallowDeleteArray2d_f64_c(Array2d_f64* array2d);
void shallowDeleteArray2d_f32_c(Array2d_f32* array2d);
void shallowDeleteArray2d_u32_c(Array2d_u32* array2d);
void shallowDeleteArray2d_i32_c(Array2d_i32* array2d);
void shallowDeleteArray2d_u16_c(Array2d_u16* array2d);
void shallowDeleteArray2d_i16_c(Array2d_i16* array2d);
void shallowDeleteArray2d_u8_c(Array2d_u8* array2d);
void shallowDeleteArray2d_i8_c(Array2d_i8* array2d);

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

Array3d_u64* makeArray3d_u64_c(int length);
Array3d_i64* makeArray3d_i64_c(int length);
Array3d_f64* makeArray3d_f64_c(int length);
Array3d_f32* makeArray3d_f32_c(int length);
Array3d_u32* makeArray3d_u32_c(int length);
Array3d_i32* makeArray3d_i32_c(int length);
Array3d_u16* makeArray3d_u16_c(int length);
Array3d_i16* makeArray3d_i16_c(int length);
Array3d_u8* makeArray3d_u8_c(int length);
Array3d_i8* makeArray3d_i8_c(int length);

void deleteArray3d_u64_c(Array3d_u64* array3d);
void deleteArray3d_i64_c(Array3d_i64* array3d);
void deleteArray3d_f64_c(Array3d_f64* array3d);
void deleteArray3d_f32_c(Array3d_f32* array3d);
void deleteArray3d_u32_c(Array3d_u32* array3d);
void deleteArray3d_i32_c(Array3d_i32* array3d);
void deleteArray3d_u16_c(Array3d_u16* array3d);
void deleteArray3d_i16_c(Array3d_i16* array3d);
void deleteArray3d_u8_c(Array3d_u8* array3d);
void deleteArray3d_i8_c(Array3d_i8* array3d);

void shallowDeleteArray3d_u64_c(Array3d_u64* array3d);
void shallowDeleteArray3d_i64_c(Array3d_i64* array3d);
void shallowDeleteArray3d_f64_c(Array3d_f64* array3d);
void shallowDeleteArray3d_f32_c(Array3d_f32* array3d);
void shallowDeleteArray3d_u32_c(Array3d_u32* array3d);
void shallowDeleteArray3d_i32_c(Array3d_i32* array3d);
void shallowDeleteArray3d_u16_c(Array3d_u16* array3d);
void shallowDeleteArray3d_i16_c(Array3d_i16* array3d);
void shallowDeleteArray3d_u8_c(Array3d_u8* array3d);
void shallowDeleteArray3d_i8_c(Array3d_i8* array3d);

Array1d_u64* copyArray1d_u64_c(Array1d_u64* array1d);
Array1d_i64* copyArray1d_i64_c(Array1d_i64* array1d);
Array1d_f64* copyArray1d_f64_c(Array1d_f64* array1d);
Array1d_f32* copyArray1d_f32_c(Array1d_f32* array1d);
Array1d_u32* copyArray1d_u32_c(Array1d_u32* array1d);
Array1d_i32* copyArray1d_i32_c(Array1d_i32* array1d);
Array1d_u16* copyArray1d_u16_c(Array1d_u16* array1d);
Array1d_i16* copyArray1d_i16_c(Array1d_i16* array1d);
Array1d_u8* copyArray1d_u8_c(Array1d_u8* array1d);
Array1d_i8* copyArray1d_i8_c(Array1d_i8* array1d);

u64 calcDistance_u64_c(Array1d_u64* point0, Array1d_u64* point1);
i64 calcDistance_i64_c(Array1d_i64* point0, Array1d_i64* point1);
f64 calcDistance_f64_c(Array1d_f64* point0, Array1d_f64* point1);
f32 calcDistance_f32_c(Array1d_f32* point0, Array1d_f32* point1);
u32 calcDistance_u32_c(Array1d_u32* point0, Array1d_u32* point1);
i32 calcDistance_i32_c(Array1d_i32* point0, Array1d_i32* point1);
u16 calcDistance_u16_c(Array1d_u16* point0, Array1d_u16* point1);
i16 calcDistance_i16_c(Array1d_i16* point0, Array1d_i16* point1);
u8 calcDistance_u8_c(Array1d_u8* point0, Array1d_u8* point1);
i8 calcDistance_i8_c(Array1d_i8* point0, Array1d_i8* point1);

Array1d_u64* calcCentroid_u64_c(Array2d_u64* cluster, int dimensionInPoint);
Array1d_i64* calcCentroid_i64_c(Array2d_i64* cluster, int dimensionInPoint);
Array1d_f64* calcCentroid_f64_c(Array2d_f64* cluster, int dimensionInPoint);
Array1d_f32* calcCentroid_f32_c(Array2d_f32* cluster, int dimensionInPoint);
Array1d_u32* calcCentroid_u32_c(Array2d_u32* cluster, int dimensionInPoint);
Array1d_i32* calcCentroid_i32_c(Array2d_i32* cluster, int dimensionInPoint);
Array1d_u16* calcCentroid_u16_c(Array2d_u16* cluster, int dimensionInPoint);
Array1d_i16* calcCentroid_i16_c(Array2d_i16* cluster, int dimensionInPoint);
Array1d_u8* calcCentroid_u8_c(Array2d_u8* cluster, int dimensionInPoint);
Array1d_i8* calcCentroid_i8_c(Array2d_i8* cluster, int dimensionInPoint);

int calcArgMin_u64_c(Array1d_u64* distances);
int calcArgMin_i64_c(Array1d_i64* distances);
int calcArgMin_f64_c(Array1d_f64* distances);
int calcArgMin_f32_c(Array1d_f32* distances);
int calcArgMin_u32_c(Array1d_u32* distances);
int calcArgMin_i32_c(Array1d_i32* distances);
int calcArgMin_u16_c(Array1d_u16* distances);
int calcArgMin_i16_c(Array1d_i16* distances);
int calcArgMin_u8_c(Array1d_u8* distances);
int calcArgMin_i8_c(Array1d_i8* distances);

boolean checkIfConverged_u64_c(Array2d_u64* oldCentroids, Array2d_u64* newCentroids, double tolerance);
boolean checkIfConverged_i64_c(Array2d_i64* oldCentroids, Array2d_i64* newCentroids, double tolerance);
boolean checkIfConverged_f64_c(Array2d_f64* oldCentroids, Array2d_f64* newCentroids, double tolerance);
boolean checkIfConverged_f32_c(Array2d_f32* oldCentroids, Array2d_f32* newCentroids, double tolerance);
boolean checkIfConverged_u32_c(Array2d_u32* oldCentroids, Array2d_u32* newCentroids, double tolerance);
boolean checkIfConverged_i32_c(Array2d_i32* oldCentroids, Array2d_i32* newCentroids, double tolerance);
boolean checkIfConverged_u16_c(Array2d_u16* oldCentroids, Array2d_u16* newCentroids, double tolerance);
boolean checkIfConverged_i16_c(Array2d_i16* oldCentroids, Array2d_i16* newCentroids, double tolerance);
boolean checkIfConverged_u8_c(Array2d_u8* oldCentroids, Array2d_u8* newCentroids, double tolerance);
boolean checkIfConverged_i8_c(Array2d_i8* oldCentroids, Array2d_i8* newCentroids, double tolerance);

Array2d_u64* initCentroid_u64_c(int numberOfCluster, Array2d_u64* points);
Array2d_i64* initCentroid_i64_c(int numberOfCluster, Array2d_i64* points);
Array2d_f64* initCentroid_f64_c(int numberOfCluster, Array2d_f64* points);
Array2d_f32* initCentroid_f32_c(int numberOfCluster, Array2d_f32* points);
Array2d_u32* initCentroid_u32_c(int numberOfCluster, Array2d_u32* points);
Array2d_i32* initCentroid_i32_c(int numberOfCluster, Array2d_i32* points);
Array2d_u16* initCentroid_u16_c(int numberOfCluster, Array2d_u16* points);
Array2d_i16* initCentroid_i16_c(int numberOfCluster, Array2d_i16* points);
Array2d_u8* initCentroid_u8_c(int numberOfCluster, Array2d_u8* points);
Array2d_i8* initCentroid_i8_c(int numberOfCluster, Array2d_i8* points);

Array1d_i32* calculteClusterAssignments_u64_c(Array2d_u64* points, Array2d_u64* centroids);
Array1d_i32* calculteClusterAssignments_i64_c(Array2d_i64* points, Array2d_i64* centroids);
Array1d_i32* calculteClusterAssignments_f64_c(Array2d_f64* points, Array2d_f64* centroids);
Array1d_i32* calculteClusterAssignments_f32_c(Array2d_f32* points, Array2d_f32* centroids);
Array1d_i32* calculteClusterAssignments_u32_c(Array2d_u32* points, Array2d_u32* centroids);
Array1d_i32* calculteClusterAssignments_i32_c(Array2d_i32* points, Array2d_i32* centroids);
Array1d_i32* calculteClusterAssignments_u16_c(Array2d_u16* points, Array2d_u16* centroids);
Array1d_i32* calculteClusterAssignments_i16_c(Array2d_i16* points, Array2d_i16* centroids);
Array1d_i32* calculteClusterAssignments_u8_c(Array2d_u8* points, Array2d_u8* centroids);
Array1d_i32* calculteClusterAssignments_i8_c(Array2d_i8* points, Array2d_i8* centroids);

Array1d_i32* calculateTotalPointPerCluster_u64_c(Array2d_u64* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_i64_c(Array2d_i64* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_f64_c(Array2d_f64* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_f32_c(Array2d_f32* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_u32_c(Array2d_u32* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_i32_c(Array2d_i32* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_u16_c(Array2d_u16* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_i16_c(Array2d_i16* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_u8_c(Array2d_u8* points, Array1d_i32* clusterAssignments,int numberOfCluster);
Array1d_i32* calculateTotalPointPerCluster_i8_c(Array2d_i8* points, Array1d_i32* clusterAssignments,int numberOfCluster);

Array3d_u64* assignPointsToCluster_u64_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u64* points);
Array3d_i64* assignPointsToCluster_i64_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i64* points);
Array3d_f64* assignPointsToCluster_f64_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_f64* points);
Array3d_f32* assignPointsToCluster_f32_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_f32* points);
Array3d_u32* assignPointsToCluster_u32_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u32* points);
Array3d_i32* assignPointsToCluster_i32_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i32* points);
Array3d_u16* assignPointsToCluster_u16_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u16* points);
Array3d_i16* assignPointsToCluster_i16_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i16* points);
Array3d_u8* assignPointsToCluster_u8_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_u8* points);
Array3d_i8* assignPointsToCluster_i8_c(int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i8* points);

Array2d_u64* calculateCentriods_u64_c(Array3d_u64* clusters,int dimensionsInPoint);
Array2d_i64* calculateCentriods_i64_c(Array3d_i64* clusters,int dimensionsInPoint);
Array2d_f64* calculateCentriods_f64_c(Array3d_f64* clusters,int dimensionsInPoint);
Array2d_f32* calculateCentriods_f32_c(Array3d_f32* clusters,int dimensionsInPoint);
Array2d_u32* calculateCentriods_u32_c(Array3d_u32* clusters,int dimensionsInPoint);
Array2d_i32* calculateCentriods_i32_c(Array3d_i32* clusters,int dimensionsInPoint);
Array2d_u16* calculateCentriods_u16_c(Array3d_u16* clusters,int dimensionsInPoint);
Array2d_i16* calculateCentriods_i16_c(Array3d_i16* clusters,int dimensionsInPoint);
Array2d_u8* calculateCentriods_u8_c(Array3d_u8* clusters,int dimensionsInPoint);
Array2d_i8* calculateCentriods_i8_c(Array3d_i8* clusters,int dimensionsInPoint);
Array3d_u64* kMean_u64_c(int numberOfCluster, Array2d_u64* points, int maxLoops, double tolerance);
Array3d_i64* kMean_i64_c(int numberOfCluster, Array2d_i64* points, int maxLoops, double tolerance);
Array3d_f64* kMean_f64_c(int numberOfCluster, Array2d_f64* points, int maxLoops, double tolerance);
Array3d_f32* kMean_f32_c(int numberOfCluster, Array2d_f32* points, int maxLoops, double tolerance);
Array3d_u32* kMean_u32_c(int numberOfCluster, Array2d_u32* points, int maxLoops, double tolerance);
Array3d_i32* kMean_i32_c(int numberOfCluster, Array2d_i32* points, int maxLoops, double tolerance);
Array3d_u16* kMean_u16_c(int numberOfCluster, Array2d_u16* points, int maxLoops, double tolerance);
Array3d_i16* kMean_i16_c(int numberOfCluster, Array2d_i16* points, int maxLoops, double tolerance);
Array3d_u8* kMean_u8_c(int numberOfCluster, Array2d_u8* points, int maxLoops, double tolerance);
Array3d_i8* kMean_i8_c(int numberOfCluster, Array2d_i8* points, int maxLoops, double tolerance);

#endif