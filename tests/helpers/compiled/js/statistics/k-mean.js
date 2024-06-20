function absBigInt(number) {
    if (number < 0n) {
        return number * -1n;
    }
    return number;
}
function calcDistance_i64_js(point0, point1) {
    let sum = 0n;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum +=
            (point0[dimIndex] - point1[dimIndex]) *
                (point0[dimIndex] - point1[dimIndex]);
    }
    return sum;
}
function calcCentroid_i64_js(cluster, dimensionInPoint) {
    const meanPerDimension = new BigInt64Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0n;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / BigInt(cluster.length);
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_i64_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_i64_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < absBigInt(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_i64_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_i64_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_i64_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new BigInt64Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_i64_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_i64_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_i64_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_i64_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_u64_js(point0, point1) {
    let sum = 0n;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum +=
            (point0[dimIndex] - point1[dimIndex]) *
                (point0[dimIndex] - point1[dimIndex]);
    }
    return sum;
}
function calcCentroid_u64_js(cluster, dimensionInPoint) {
    const meanPerDimension = new BigUint64Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0n;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / BigInt(cluster.length);
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_u64_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_u64_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < absBigInt(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_u64_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_u64_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_u64_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new BigUint64Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_u64_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_u64_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_u64_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_u64_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_f64_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_f64_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Float64Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_f64_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_f64_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_f64_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_f64_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_f64_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Float64Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_f64_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_f64_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_f64_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_f64_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_f32_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_f32_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Float32Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_f32_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_f32_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_f32_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_f32_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_f32_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Float32Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_f32_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_f32_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_f32_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_f32_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_u32_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_u32_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Uint32Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_u32_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_u32_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_u32_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_u32_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_u32_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Uint32Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_u32_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_u32_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_u32_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_u32_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_i32_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_i32_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Int32Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_i32_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_i32_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_i32_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_i32_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_i32_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Int32Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_i32_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_i32_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_i32_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_i32_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_u16_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_u16_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Uint16Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_u16_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_u16_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_u16_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_u16_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_u16_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Uint16Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_u16_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_u16_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_u16_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_u16_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_i16_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_i16_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Int16Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_i16_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_i16_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_i16_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_i16_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_i16_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Int16Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_i16_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_i16_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_i16_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_i16_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_u8_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_u8_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Uint8Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_u8_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_u8_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_u8_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_u8_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_u8_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Uint8Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_u8_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_u8_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_u8_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_u8_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
function calcDistance_i8_js(point0, point1) {
    let sum = 0;
    for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
        sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
    }
    return sum;
}
function calcCentroid_i8_js(cluster, dimensionInPoint) {
    const meanPerDimension = new Int8Array(dimensionInPoint);
    for (let dimensionIndex = 0; dimensionIndex < dimensionInPoint; dimensionIndex++) {
        let sum = 0;
        for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
            sum += cluster[pointIndex][dimensionIndex];
        }
        let mean = sum / cluster.length;
        meanPerDimension[dimensionIndex] = mean;
    }
    return meanPerDimension;
}
function calcArgMin_i8_js(distances) {
    let indexOfSmallestValue = 0;
    let smallestValue = distances[indexOfSmallestValue];
    for (let i = 0; i < distances.length; i++) {
        const newDistance = distances[i];
        if (newDistance < smallestValue) {
            indexOfSmallestValue = i;
            smallestValue = newDistance;
        }
    }
    return indexOfSmallestValue;
}
function checkIfConverged_i8_js(oldCentroids, newCentroids, tolerance) {
    for (let i = 0; i < oldCentroids.length; i++) {
        const oldCentroid = oldCentroids[i];
        const newCentroid = newCentroids[i];
        for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
            if (tolerance < Math.abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
                return false;
            }
        }
    }
    return true;
}
function initCentroid_i8_js(numberOfCluster, points) {
    const randomIndices = new Array(numberOfCluster);
    let i = 0;
    while (i < numberOfCluster) {
        const randomIndex = Math.floor(Math.random() * points.length);
        if (!randomIndices.includes(randomIndex)) {
            randomIndices[i] = randomIndex;
            i++;
        }
    }
    const centroids = new Array(randomIndices.length);
    for (let i = 0; i < randomIndices.length; i++) {
        const index = randomIndices[i];
        const value = points[index];
        centroids[i] = value;
    }
    return centroids;
}
export function kMean_i8_js(numberOfCluster, points, maxLoops = 1000, tolerance = 0.0001) {
    let centroids = initCentroid_i8_js(numberOfCluster, points);
    let converged = false;
    let count = 0;
    const dimensionInPoint = points[0].length;
    let clusters = new Array(numberOfCluster);
    while (!converged && count < maxLoops) {
        count++;
        const clusterAssignments = new Array(points.length);
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const distancesToEachCentroid = new Int8Array(centroids.length);
            for (let i = 0; i < distancesToEachCentroid.length; i++) {
                const centroid = centroids[i];
                const distance = calcDistance_i8_js(centroid, point);
                distancesToEachCentroid[i] = distance;
            }
            const clusterAssignment = calcArgMin_i8_js(distancesToEachCentroid);
            clusterAssignments[i] = clusterAssignment;
        }
        const totalPointsPerCluster = new Array(numberOfCluster);
        // totalPointsPerCluster.fill(0)
        for (let i = 0; i < totalPointsPerCluster.length; i++) {
            totalPointsPerCluster[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const clusterAssignment = clusterAssignments[i];
            totalPointsPerCluster[clusterAssignment] += 1;
        }
        //replace clusters
        for (let i = 0; i < numberOfCluster; i++) {
            clusters[i] = new Array(totalPointsPerCluster[i]);
        }
        const clustersPushIndex = new Array(numberOfCluster);
        // clustersPushIndex.fill(0)
        for (let i = 0; i < clustersPushIndex.length; i++) {
            clustersPushIndex[i] = 0;
        }
        for (let i = 0; i < points.length; i++) {
            const point = points[i];
            const clusterAssignment = clusterAssignments[i];
            const pushIndex = clustersPushIndex[clusterAssignment];
            clusters[clusterAssignment][pushIndex] = point;
            clustersPushIndex[clusterAssignment]++;
        }
        const newCentroids = new Array(numberOfCluster);
        for (let i = 0; i < newCentroids.length; i++) {
            newCentroids[i] = calcCentroid_i8_js(clusters[i], dimensionInPoint);
        }
        converged = checkIfConverged_i8_js(newCentroids, centroids, tolerance);
        centroids = newCentroids;
        if (converged) {
            return clusters;
        }
    }
    return clusters;
}
