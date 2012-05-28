#if !defined( VERSION_INCLUDED )
#define VERSION_INCLUDED 1
/*
*+
*  Name:
*     version.h

*  Purpose:
*     Declare version numbers

*  Description:
*     Defines macros which expand to the components of the AST version
*     number, namely the major and minor version numbers, and the
*     release number.  The version number as a string is available by
*     including the file config.h, which defines macros PACKAGE_STRING,
*     PACKAGE_VERSION and (equivalently to the latter) VERSION.
*
*     For example, the version string `3.2.1' corresponds to major version
*     3, minor version 2, release 1.

*  Macros defined:
*     AST__VMAJOR
*        The AST major version number
*     AST__VMINOR
*        The AST minor version number
*     AST__RELEASE
*        The AST release number
*
*     For backwards compatibility, this module also declares macros
*     AST_MAJOR_VERS, AST_MINOR_VERS and AST_RELEASE.  The AST__*
*     macros should be used in preference to these, since the latter
*     use (non-standard) single underscores.

*  Copyright:
*     Copyright (C) 1997-2006 Council for the Central Laboratory of the
*     Research Councils

*  Licence:
*     This program is free software; you can redistribute it and/or
*     modify it under the terms of the GNU General Public Licence as
*     published by the Free Software Foundation; either version 2 of
*     the Licence, or (at your option) any later version.
*
*     This program is distributed in the hope that it will be
*     useful,but WITHOUT ANY WARRANTY; without even the implied
*     warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
*     PURPOSE. See the GNU General Public Licence for more details.
*
*     You should have received a copy of the GNU General Public Licence
*     along with this program; if not, write to the Free Software
*     Foundation, Inc., 51 Franklin Street,Fifth Floor, Boston, MA
*     02110-1301, USA

*  Authors:
*     NG: Norman Gray (Starlink)

*  History:
*     25-NOV-2003 (NG):
*        Original version
*-
*/

/* The current version of AST is 7.0.3 */
#define AST__VMAJOR    7
#define AST__VMINOR    0
#define AST__RELEASE   3

/* Deprecated macros */
#define AST_MAJOR_VERS 7
#define AST_MINOR_VERS 0
#define AST_RELEASE    3

#endif /* #if ! defined(VERSION_INCLUDED) */
