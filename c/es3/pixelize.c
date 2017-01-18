// =====================================================================
//  pixelize.c
// =====================================================================

//  Author:         (c) 2016 Camil Demetrescu
//  License:        See the end of this file for license information
//  Created:        Jan 4, 2016

//  Last changed:   $Date: 2016/01/04 15:00:07 $
//  Changed by:     $Author: demetres $
//  Revision:       $Revision: 1.00 $

#include <stdio.h>
#include "pixelize.h"
#include "smmintrin.h"

#define M(mat,i,j,rows) ((mat)[(i)*(w)+(j)])
#define MIN5 2
#define MAX5 3

// ---------------------------------------------------------------------
// pixelize
// ---------------------------------------------------------------------
void pixelize(const unsigned char* A, unsigned char* B, size_t w, size_t h){
    int i, j, ii, jj;
    for (i=0; i<h; i++)
        for (j=0; j<w; j++) {
            unsigned m = 0;
            for (ii=i-MIN5; ii<i+MAX5; ii++)
                for (jj=j-MIN5; jj<j+MAX5; jj++) {
                    if (ii<0 || ii>=h || jj<0 || jj>=w) continue;
                    unsigned v = M(A,ii,jj,w);
                    if (v>m) m=v;
                }
            M(B,i,j,w) = m;
        }
}


// ---------------------------------------------------------------------
// pixelize_vect
// ---------------------------------------------------------------------
void pixelize_vect(const unsigned char *A, unsigned char *B, size_t w, size_t h)
{
    unsigned all_zeroes[16] = {0};

    for (int i = 0; i < h; i++)
        for (int j = 0; j < w; j += 16)
        {
            __m128i a, b = _mm_loadu_si128((__m128i*)&all_zeroes);

            if(i + MAX5 < h && j + 16 + MAX5 < w)
            {
                for (int ii = -MIN5; ii < MAX5; ii++)
                {
                    for (int jj = -MIN5; jj < MAX5; jj++)
                    {
                        a = _mm_loadu_si128((__m128i*)&M(A, i + ii, j + jj, w));
                        b = _mm_max_epu8(a, b);
                    }
                }

                _mm_storeu_si128((__m128i*)&M(B, i, j, w), b);
            }

            else
            {
                for (j=0; j<w; j++) {
                    unsigned m = 0;
                    for (int ii=i-MIN5; ii<i+MAX5; ii++)
                        for (int jj=j-MIN5; jj<j+MAX5; jj++) {
                            if (ii<0 || ii>=h || jj<0 || jj>=w) continue;
                            unsigned v = M(A,ii,jj,w);
                            if (v>m) m=v;
                        }
                    M(B,i,j,w) = m;
                }
            }
        }
}


// Copyright (C) 2016 Camil Demetrescu

// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.

// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
// USA
