#include<stdlib.h>
#include <stdio.h>

void main(int argc, char **argv) {
    int n = 100;

    short *V = (short*) malloc(sizeof(short) * n);

    int i;
    for (i = 0; i < n; i++) {
        V[i] = 1;
    }

    int c = 0;
    for (; c < n; c++) {
        int r1 = elemsum(V, n);
        int r2 = elemsum_seq(V, n);
        printf("<%d, %d>\n", r1, r2);
    }
    free(V);
}