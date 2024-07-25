#include "shared/shared.h"
#include "statistics/k-mean/k-mean.h"
#include<math.h>
#include<time.h>
#include<stdlib.h>

boolean array1d_includes_i32( Array1d_i32* array, i32 target) {
    for (int i = 0; i < array->length; i++) {
        if (array->items[i] == target) {
            return 1;
        }
    }
    return 0;
}

Array2d_i64* makeArray2d_i64(int length) {
    Array1d_i64* items = ( Array1d_i64*)malloc(length * sizeof( Array1d_i64));
    Array2d_i64* array2d = ( Array2d_i64*)malloc(sizeof( Array2d_i64));
    array2d->length = length;
    array2d->items = items;
    return array2d; 
}
void deleteArray2d_i64_c( Array2d_i64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i64(array2d->items += i);
    }
    free(array2d);
}

Array3d_i64* makeArray3d_i64(int length) {
    Array2d_i64* items = ( Array2d_i64*)malloc(length * sizeof( Array2d_i64));
    Array3d_i64* array3d = ( Array3d_i64*)malloc(sizeof( Array3d_i64));
    array3d->length = length;
    array3d->items = items;
    return array3d; 
}
void deleteArray3d_i64( Array3d_i64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i64_c(array3d->items += i);
    }
    free(array3d);
}

// Start !!!!
i64 calcDistance_i64_c( Array1d_i64* point0,  Array1d_i64* point1) {
    i64 sum = 0;
    for (int dimIndex= 0; dimIndex < point0->length; dimIndex++) {
        sum +=
        (point0->items[dimIndex] - point1->items[dimIndex]) *
        (point0->items[dimIndex] - point1->items[dimIndex]);
    }
    return sum;
}

Array1d_i64* calcCentroid_i64_c( Array2d_i64* cluster, int dimensionInPoint) {
    Array1d_i64* meanPerDimension = makeArray1d_i64(dimensionInPoint);
    for (int dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        i64 sum = 0;
        for (int pointIndex = 0; pointIndex < cluster->length; pointIndex++) {
            sum += cluster->items[pointIndex].items[dimensionIndex];
        }
        i64 mean = sum / (i64)(cluster->length);
        meanPerDimension->items[dimensionIndex] = mean;
    }
    return meanPerDimension;
}

int calcArgMin_i64_c( Array1d_i64* distances) {
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

boolean checkIfConverged_i64_c( Array2d_i64* oldCentroids,  Array2d_i64* newCentroids, double tolerance) {
    for (int i = 0; i < oldCentroids->length; i++) {
        Array1d_i64 oldCentroid = oldCentroids->items[i];
        Array1d_i64 newCentroid = newCentroids->items[i];
        for (int dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < (double)abs(oldCentroid.items[dimIndex] - newCentroid.items[dimIndex])) {
                return 0;
            }
        }
    }
    return 1;
}

Array2d_i64* initCentroid_i64_c(int numberOfCluster,  Array2d_i64* points) {
    Array1d_i32* randomIndices = makeArray1d_i32(numberOfCluster);

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

    Array2d_i64* centroids = makeArray2d_i64(randomIndices->length);
    for (int i = 0; i < randomIndices->length; i++) {
        int index = randomIndices->items[i];
        Array1d_i64 value = points->items[index];
        centroids->items[i] = value;
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}

Array3d_i64* kMean_i64_c(int numberOfCluster,  Array2d_i64* points, int maxLoops, double tolerance) {
    Array2d_i64* centroids = initCentroid_i64_c(numberOfCluster, points);
    
    boolean converged = 0;
    int count = 0;
    int dimensionInPoint = points->items[0].length;
    Array3d_i64* clusters = makeArray3d_i64(numberOfCluster);

    while(!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = makeArray1d_i32(points->length);
        for (int i = 0; i < points->length; i++) {
            Array1d_i64 point = points->items[i];
            Array1d_i64* distancesToEachCentroid = makeArray1d_i64(centroids->length);
            for (int i = 0; i < distancesToEachCentroid->length; i++) {
                Array1d_i64 centroid = centroids->items[i];
                i64 distance = calcDistance_i64_c(&centroid, &point);
                distancesToEachCentroid->items[i] = distance;
            }
           int clusterAssignment = calcArgMin_i64_c(distancesToEachCentroid);
           clusterAssignments->items[i] = clusterAssignment;
           deleteArray1d_i64(distancesToEachCentroid);
        }

        Array1d_i32* totalPointsPerCluster = makeArray1d_i32(numberOfCluster);
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
            Array2d_i64* array2d = makeArray2d_i64(totalPointsPerCluster->items[i]);
            clusters->items[i] = *array2d;
        }
        deleteArray1d_i32(totalPointsPerCluster);
        
        Array1d_i32* clustersPushIndex = makeArray1d_i32(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (int i = 0; i < clustersPushIndex->length; i++) {
            clustersPushIndex->items[i] = 0;
        }

        for (int i = 0; i < points->length; i++) {
            Array1d_i64 point = points->items[i];
            int clusterAssignment = clusterAssignments->items[i];
            int pushIndex = clustersPushIndex->items[clusterAssignment];
            clusters->items[clusterAssignment].items[pushIndex] = point;
            clustersPushIndex->items[clusterAssignment]++;
        }
        deleteArray1d_i32(clusterAssignments);
        deleteArray1d_i32(clustersPushIndex);
        
        Array2d_i64* newCentroids = makeArray2d_i64(numberOfCluster);
        for (int i = 0; i < newCentroids->length; i++) {
            Array1d_i64* item = calcCentroid_i64_c(&clusters->items[i], dimensionInPoint);
            
            // copy
            for(int i=0; i < item->length;i++){
                newCentroids->items[i]=item[i];
            }
            deleteArray1d_i64(item);
        }

        converged = checkIfConverged_i64_c(newCentroids, centroids, tolerance);
        // copy
        for(int i = 0; i < centroids->length; i++){
            centroids->items[i] = newCentroids->items[i];
        }
       
        deleteArray2d_i64_c(newCentroids);
        if (converged) {
            return clusters;
        }
    }
    deleteArray2d_i64_c(centroids);

    return clusters;
}