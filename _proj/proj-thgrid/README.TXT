 ******************************************************************************
 * Copyright (c) 2014, Michal Seidl, michal.seidl@fsv.cvut.cz
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *****************************************************************************/
Version: 20140220

These grids are intended to use for transformation from ETRF2000 into JTSK/Bpv
in Czech Republic region. It should offer better results than 7 parameters
similarity transformation. 

The LLA file needs to be compile into binary format with nad2bin utility. The
GTX file is ready to use.

The proj.4 JTSK definition string is:
cs2cs +proj=lonlat +ellps=GRS80 +towgs84=0,0,0 +to +proj=krovak +ellps=bessel +nadgrids=czech_jtsk +geoidgrids=czech_bpv.gtx
