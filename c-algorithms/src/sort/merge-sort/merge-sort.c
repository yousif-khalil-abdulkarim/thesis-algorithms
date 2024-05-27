#include <stdlib.h>
#include <math.h>
#include "sort/merge-sort/merge-sort.h";

void merge_uint64_c(u64* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u64* L = (u64*)malloc(n1 * sizeof(u64));
    u64* R = (u64*)malloc(n2 * sizeof(u64));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_uint64_c(u64* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_uint64_c(arr, l, m);
  _mergeSort_uint64_c(arr, m + 1, r);
  merge_uint64_c(arr, l, m, r);
}
u64* mergeSort_uint64_c(u64* arr, int arrayLength) {
  _mergeSort_uint64_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_int64_c(i64* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i64* L = (i64*)malloc(n1 * sizeof(i64));
    i64* R = (i64*)malloc(n2 * sizeof(i64));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_int64_c(i64* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_int64_c(arr, l, m);
  _mergeSort_int64_c(arr, m + 1, r);
  merge_int64_c(arr, l, m, r);
}
i64* mergeSort_int64_c(i64* arr, int arrayLength) {
  _mergeSort_int64_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_float64_c(f64* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    f64* L = (f64*)malloc(n1 * sizeof(f64));
    f64* R = (f64*)malloc(n2 * sizeof(f64));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_float64_c(f64* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_float64_c(arr, l, m);
  _mergeSort_float64_c(arr, m + 1, r);
  merge_float64_c(arr, l, m, r);
}
f64* mergeSort_float64_c(f64* arr, int arrayLength) {
  _mergeSort_float64_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_float32_c(f32* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    f32* L = (f32*)malloc(n1 * sizeof(f32));
    f32* R = (f32*)malloc(n2 * sizeof(f32));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_float32_c(f32* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_float32_c(arr, l, m);
  _mergeSort_float32_c(arr, m + 1, r);
  merge_float32_c(arr, l, m, r);
}
f32* mergeSort_float32_c(f32* arr, int arrayLength) {
  _mergeSort_float32_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_uint32_c(u32* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u32* L = (u32*)malloc(n1 * sizeof(u32));
    u32* R = (u32*)malloc(n2 * sizeof(u32));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_uint32_c(u32* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_uint32_c(arr, l, m);
  _mergeSort_uint32_c(arr, m + 1, r);
  merge_uint32_c(arr, l, m, r);
}
u32* mergeSort_uint32_c(u32* arr, int arrayLength) {
  _mergeSort_uint32_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_int32_c(i32* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i32* L = (i32*)malloc(n1 * sizeof(i32));
    i32* R = (i32*)malloc(n2 * sizeof(i32));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_int32_c(i32* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_int32_c(arr, l, m);
  _mergeSort_int32_c(arr, m + 1, r);
  merge_int32_c(arr, l, m, r);
}
i32* mergeSort_int32_c(i32* arr, int arrayLength) {
  _mergeSort_int32_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_uint16_c(u16* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u16* L = (u16*)malloc(n1 * sizeof(u16));
    u16* R = (u16*)malloc(n2 * sizeof(u16));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_uint16_c(u16* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_uint16_c(arr, l, m);
  _mergeSort_uint16_c(arr, m + 1, r);
  merge_uint16_c(arr, l, m, r);
}
u16* mergeSort_uint16_c(u16* arr, int arrayLength) {
  _mergeSort_uint16_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_int16_c(i16* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i16* L = (i16*)malloc(n1 * sizeof(i16));
    i16* R = (i16*)malloc(n2 * sizeof(i16));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_int16_c(i16* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_int16_c(arr, l, m);
  _mergeSort_int16_c(arr, m + 1, r);
  merge_int16_c(arr, l, m, r);
}
i16* mergeSort_int16_c(i16* arr, int arrayLength) {
  _mergeSort_int16_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_uint8_c(u8* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    u8* L = (u8*)malloc(n1 * sizeof(u8));
    u8* R = (u8*)malloc(n2 * sizeof(u8));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_uint8_c(u8* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_uint8_c(arr, l, m);
  _mergeSort_uint8_c(arr, m + 1, r);
  merge_uint8_c(arr, l, m, r);
}
u8* mergeSort_uint8_c(u8* arr, int arrayLength) {
  _mergeSort_uint8_c(arr, 0, arrayLength - 1);
  return arr;
}

void merge_int8_c(i8* arr, int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;

    i8* L = (i8*)malloc(n1 * sizeof(i8));
    i8* R = (i8*)malloc(n2 * sizeof(i8));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    int i = 0;
    int j = 0;
    int k = l;

    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
   
    free(L);
    free(R);
}
void _mergeSort_int8_c(i8* arr, int l, int r) {
  if (l >= r) {
    return;
  }
  int m = l + floor((r - l) / 2);
  _mergeSort_int8_c(arr, l, m);
  _mergeSort_int8_c(arr, m + 1, r);
  merge_int8_c(arr, l, m, r);
}
i8* mergeSort_int8_c(i8* arr, int arrayLength) {
  _mergeSort_int8_c(arr, 0, arrayLength - 1);
  return arr;
}
