
#include<math.h>
#include<time.h>
#include<stdlib.h>
#include<cstdio>
#include "shared/shared.h"
#include "k-mean.h"

boolean array1d_includes_i32(Array1d_i32* array, i32 target) {
    for (int i = 0; i < array->length; i++) {
        if (array->items[i] == target) {
            return 1;
        }
    }
    return 0;
}

Array2d_i64* makeArray2d_i64(int length) {
    Array1d_i64** items = (Array1d_i64**)malloc(length * sizeof(Array1d_i64*));
    Array2d_i64* array2d = (Array2d_i64*)malloc(sizeof(Array2d_i64));
    array2d->length = length;
    array2d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = nullptr;
    }
    return array2d;
}

void deleteArray2d_i64(Array2d_i64* array2d) {
    for (int i = 0; i < array2d->length; i++) {
        deleteArray1d_i64(array2d->items[i]);
    }
    free(array2d->items);
    free(array2d);
}

void shalloWdeleteArray2d_i64(Array2d_i64* array2d) {
    free(array2d->items);
    free(array2d);
}

Array3d_i64* makeArray3d_i64(int length) {
    Array2d_i64** items = (Array2d_i64**)malloc(length * sizeof(Array2d_i64*));
    Array3d_i64* array3d = (Array3d_i64*)malloc(sizeof(Array3d_i64));
    array3d->length = length;
    array3d->items = items;
    for (int i = 0; i < length;i++) {
        items[i] = nullptr;
    }
    return array3d;
}
void deleteArray3d_i64(Array3d_i64* array3d) {
    for (int i = 0; i < array3d->length; i++) {
        deleteArray2d_i64(array3d->items[i]);
    }
    free(array3d->items);
    free(array3d);
}

void shalloWdeleteArray3d_i64(Array3d_i64* array3d) {
    free(array3d->items);
    free(array3d);
}


Array3d_i64* shallowCopy3d_i64(Array3d_i64* array3d) {
    Array3d_i64* newArray = makeArray3d_i64(array3d->length);
    for (int i = 0; i < array3d->length;i++) {
        newArray->items[i] = array3d->items[i];
    }
    return newArray;
}

Array2d_i64* shallowCopy2d_i64(Array2d_i64* array2d) {
    Array2d_i64* newArray = makeArray2d_i64(array2d->length);
    for (int i = 0; i < array2d->length;i++) {
        newArray->items[i] = array2d->items[i];
    }
    return newArray;
}

Array2d_i64 *DeepCopy2d_i64(Array2d_i64* array2d) {
    Array2d_i64* new2DArray = makeArray2d_i64(array2d->length);

    for (int i = 0; i < array2d->length;i++) {
        Array1d_i64* new1DArray = makeArray1d_i64(array2d->length);
        Array1d_i64* old1DArray = array2d->items[i];
        new2DArray->items[i] = new1DArray;

        for (int j = 0; j < old1DArray->length;j++) {
            new1DArray->items[j] = old1DArray->items[j];
        }
       
    }
    return new2DArray;
}

Array1d_i64* copy1d_i64(Array1d_i64* array1d) {
    Array1d_i64* copied = makeArray1d_i64(array1d->length);
    for (int i = 0; i < array1d->length;i++) {
        copied->items[i] = array1d->items[i];
    }
    return copied;
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

/*
Creates centriods
The points are copied not refernced.
*/
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
        centroids->items[i] = copy1d_i64(value);
    }
    deleteArray1d_i32(randomIndices);
    return centroids;
}

Array1d_i32* calculteClusterAssignments(Array2d_i64* points, Array2d_i64* centroids) {
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

Array1d_i32* calculateTotalPointPerCluster(Array2d_i64* points,Array1d_i32* clusterAssignments,int numberOfCluster) {
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

Array3d_i64* assignPointsToCluster( int numberOfCluster, Array1d_i32* clusterAssignments, Array1d_i32* totalPointsPerCluster, Array2d_i64* points) {
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

Array2d_i64* calculateCentriods( Array3d_i64* clusters,int dimensionsInPoint) {
    Array2d_i64* newCentroids = makeArray2d_i64(clusters->length);
    for (int i = 0; i < newCentroids->length; i++) {

        Array1d_i64* item = calcCentroid_i64_c(clusters->items[i], dimensionsInPoint);
        newCentroids->items[i] = item;
    }

    return newCentroids;
}

Array3d_i64* kMean_i64_c(int numberOfCluster, Array2d_i64* points, int maxLoops, double tolerance) {
    Array2d_i64* centroids = initCentroid_i64_c(numberOfCluster, points);

    int converged = 0;
    int count = 0;

    int dimensionInPoint = points->items[0]->length;
    Array3d_i64* clusters = makeArray3d_i64(numberOfCluster);
  
 
   while (!converged && count < maxLoops) {
        count++;

        Array1d_i32* clusterAssignments = calculteClusterAssignments(points,centroids);
        deleteArray2d_i64(centroids);

      

        Array1d_i32* totalPointsPerCluster = calculateTotalPointPerCluster(points, clusterAssignments, numberOfCluster);
        // delete makeArray3d_i64 clusters and its nested array but keep the data points

        if (clusters != nullptr) {
            for (int i = 0; i < clusters->length;i++) {
                if (clusters->items[i] != nullptr) {
                    shalloWdeleteArray2d_i64(clusters->items[i]);
                }
            }
            shalloWdeleteArray3d_i64(clusters);
        }
        clusters= assignPointsToCluster(numberOfCluster, clusterAssignments, totalPointsPerCluster, points);
         centroids = calculateCentriods(clusters,dimensionInPoint);

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