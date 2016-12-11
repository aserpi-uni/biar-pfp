#include <immintrin.h>

int elemsum(const short* A, int n) {
    int i;
    __m128i a;
    __m128i b = _mm_setzero_si128();

    for (i = 0; i < n; i += 8) {
        a = _mm_loadu_si128((__m128i*)(A+i));
        b = _mm_add_epi16(a, b);
    }
    short* B = (short*)malloc(sizeof(short) * 8);
    _mm_storeu_si128((__m128i*)B, b);

    int s = 0;
    for (; i < n; i++) {
        s += A[i];
    }

    for (i = 0; i < 8; i++) {
        s += B[i];
    }

    free(B);

    return s;
}
