// =====================================================================
//  resize2x.c
// =====================================================================

//  Author:         (c) 2014 Nome Cognome
//  License:        See the end of this file for license information
//  Created:        June 16, 2014

//  Last changed:   $Date: 2014/06/10 --:--:-- $
//  Changed by:     $Author: demetres $
//  Revision:       $Revision: 1.00 $


#include <stdlib.h>
#include "resize2x.h"

#define KERNEL "resize2x"
#define LOCAL_SIZE 8


// ---------------------------------------------------------------------
// resize2x
// ---------------------------------------------------------------------
// data-parallel GPU version

void resize2x(unsigned char* in, int w, int h, 
              unsigned char** out, int* ow, int* oh,
              clut_device* dev, double* td)
{
    *oh = 2*h;
    *ow = 2*w;
    *out = calloc((*oh)*(*ow), sizeof(unsigned char));

    int err;
    cl_kernel ker = clCreateKernel(dev->program, KERNEL, &err);
    clut_check_err(err, "ERROR creating kernel");

    cl_mem bin = clCreateBuffer(dev->context, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
                                sizeof((*oh) * (*ow) * sizeof(unsigned char)), in, NULL);
    cl_mem bout = clCreateBuffer(dev->context, CL_MEM_WRITE_ONLY, sizeof((*oh) * (*ow) * sizeof(unsigned char)), NULL,
                                 NULL);
    if (!bin || !bout) clut_panic("ERROR crating memory object");

    err = clSetKernelArg(ker, 0, sizeof(int), &h);
    err |= clSetKernelArg(ker, 1, sizeof(int), &w);
    err |= clSetKernelArg(ker, 2, sizeof(bin), bin);
    err |= clSetKernelArg(ker, 3, sizeof(bout), bout);
    clut_check_err(err, "ERROR setting kernel arguments");


    cl_event event;
    size_t local_size[] = {LOCAL_SIZE, LOCAL_SIZE};
    size_t global_size[] = {w, h};
    global_size[0] = ((global_size[0]+LOCAL_SIZE-1)/LOCAL_SIZE)*LOCAL_SIZE;
    global_size[1] = ((global_size[1]+LOCAL_SIZE-1)/LOCAL_SIZE)*LOCAL_SIZE;
    err = clEnqueueNDRangeKernel(dev->queue, ker, 2, NULL, global_size, local_size, 0, NULL, &event);
    clut_check_err(err, "ERROR executing kernel");

    clEnqueueReadBuffer(dev->queue, bout, CL_TRUE, 0, (*oh)*(*ow)*sizeof(unsigned char), *out, 0, NULL, NULL);
    clut_check_err(err, "ERROR copying results");

    *td = clut_get_duration(event);

    clReleaseMemObject(bin);
    clReleaseMemObject(bout);
    clReleaseKernel(ker);
}


// Copyright (C) 2014 Nome Cognome

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
