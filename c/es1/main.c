#include <stdio.h>
#include <immintrin.h>

void sum(int A[8], int B[8], int C[8]) {
    for (int i=0; i<8; i+=4)
    {
        __m128i a, b, c;
        a = _mm_loadu_si128((__m128i*)(A+i));
        b = _mm_loadu_si128((__m128i*)(B+i));
        c = _mm_add_epi32(a, b);
        _mm_storeu_si128((__m128i*)(C+i), c);
    }
}

int main() {
    int a[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
    int b[8] = { 10, 20, 30, 40, 50, 60, 70, 80 };
    int c[8];
    sum(a, b, c);
    printf("%d %d %d %d %d %d %d %d\n", c[0], c[1], c[2], c[3], c[4], c[5], c[6], c[7]);
    return 0;
}