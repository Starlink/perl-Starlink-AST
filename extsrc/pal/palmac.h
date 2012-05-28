#ifndef PALMACDEF
#define PALMACDEF

/*
*+
*  Name:
*     palmac.h

*  Purpose:
*     Macros used by the PAL library

*  Language:
*     Starlink ANSI C

*  Type of Module:
*     Include file

*  Description:
*     A collection of useful macros provided and used by the PAL library

*  Authors:
*     TIMJ: Tim Jenness (JAC, Hawaii)
*     {enter_new_authors_here}

*  Notes:
*

*  History:
*     2012-02-08 (TIMJ):
*        Initial version.
*     {enter_further_changes_here}

*  Copyright:
*     Copyright (C) 2012 Science and Technology Facilities Council.
*     All Rights Reserved.

*  Licence:
*     This program is free software; you can redistribute it and/or
*     modify it under the terms of the GNU General Public License as
*     published by the Free Software Foundation; either version 3 of
*     the License, or (at your option) any later version.
*
*     This program is distributed in the hope that it will be
*     useful, but WITHOUT ANY WARRANTY; without even the implied
*     warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
*     PURPOSE. See the GNU General Public License for more details.
*
*    You should have received a copy of the GNU General Public License
*    along with this program; if not, write to the Free Software
*    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301
*    USA.

*  Bugs:
*     {note_any_bugs_here}
*-
*/

/* Pi */
static const double PAL__DPI = 3.1415926535897932384626433832795028841971693993751;

/* 2Pi */
static const double PAL__D2PI = 6.2831853071795864769252867665590057683943387987502;

/* pi/180:  degrees to radians */
static const double  PAL__DD2R = 0.017453292519943295769236907684886127134428718885417;

/* Radians to arcseconds */
static const double PAL__DR2AS = 2.0626480624709635515647335733077861319665970087963e5;

/* Arcseconds to radians */
static const double PAL__DAS2R = 4.8481368110953599358991410235794797595635330237270e-6;

/* Start of SLA modified Julian date epoch */
static const double PAL__MJD0 = 2400000.5;

/* Light time for 1 AU (sec) */
static const double PAL__CR = 499.004782;

/* Km per sec to AU per tropical century
   = 86400 * 36524.2198782 / 149597870 */
static const double PAL__VF = 21.095;

/*  Radians per year to arcsec per century. Note - must be a macro since
    its value is not a literal constant (i.e. it refers to PAL__D2PI). */
#define PAL__PMF (100.0*60.0*60.0*360.0/PAL__D2PI)

/* Mean sidereal rate - the rotational angular velocity of Earth
   in radians/sec from IERS Conventions (2003). */
static const double PAL__SR = 7.2921150e-5;

/* DNINT(A) - round to nearest whole number (double) */
#define DNINT(A) ((A)<0.0?ceil((A)-0.5):floor((A)+0.5))




#endif
