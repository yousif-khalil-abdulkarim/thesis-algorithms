#include "shared/shared.h"
#include "statistics/k-mean/k-mean.h"
#include<math.h>
#include<time.h>
#include<stdlib.h>

boolean array1d_includes_i32(struct Array1d_i32* array, i32 target) {
    for (int i = 0; i < array->length; i++) {
        if (array->items[i] == target) {
            return 1;
        }
    }
    return 0;
}

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
void deleteArray2d_u64(struct Array2d_u64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_u64(array2d->items += i);
    }
    free(array2d);
}

struct Array3d_u64 {
    struct Array2d_u64* items;
    int length;
};
struct Array3d_u64* makeArray3d_u64(int length) {
    struct Array2d_u64* items = (struct Array2d_u64*)malloc(length * sizeof(struct Array2d_u64));
    struct Array3d_u64* array3d = (struct Array3d_u64*)malloc(sizeof(struct Array3d_u64));
    array3d->length = length;
    array3d->items = items;
    return array3d; 
}
void deleteArray3d_u64(struct Array3d_u64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_u64(array3d->items += i);
    }
    free(array3d);
}

// Start !!!!
u64 calcDistance_u64_c(struct Array1d_u64* point0, struct Array1d_u64* point1) {
    u64 sum = 0;
    for (int dimIndex= 0; dimIndex < point0->length; dimIndex++) {
        sum +=
        (point0->items[dimIndex] - point1->items[dimIndex]) *
        (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}

struct Array1d_u64* calcCentroid_u64_c(struct Array2d_u64* cluster, int dimensionInPoint) {
    struct Array1d_u64* meanPerDimension = makeArray1d_u64(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        u64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex].items[dimensionIndex];
        }
        u64 mean = sum / (u64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}

int calcArgMin_u64_c(struct Array1d_u64* distances) {
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

boolean checkIfConverged_u64_c(struct Array2d_u64* oldCentroids, struct Array2d_u64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        struct Array1d_u64 oldCentroid = oldCentroids->items[i];
        struct Array1d_u64 newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid.items[dimIndex] - newCentroid.items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}

struct Array2d_u64* initCentroid_u64_c(int numberOfCluster, struct Array2d_u64* points) {
    struct Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

    int i = 0;
    while(i < numberOfCluster) {
        srand(time(NULL));
        double randomValue = (double)rand();
        int randomIndex = (int)floor(randomValue * (double)randomIndices->length);
        if (!array1d_includes_i32(randomIndices, randomIndex)) {
            randomIndices->items[i] = randomIndex;
            i++;
        }
    }

    struct Array2d_u64* centroids = makeArray2d_u64(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        struct Array1d_u64 value = points->items[index];
        centroids->items[i] = value;
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}

struct Array3d_u64* kMean_u64_c(int numberOfCluster, struct Array2d_u64* points, int maxLoops, double tolerance) {
    struct Array2d_u64* centroids = initCentroid_u64_c(numberOfCluster, points);
    
    boolean converged = 0;
    int count = 0;
    int dimensionInPoint = points->items[0].length;
    struct Array3d_u64* clusters = makeArray3d_u64(numberOfCluster);

    while(!converged && count < maxLoops) {
        count++;

        struct Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
        for (int i = 0; i < points->length; i++) {
            struct Array1d_u64 point = points->items[i];
            struct Array1d_u64* distancesToEachCentroid = makeArray1d_u64(centroids->length);
            for (int i = 0; i < distancesToEachCentroid->length; i++) {
                struct Array1d_u64 centroid = centroids->items[i];
                u64 distance = calcDistance_u64_c(&centroid, &point);
                distancesToEachCentroid->items[i] = distance;
            }
           int clusterAssignment = calcArgMin_u64_c(distancesToEachCentroid);
           clusterAssignments->items[i] = clusterAssignment;
           deleteArray1d_u64(distancesToEachCentroid);
        }

        struct Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (int i = 0; i < totalPointsPerCluster->length; i++) {
            totalPointsPerCluster->items[i] = 0;
        }

        for (int i = 0; i < points->length; i++) {
            i32 clusterAssignment = clusterAssignments->items[i];
            totalPointsPerCluster->items[clusterAssignment] += 1;
        }
    
        //replace clusters
        for (int i = 0; i < numberOfCluster; i++) {
            struct Array2d_u64* array2d = makeArray2d_u64(totalPointsPerCluster->items[i]);
            clusters->items[i] = *array2d;
        }
        deleteArray1d_i32(totalPointsPerCluster);
        
        struct Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (int i = 0; i < clustersPushIndex->length; i++) {
            clustersPushIndex->items[i] = 0;
        }

        for (int i = 0; i < points->length; i++) {
            struct Array1d_u64 point = points->items[i];
            int clusterAssignment = clusterAssignments->items[i];
            int pushIndex = clustersPushIndex->items[clusterAssignment];
            clusters->items[clusterAssignment].items[pushIndex] = point;
            clustersPushIndex->items[clusterAssignment]++;
        }
        deleteArray1d_i32(clusterAssignments);
        deleteArray1d_i32(clustersPushIndex);
        
        struct Array2d_u64* newCentroids = makeArray2d_u64(numberOfCluster);
        for (int i = 0; i < newCentroids->length; i++) {
            struct Array1d_u64* item = calcCentroid_u64_c(&clusters->items[i], dimensionInPoint);
            
            // copy
            for(int i=0; i < item->length;i++){
                newCentroids->items[i]=item[i];
            }
            deleteArray1d_u64(item);
        }

        converged = checkIfConverged_u64_c(newCentroids, centroids, tolerance);
        // copy
        for(int i = 0; i < centroids->length; i++){
            centroids->items[i] = newCentroids->items[i];
        }
       
        deleteArray2d_u64(newCentroids);
        if (converged) {
            return clusters;
        }
    }
    deleteArray2d_u64(centroids);

    return clusters;
}