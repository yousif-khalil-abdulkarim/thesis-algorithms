function absBigInt(number: bigint): bigint {
  if (number < 0n) {
    return number * -1n;
  }
  return number;
}

function calcDistance_i64_js(
  point0: BigInt64Array,
  point1: BigInt64Array
): bigint {
  let sum = 0n;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_i64_js(
  cluster: BigInt64Array[],
  dimensionInPoint: number
): BigInt64Array {
  const meanPerDimension = new BigInt64Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0n;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / BigInt(cluster.length);
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i64_js(distances: BigInt64Array): number {
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
function checkIfConverged_i64_js(
  oldCentroids: BigInt64Array[],
  newCentroids: BigInt64Array[],
  tolerance: number
): boolean {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (
        tolerance < absBigInt(oldCentroid[dimIndex] - newCentroid[dimIndex])
      ) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_i64_js(
  numberOfCluster: number,
  points: BigInt64Array[]
): BigInt64Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<BigInt64Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i64_js(
  numberOfCluster: number,
  points: BigInt64Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): BigInt64Array[][] {
  let centroids = initCentroid_i64_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<BigInt64Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<BigInt64Array>(numberOfCluster);
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

function calcDistance_u64_js(
  point0: BigUint64Array,
  point1: BigUint64Array
): bigint {
  let sum = 0n;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum +=
      (point0[dimIndex] - point1[dimIndex]) *
      (point0[dimIndex] - point1[dimIndex]);
  }
  return sum;
}
function calcCentroid_u64_js(
  cluster: BigUint64Array[],
  dimensionInPoint: number
): BigUint64Array {
  const meanPerDimension = new BigUint64Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0n;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / BigInt(cluster.length);
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u64_js(distances: BigUint64Array): number {
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
function checkIfConverged_u64_js(
  oldCentroids: BigUint64Array[],
  newCentroids: BigUint64Array[],
  tolerance: number
): boolean {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (
        tolerance < absBigInt(oldCentroid[dimIndex] - newCentroid[dimIndex])
      ) {
        return false;
      }
    }
  }

  return true;
}
function initCentroid_u64_js(
  numberOfCluster: number,
  points: BigUint64Array[]
): BigUint64Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<BigUint64Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u64_js(
  numberOfCluster: number,
  points: BigUint64Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): BigUint64Array[][] {
  let centroids = initCentroid_u64_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<BigUint64Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<BigUint64Array>(numberOfCluster);
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

function calcDistance_f64_js(
  point0: Float64Array,
  point1: Float64Array
): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_f64_js(
  cluster: Float64Array[],
  dimensionInPoint: number
): Float64Array {
  const meanPerDimension = new Float64Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_f64_js(distances: Float64Array): number {
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
function checkIfConverged_f64_js(
  oldCentroids: Float64Array[],
  newCentroids: Float64Array[],
  tolerance: number
): boolean {
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
function initCentroid_f64_js(
  numberOfCluster: number,
  points: Float64Array[]
): Float64Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Float64Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_f64_js(
  numberOfCluster: number,
  points: Float64Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Float64Array[][] {
  let centroids = initCentroid_f64_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Float64Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Float64Array>(numberOfCluster);
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

function calcDistance_f32_js(
  point0: Float32Array,
  point1: Float32Array
): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_f32_js(
  cluster: Float32Array[],
  dimensionInPoint: number
): Float32Array {
  const meanPerDimension = new Float32Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_f32_js(distances: Float32Array): number {
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
function checkIfConverged_f32_js(
  oldCentroids: Float32Array[],
  newCentroids: Float32Array[],
  tolerance: number
): boolean {
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
function initCentroid_f32_js(
  numberOfCluster: number,
  points: Float32Array[]
): Float32Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Float32Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_f32_js(
  numberOfCluster: number,
  points: Float32Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Float32Array[][] {
  let centroids = initCentroid_f32_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Float32Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Float32Array>(numberOfCluster);
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

function calcDistance_u32_js(
  point0: Uint32Array,
  point1: Uint32Array
): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_u32_js(
  cluster: Uint32Array[],
  dimensionInPoint: number
): Uint32Array {
  const meanPerDimension = new Uint32Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u32_js(distances: Uint32Array): number {
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
function checkIfConverged_u32_js(
  oldCentroids: Uint32Array[],
  newCentroids: Uint32Array[],
  tolerance: number
): boolean {
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
function initCentroid_u32_js(
  numberOfCluster: number,
  points: Uint32Array[]
): Uint32Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Uint32Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u32_js(
  numberOfCluster: number,
  points: Uint32Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Uint32Array[][] {
  let centroids = initCentroid_u32_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Uint32Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Uint32Array>(numberOfCluster);
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

function calcDistance_i32_js(point0: Int32Array, point1: Int32Array): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_i32_js(
  cluster: Int32Array[],
  dimensionInPoint: number
): Int32Array {
  const meanPerDimension = new Int32Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i32_js(distances: Int32Array): number {
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
function checkIfConverged_i32_js(
  oldCentroids: Int32Array[],
  newCentroids: Int32Array[],
  tolerance: number
): boolean {
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
function initCentroid_i32_js(
  numberOfCluster: number,
  points: Int32Array[]
): Int32Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Int32Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i32_js(
  numberOfCluster: number,
  points: Int32Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Int32Array[][] {
  let centroids = initCentroid_i32_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Int32Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Int32Array>(numberOfCluster);
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

function calcDistance_u16_js(
  point0: Uint16Array,
  point1: Uint16Array
): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_u16_js(
  cluster: Uint16Array[],
  dimensionInPoint: number
): Uint16Array {
  const meanPerDimension = new Uint16Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u16_js(distances: Uint16Array): number {
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
function checkIfConverged_u16_js(
  oldCentroids: Uint16Array[],
  newCentroids: Uint16Array[],
  tolerance: number
): boolean {
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
function initCentroid_u16_js(
  numberOfCluster: number,
  points: Uint16Array[]
): Uint16Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Uint16Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u16_js(
  numberOfCluster: number,
  points: Uint16Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Uint16Array[][] {
  let centroids = initCentroid_u16_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Uint16Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Uint16Array>(numberOfCluster);
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

function calcDistance_i16_js(point0: Int16Array, point1: Int16Array): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_i16_js(
  cluster: Int16Array[],
  dimensionInPoint: number
): Int16Array {
  const meanPerDimension = new Int16Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i16_js(distances: Int16Array): number {
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
function checkIfConverged_i16_js(
  oldCentroids: Int16Array[],
  newCentroids: Int16Array[],
  tolerance: number
): boolean {
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
function initCentroid_i16_js(
  numberOfCluster: number,
  points: Int16Array[]
): Int16Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Int16Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i16_js(
  numberOfCluster: number,
  points: Int16Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Int16Array[][] {
  let centroids = initCentroid_i16_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Int16Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Int16Array>(numberOfCluster);
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

function calcDistance_u8_js(point0: Uint8Array, point1: Uint8Array): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_u8_js(
  cluster: Uint8Array[],
  dimensionInPoint: number
): Uint8Array {
  const meanPerDimension = new Uint8Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_u8_js(distances: Uint8Array): number {
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
function checkIfConverged_u8_js(
  oldCentroids: Uint8Array[],
  newCentroids: Uint8Array[],
  tolerance: number
): boolean {
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
function initCentroid_u8_js(
  numberOfCluster: number,
  points: Uint8Array[]
): Uint8Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Uint8Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_u8_js(
  numberOfCluster: number,
  points: Uint8Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Uint8Array[][] {
  let centroids = initCentroid_u8_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Uint8Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Uint8Array>(numberOfCluster);
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

function calcDistance_i8_js(point0: Int8Array, point1: Int8Array): number {
  let sum = 0;
  for (let dimIndex = 0; dimIndex < point0.length; dimIndex++) {
    sum += Math.pow(point0[dimIndex] - point1[dimIndex], 2);
  }
  return sum;
}
function calcCentroid_i8_js(
  cluster: Int8Array[],
  dimensionInPoint: number
): Int8Array {
  const meanPerDimension = new Int8Array(dimensionInPoint);
  for (
    let dimensionIndex = 0;
    dimensionIndex < dimensionInPoint;
    dimensionIndex++
  ) {
    let sum = 0;
    for (let pointIndex = 0; pointIndex < cluster.length; pointIndex++) {
      sum += cluster[pointIndex][dimensionIndex];
    }
    let mean = sum / cluster.length;
    meanPerDimension[dimensionIndex] = mean;
  }

  return meanPerDimension;
}
function calcArgMin_i8_js(distances: Int8Array): number {
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
function checkIfConverged_i8_js(
  oldCentroids: Int8Array[],
  newCentroids: Int8Array[],
  tolerance: number
): boolean {
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
function initCentroid_i8_js(
  numberOfCluster: number,
  points: Int8Array[]
): Int8Array[] {
  const randomIndices = new Array<number>(numberOfCluster);

  let i = 0;
  while (i < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices[i] = randomIndex;
      i++;
    }
  }
  const centroids = new Array<Int8Array>(randomIndices.length);
  for (let i = 0; i < randomIndices.length; i++) {
    const index = randomIndices[i];
    const value = points[index];
    centroids[i] = value;
  }
  return centroids;
}
export function kMean_i8_js(
  numberOfCluster: number,
  points: Int8Array[],
  maxLoops = 1000,
  tolerance = 0.0001
): Int8Array[][] {
  let centroids = initCentroid_i8_js(numberOfCluster, points);

  let converged = false;
  let count = 0;
  const dimensionInPoint = points[0].length;
  let clusters = new Array<Int8Array[]>(numberOfCluster);

  while (!converged && count < maxLoops) {
    count++;

    const clusterAssignments = new Array<number>(points.length);
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

    const totalPointsPerCluster = new Array<number>(numberOfCluster);
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

    const clustersPushIndex = new Array<number>(numberOfCluster);
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

    const newCentroids = new Array<Int8Array>(numberOfCluster);
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
