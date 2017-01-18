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
    __m128i a[n/4][n/4], b[n/4][n/4], c[n/4][n/4];

    for (int i = 0; i < n/4; i++)
        for (int j = 0; j < n/4; j++)
        {
            a[i][j] = _mm_loadu_si128((__m128i*)&A[i][j]);
            b[i][j] = _mm_loadu_si128((__m128i*)&B[i][j]);
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