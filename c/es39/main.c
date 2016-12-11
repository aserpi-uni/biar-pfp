#include<stdlib.h>

void main(int argc, char** argv) {
  int n = 100000;
  
  int* A = (int*)malloc(sizeof(int)*n);
  int* B = (int*)malloc(sizeof(int)*n);
  int* C = (int*)malloc(sizeof(int)*n);
  
  int i;
  for (i = 0; i < n; i++) {
    A[i] = i *2;
    B[i] = i *3;
  }

  int c = 0;
  for (; c < n; c++) {
    vecsum(A, B, C, n);
    vecsum_seq(A, B, C, n);
}
  free(A);
  free(B);
  free(C);
}
