#include<math.h>
#include<time.h>
#include<stdlib.h>
#include<cstdio>
#include "shared/shared.h"
#include "k-mean.h"


int main() {


	Array2d_i64* points = makeArray2d_i64(5);
	Array1d_i64* point0 = makeArray1d_i64(2);
	Array1d_i64* point1 = makeArray1d_i64(2);
	Array1d_i64* point2 = makeArray1d_i64(2);
	Array1d_i64* point3 = makeArray1d_i64(2);
	Array1d_i64* point4 = makeArray1d_i64(2);

	point0->items[0] = 1;
	point0->items[1] = 2;

	point1->items[0] = 1;
	point1->items[1] = 5;

	point2->items[0] = 1;
	point2->items[1] = 9;

	point3->items[0] = 1;
	point3->items[1] = 12;

	point4->items[0] = 21;
	point4->items[1] = 12;

	points->items[0] = point0;
	points->items[1] = point1;
	points->items[2] = point2;
	points->items[3] = point3;
	points->items[4] = point4;

	Array3d_i64* clusters = kMean_i64_c(1, points, 10, 0.1);
	deleteArray3d_i64(clusters);
	deleteShallowArray2d_i64(points);


	return 0;
}