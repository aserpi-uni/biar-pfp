void vecsum_seq(const int* A, const int* B, int* C, int n) {
    int i;
    for (i=0; i<n; i++) C[i] = A[i] + B[i];
}