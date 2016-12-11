#include <immintrin.h>

void vecsum(const int* A, const int* B, int* C, int n) {
    int i = 0;
    for (; i < n; i += 4) {
        __m128i a, b, c;
        a = _mm_loadu_si128((__m128i*)(A+i));
        b = _mm_loadu_si128((__m128i*)(B+i));
        c = _mm_add_epi32(a, b);
        _mm_storeu_si128((__m128i*)(C+i), c);
        for (; i < n; i++) {
            C[i] = A[i] + B[i];
        }
    }
}
