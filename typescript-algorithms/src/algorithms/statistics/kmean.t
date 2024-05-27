type Point = BigUint64Array;

function powerBy2(value: bigint): bigint {
  return value * value;
}
function abs(value: bigint): bigint {
  if (value < 0) {
    return value * -1n;
  }
  return value;
}
function calcEuclideanDistance(pointA: Point, pointB: Point): bigint {
  let sum = 0n;
  for (let dimIndex = 0; dimIndex < pointA.length; dimIndex++) {
    sum += powerBy2(pointA[dimIndex] - pointB[dimIndex]);
  }
  return sum;
}
function calcCentroidByMean(cluster: Point[], dimensionInPoint: number): Point {
  const meanPerDimension: BigUint64Array = new BigUint64Array(dimensionInPoint);

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

  return new BigUint64Array(meanPerDimension);
}
function calcArgMin(distances: number[]): number {
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
function checkIfConvergedBySmallDistanceCriteria(
  oldCentroids: Point[],
  newCentroids: Point[],
  tolerance = 1n
): boolean {
  for (let i = 0; i < oldCentroids.length; i++) {
    const oldCentroid = oldCentroids[i];
    const newCentroid = newCentroids[i];

    for (let dimIndex = 0; dimIndex < oldCentroid.length; dimIndex++) {
      if (tolerance < abs(oldCentroid[dimIndex] - newCentroid[dimIndex])) {
        return false;
      }
    }
  }

  return true;
}
function initCentroidByUniqueRandomSelection(
  numberOfCluster: number,
  points: Point[]
): Point[] {
  const randomIndices: number[] = [];

  while (randomIndices.length < numberOfCluster) {
    const randomIndex = Math.floor(Math.random() * points.length);
    if (!randomIndices.includes(randomIndex)) {
      randomIndices.push(randomIndex);
    }
  }

  const centroids = randomIndices.map(
    (index) => new BigUint64Array(points[index])
  );
  return centroids;
}
export {};
