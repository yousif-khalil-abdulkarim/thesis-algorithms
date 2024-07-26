function calcDistance_u64_asm(
  point0: StaticArray<u64>,
  point1: StaticArray<u64>
): u64 {
  let sum: u64 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_u64_asm(
  cluster: StaticArray<StaticArray<u64>>,
  dimensionInPoint: i32
): StaticArray<u64> {
  const meanPerDimension = new StaticArray<u64>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: u64 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <u64>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / <u64>cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u64_asm(distances: StaticArray<u64>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: u64 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_u64_asm(
  oldCentroids: StaticArray<StaticArray<u64>>,
  newCentroids: StaticArray<StaticArray<u64>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_u64_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u64>>
): StaticArray<StaticArray<u64>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<u64>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u64_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u64>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<u64>>> {
  let centroids = initCentroid_u64_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<u64>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<u64>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_u64_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_u64_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<u64>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_u64_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_u64_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_i64_asm(
  point0: StaticArray<i64>,
  point1: StaticArray<i64>
): i64 {
  let sum: i64 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_i64_asm(
  cluster: StaticArray<StaticArray<i64>>,
  dimensionInPoint: i32
): StaticArray<i64> {
  const meanPerDimension = new StaticArray<i64>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: i64 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <i64>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i64_asm(distances: StaticArray<i64>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: i64 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_i64_asm(
  oldCentroids: StaticArray<StaticArray<i64>>,
  newCentroids: StaticArray<StaticArray<i64>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_i64_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i64>>
): StaticArray<StaticArray<i64>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<i64>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i64_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i64>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<i64>>> {
  let centroids = initCentroid_i64_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<i64>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<i64>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_i64_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_i64_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<i64>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_i64_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_i64_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_f64_asm(
  point0: StaticArray<f64>,
  point1: StaticArray<f64>
): f64 {
  let sum: f64 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_f64_asm(
  cluster: StaticArray<StaticArray<f64>>,
  dimensionInPoint: i32
): StaticArray<f64> {
  const meanPerDimension = new StaticArray<f64>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: f64 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <f64>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_f64_asm(distances: StaticArray<f64>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: f64 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_f64_asm(
  oldCentroids: StaticArray<StaticArray<f64>>,
  newCentroids: StaticArray<StaticArray<f64>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_f64_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<f64>>
): StaticArray<StaticArray<f64>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<f64>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_f64_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<f64>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<f64>>> {
  let centroids = initCentroid_f64_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<f64>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<f64>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_f64_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_f64_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<f64>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_f64_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_f64_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_f32_asm(
  point0: StaticArray<f32>,
  point1: StaticArray<f32>
): f32 {
  let sum: f32 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_f32_asm(
  cluster: StaticArray<StaticArray<f32>>,
  dimensionInPoint: i32
): StaticArray<f32> {
  const meanPerDimension = new StaticArray<f32>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: f32 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <f32>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_f32_asm(distances: StaticArray<f32>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: f32 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_f32_asm(
  oldCentroids: StaticArray<StaticArray<f32>>,
  newCentroids: StaticArray<StaticArray<f32>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_f32_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<f32>>
): StaticArray<StaticArray<f32>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<f32>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_f32_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<f32>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<f32>>> {
  let centroids = initCentroid_f32_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<f32>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<f32>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_f32_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_f32_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<f32>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_f32_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_f32_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_u32_asm(
  point0: StaticArray<u32>,
  point1: StaticArray<u32>
): u32 {
  let sum: u32 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_u32_asm(
  cluster: StaticArray<StaticArray<u32>>,
  dimensionInPoint: i32
): StaticArray<u32> {
  const meanPerDimension = new StaticArray<u32>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: u32 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <u32>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u32_asm(distances: StaticArray<u32>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: u32 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_u32_asm(
  oldCentroids: StaticArray<StaticArray<u32>>,
  newCentroids: StaticArray<StaticArray<u32>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <u32>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_u32_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u32>>
): StaticArray<StaticArray<u32>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <u32>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<u32>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u32_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u32>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<u32>>> {
  let centroids = initCentroid_u32_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<u32>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<u32>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_u32_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_u32_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<u32>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_u32_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_u32_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_i32_asm(
  point0: StaticArray<i32>,
  point1: StaticArray<i32>
): i32 {
  let sum: i32 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_i32_asm(
  cluster: StaticArray<StaticArray<i32>>,
  dimensionInPoint: i32
): StaticArray<i32> {
  const meanPerDimension = new StaticArray<i32>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: i32 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <i32>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i32_asm(distances: StaticArray<i32>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: i32 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_i32_asm(
  oldCentroids: StaticArray<StaticArray<i32>>,
  newCentroids: StaticArray<StaticArray<i32>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <i32>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_i32_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i32>>
): StaticArray<StaticArray<i32>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <i32>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<i32>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i32_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i32>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<i32>>> {
  let centroids = initCentroid_i32_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<i32>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<i32>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_i32_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_i32_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<i32>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_i32_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_i32_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_u16_asm(
  point0: StaticArray<u16>,
  point1: StaticArray<u16>
): u16 {
  let sum: u16 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_u16_asm(
  cluster: StaticArray<StaticArray<u16>>,
  dimensionInPoint: i32
): StaticArray<u16> {
  const meanPerDimension = new StaticArray<u16>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: u16 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <u16>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u16_asm(distances: StaticArray<u16>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: u16 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_u16_asm(
  oldCentroids: StaticArray<StaticArray<u16>>,
  newCentroids: StaticArray<StaticArray<u16>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_u16_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u16>>
): StaticArray<StaticArray<u16>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<u16>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u16_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u16>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<u16>>> {
  let centroids = initCentroid_u16_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<u16>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<u16>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_u16_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_u16_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<u16>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_u16_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_u16_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_i16_asm(
  point0: StaticArray<i16>,
  point1: StaticArray<i16>
): i16 {
  let sum: i16 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_i16_asm(
  cluster: StaticArray<StaticArray<i16>>,
  dimensionInPoint: i32
): StaticArray<i16> {
  const meanPerDimension = new StaticArray<i16>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: i16 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <i16>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i16_asm(distances: StaticArray<i16>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: i16 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_i16_asm(
  oldCentroids: StaticArray<StaticArray<i16>>,
  newCentroids: StaticArray<StaticArray<i16>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_i16_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i16>>
): StaticArray<StaticArray<i16>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<i16>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i16_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i16>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<i16>>> {
  let centroids = initCentroid_i16_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<i16>>>(
    numberOfCluster
  );

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<i16>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_i16_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_i16_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<i16>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_i16_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_i16_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_u8_asm(
  point0: StaticArray<u8>,
  point1: StaticArray<u8>
): u8 {
  let sum: u8 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_u8_asm(
  cluster: StaticArray<StaticArray<u8>>,
  dimensionInPoint: i32
): StaticArray<u8> {
  const meanPerDimension = new StaticArray<u8>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: u8 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <u8>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u8_asm(distances: StaticArray<u8>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: u8 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_u8_asm(
  oldCentroids: StaticArray<StaticArray<u8>>,
  newCentroids: StaticArray<StaticArray<u8>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_u8_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u8>>
): StaticArray<StaticArray<u8>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<u8>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u8_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<u8>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<u8>>> {
  let centroids = initCentroid_u8_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<u8>>>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<u8>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_u8_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_u8_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<u8>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_u8_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_u8_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}

function calcDistance_i8_asm(
  point0: StaticArray<i8>,
  point1: StaticArray<i8>
): i8 {
  let sum: i8 = 0;
  for (let dimIndex: i32 = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_i8_asm(
  cluster: StaticArray<StaticArray<i8>>,
  dimensionInPoint: i32
): StaticArray<i8> {
  const meanPerDimension = new StaticArray<i8>(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum: i8 = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let clusterLength = <i8>cluster.length;
    if (clusterLength == 0) {
      clusterLength = 1;
    }
    let mean = sum / clusterLength;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i8_asm(distances: StaticArray<i8>): i32 {
  let indexOfSmallestValue: i32 = 0;
  let smallestValue: i8 = distances[indexOfSmallestValue];

  for (let i = 0; i < distances.length; i++) {
    const newDistance = distances[i];
    if (newDistance < smallestValue) {
      indexOfSmallestValue = i;
      smallestValue = newDistance;
    }
  }

  return indexOfSmallestValue;
}
function checkIfConverged_i8_asm(
  oldCentroids: StaticArray<StaticArray<i8>>,
  newCentroids: StaticArray<StaticArray<i8>>,
  tolerance: f64
): bool {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < <f64>abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_i8_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i8>>
): StaticArray<StaticArray<i8>> {
  const randomIndices = new StaticArray<i32>(numberOfCluster);

  let i: i32 = 0;
  while (i < numberOfCluster) {
    const randomIndex: i32 = <i32>(
      Math.floor(Math.random() * <f64>points.length)
    );
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new StaticArray<StaticArray<i8>>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i8_asm(
  numberOfCluster: i32,
  points: StaticArray<StaticArray<i8>>,
  maxLoops: i32 = 1000,
  tolerance: f64 = 0.0001
): StaticArray<StaticArray<StaticArray<i8>>> {
  let centroids = initCentroid_i8_asm(numberOfCluster, points);

  let converged: bool = false;
  let count: i32 = 0;
  const dimensionInPoint: i32 = points[0].length;
  let clusters = new StaticArray<StaticArray<StaticArray<i8>>>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new StaticArray<i32>(points.length);
    for (let i = 0; i < points.length; i++) {
      const point = points[i];
      const distancesToEachCentroid = new StaticArray<i8>(centroids.length);
      for (let i = 0; i < distancesToEachCentroid.length; i++) {
        const centroid = centroids[i];
        const distance = calcDistance_i8_asm(centroid, point);
        distancesToEachCentroid[i] = distance;
      }

      const clusterAssignment = calcArgMin_i8_asm(distancesToEachCentroid);
      clusterAssignments[i] = clusterAssignment;
    }

    const totalPointsPerCluster = new StaticArray<i32>(numberOfCluster);
    // totalPointsPerCluster.fill(0)
    for (let i = 0; i < totalPointsPerCluster.length; i++) {
      totalPointsPerCluster[i] = 0;
    }

    for (let i = 0; i < points.length; i++) {
      const clusterAssignment = clusterAssignments[i];
      totalPointsPerCluster[clusterAssignment] += 1;
    }

    //replace clusters
    for (let i = 0; i < <i32>numberOfCluster; i++) {
      clusters[i] = new StaticArray(totalPointsPerCluster[i]);
    }

    const clustersPushIndex = new StaticArray<i32>(numberOfCluster);
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

    const newCentroids = new StaticArray<StaticArray<i8>>(numberOfCluster);
    for (let i = 0; i < newCentroids.length; i++) {
      newCentroids[i] = calcCentroid_i8_asm(clusters[i], dimensionInPoint);
    }

    converged = checkIfConverged_i8_asm(newCentroids, centroids, tolerance);
    centroids = newCentroids;

    if (converged) {
      return clusters;
    }
  }

  return clusters;
}
