#include <immintrin.h>
#include <stdio.h>

void matmul_ikj_seq(const int** A, const int** B, int** C, size_t n) {
    int i,j,k;
    for (i=0; i<n; i++)
        for (k=0; k<n; k++)
            for (j=0; j<n; j++)
                C[i][j] += A[i][k]*B[k][j];
}

void matmul_ikj(const int** A, const int** B, int** C, size_t n)
{
    int Bt[n][n], i = 0, j = 0;

    for (; i < n; i++)
        for (; j < n; j++)
            Bt[i][j] = B[i][j];


    for (i = 0; i < n; i++)
        for (j = 0; j < n; j+=4)
            for (int k = 0; k < n; k+=4)
            {
                //TODO
            }
}


int main() {
    size_t n = 8;

    int** a = (int**)malloc(n*sizeof(int*));
    int** b = (int**)malloc(n*sizeof(int*));
    int** c = (int**)malloc(n*sizeof(int*));

    for (int i = 0; i < n; i++)
    {
        a[i] = (int*)malloc(n*sizeof(int));
        b[i] = (int*)malloc(n*sizeof(int));
        c[i] = (int*)malloc(n*sizeof(int));

        for (int j = 0; j < n; j++)
        {
            a[i][j] = i + j;
            b[i][j] = i * j;
            c[i][j] = 0;
        }
    }

    matmul_ikj(a, b, c, n);

    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
            printf("%d ", c[i][j]);
        printf("\n");

        free(a[i]);
        free(b[i]);
        free(c[i]);
    }

    free(a);
    free(b);
    free(c);

    return 0;
}