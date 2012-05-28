# generated automatically by aclocal 1.9.6-starlink -*- Autoconf -*-

# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004,
# 2005  Free Software Foundation, Inc.
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

# libtool.m4 - Configure libtool for the host system. -*-Autoconf-*-

# serial 47 AC_PROG_LIBTOOL


# AC_PROVIDE_IFELSE(MACRO-NAME, IF-PROVIDED, IF-NOT-PROVIDED)
# -----------------------------------------------------------
# If this macro is not defined by Autoconf, define it here.
m4_ifdef([AC_PROVIDE_IFELSE],
         [],
         [m4_define([AC_PROVIDE_IFELSE],
	         [m4_ifdef([AC_PROVIDE_$1],
		           [$2], [$3])])])


# AC_PROG_LIBTOOL
# ---------------
AC_DEFUN([AC_PROG_LIBTOOL],
[AC_REQUIRE([_AC_PROG_LIBTOOL])dnl
dnl If AC_PROG_CXX has already been expanded, run AC_LIBTOOL_CXX
dnl immediately, otherwise, hook it in at the end of AC_PROG_CXX.
  AC_PROVIDE_IFELSE([AC_PROG_CXX],
    [AC_LIBTOOL_CXX],
    [define([AC_PROG_CXX], defn([AC_PROG_CXX])[AC_LIBTOOL_CXX
  ])])
dnl And a similar setup for Fortran 77 support
  AC_PROVIDE_IFELSE([AC_PROG_F77],
    [AC_LIBTOOL_F77],
    [define([AC_PROG_F77], defn([AC_PROG_F77])[AC_LIBTOOL_F77
])])

dnl Quote A][M_PROG_GCJ so that aclocal doesn't bring it in needlessly.
dnl If either AC_PROG_GCJ or A][M_PROG_GCJ have already been expanded, run
dnl AC_LIBTOOL_GCJ immediately, otherwise, hook it in at the end of both.
  AC_PROVIDE_IFELSE([AC_PROG_GCJ],
    [AC_LIBTOOL_GCJ],
    [AC_PROVIDE_IFELSE([A][M_PROG_GCJ],
      [AC_LIBTOOL_GCJ],
      [AC_PROVIDE_IFELSE([LT_AC_PROG_GCJ],
	[AC_LIBTOOL_GCJ],
      [ifdef([AC_PROG_GCJ],
	     [define([AC_PROG_GCJ], defn([AC_PROG_GCJ])[AC_LIBTOOL_GCJ])])
       ifdef([A][M_PROG_GCJ],
	     [define([A][M_PROG_GCJ], defn([A][M_PROG_GCJ])[AC_LIBTOOL_GCJ])])
       ifdef([LT_AC_PROG_GCJ],
	     [define([LT_AC_PROG_GCJ],
		defn([LT_AC_PROG_GCJ])[AC_LIBTOOL_GCJ])])])])
])])# AC_PROG_LIBTOOL


# _AC_PROG_LIBTOOL
# ----------------
AC_DEFUN([_AC_PROG_LIBTOOL],
[AC_REQUIRE([AC_LIBTOOL_SETUP])dnl
AC_BEFORE([$0],[AC_LIBTOOL_CXX])dnl
AC_BEFORE([$0],[AC_LIBTOOL_F77])dnl
AC_BEFORE([$0],[AC_LIBTOOL_GCJ])dnl

# This can be used to rebuild libtool when needed
LIBTOOL_DEPS="$ac_aux_dir/ltmain.sh"

# Always use our own libtool.
LIBTOOL='$(SHELL) $(top_builddir)/libtool'
AC_SUBST(LIBTOOL)dnl

# Prevent multiple expansion
define([AC_PROG_LIBTOOL], [])
])# _AC_PROG_LIBTOOL


# AC_LIBTOOL_SETUP
# ----------------
AC_DEFUN([AC_LIBTOOL_SETUP],
[AC_PREREQ(2.50)dnl
AC_REQUIRE([AC_ENABLE_SHARED])dnl
AC_REQUIRE([AC_ENABLE_STATIC])dnl
AC_REQUIRE([AC_ENABLE_FAST_INSTALL])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl
AC_REQUIRE([AC_CANONICAL_BUILD])dnl
AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_PROG_LD])dnl
AC_REQUIRE([AC_PROG_LD_RELOAD_FLAG])dnl
AC_REQUIRE([AC_PROG_NM])dnl

AC_REQUIRE([AC_PROG_LN_S])dnl
AC_REQUIRE([AC_DEPLIBS_CHECK_METHOD])dnl
# Autoconf 2.13's AC_OBJEXT and AC_EXEEXT macros only works for C compilers!
AC_REQUIRE([AC_OBJEXT])dnl
AC_REQUIRE([AC_EXEEXT])dnl
dnl

AC_LIBTOOL_SYS_MAX_CMD_LEN
AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE
AC_LIBTOOL_OBJDIR

AC_REQUIRE([_LT_AC_SYS_COMPILER])dnl
_LT_AC_PROG_ECHO_BACKSLASH

case $host_os in
aix3*)
  # AIX sometimes has problems with the GCC collect2 program.  For some
  # reason, if we set the COLLECT_NAMES environment variable, the problems
  # vanish in a puff of smoke.
  if test "X${COLLECT_NAMES+set}" != Xset; then
    COLLECT_NAMES=
    export COLLECT_NAMES
  fi
  ;;
esac

# Sed substitution that helps us do robust quoting.  It backslashifies
# metacharacters that are still active within double-quoted strings.
Xsed='sed -e 1s/^X//'
[sed_quote_subst='s/\([\\"\\`$\\\\]\)/\\\1/g']

# Same as above, but do not quote variable references.
[double_quote_subst='s/\([\\"\\`\\\\]\)/\\\1/g']

# Sed substitution to delay expansion of an escaped shell variable in a
# double_quote_subst'ed string.
delay_variable_subst='s/\\\\\\\\\\\$/\\\\\\$/g'

# Sed substitution to avoid accidental globbing in evaled expressions
no_glob_subst='s/\*/\\\*/g'

# Constants:
rm="rm -f"

# Global variables:
default_ofile=libtool
can_build_shared=yes

# All known linkers require a `.a' archive for static linking (except M$VC,
# which needs '.lib').
libext=a
ltmain="$ac_aux_dir/ltmain.sh"
ofile="$default_ofile"
with_gnu_ld="$lt_cv_prog_gnu_ld"

AC_CHECK_TOOL(AR, ar, false)
AC_CHECK_TOOL(RANLIB, ranlib, :)
AC_CHECK_TOOL(STRIP, strip, :)

old_CC="$CC"
old_CFLAGS="$CFLAGS"

# Set sane defaults for various variables
test -z "$AR" && AR=ar
test -z "$AR_FLAGS" && AR_FLAGS=cru
test -z "$AS" && AS=as
test -z "$CC" && CC=cc
test -z "$LTCC" && LTCC=$CC
test -z "$DLLTOOL" && DLLTOOL=dlltool
test -z "$LD" && LD=ld
test -z "$LN_S" && LN_S="ln -s"
test -z "$MAGIC_CMD" && MAGIC_CMD=file
test -z "$NM" && NM=nm
test -z "$SED" && SED=sed
test -z "$OBJDUMP" && OBJDUMP=objdump
test -z "$RANLIB" && RANLIB=:
test -z "$STRIP" && STRIP=:
test -z "$ac_objext" && ac_objext=o

# Determine commands to create old-style static archives.
old_archive_cmds='$AR $AR_FLAGS $oldlib$oldobjs$old_deplibs'
old_postinstall_cmds='chmod 644 $oldlib'
old_postuninstall_cmds=

if test -n "$RANLIB"; then
  case $host_os in
  openbsd*)
    old_postinstall_cmds="\$RANLIB -t \$oldlib~$old_postinstall_cmds"
    ;;
  *)
    old_postinstall_cmds="\$RANLIB \$oldlib~$old_postinstall_cmds"
    ;;
  esac
  old_archive_cmds="$old_archive_cmds~\$RANLIB \$oldlib"
fi

_LT_CC_BASENAME([$compiler])

# Only perform the check for file, if the check method requires it
case $deplibs_check_method in
file_magic*)
  if test "$file_magic_cmd" = '$MAGIC_CMD'; then
    AC_PATH_MAGIC
  fi
  ;;
esac

AC_PROVIDE_IFELSE([AC_LIBTOOL_DLOPEN], enable_dlopen=yes, enable_dlopen=no)
AC_PROVIDE_IFELSE([AC_LIBTOOL_WIN32_DLL],
enable_win32_dll=yes, enable_win32_dll=no)

AC_ARG_ENABLE([libtool-lock],
    [AC_HELP_STRING([--disable-libtool-lock],
	[avoid locking (might break parallel builds)])])
test "x$enable_libtool_lock" != xno && enable_libtool_lock=yes

AC_ARG_WITH([pic],
    [AC_HELP_STRING([--with-pic],
	[try to use only PIC/non-PIC objects @<:@default=use both@:>@])],
    [pic_mode="$withval"],
    [pic_mode=default])
test -z "$pic_mode" && pic_mode=default

# Use C for the default configuration in the libtool script
tagname=
AC_LIBTOOL_LANG_C_CONFIG
_LT_AC_TAGCONFIG
])# AC_LIBTOOL_SETUP


# _LT_AC_SYS_COMPILER
# -------------------
AC_DEFUN([_LT_AC_SYS_COMPILER],
[AC_REQUIRE([AC_PROG_CC])dnl

# If no C compiler was specified, use CC.
LTCC=${LTCC-"$CC"}

# Allow CC to be a program name with arguments.
compiler=$CC
])# _LT_AC_SYS_COMPILER


# _LT_CC_BASENAME(CC)
# -------------------
# Calculate cc_basename.  Skip known compiler wrappers and cross-prefix.
AC_DEFUN([_LT_CC_BASENAME],
[for cc_temp in $1""; do
  case $cc_temp in
    compile | *[[\\/]]compile | ccache | *[[\\/]]ccache ) ;;
    distcc | *[[\\/]]distcc | purify | *[[\\/]]purify ) ;;
    \-*) ;;
    *) break;;
  esac
done
cc_basename=`$echo "X$cc_temp" | $Xsed -e 's%.*/%%' -e "s%^$host_alias-%%"`
])


# _LT_COMPILER_BOILERPLATE
# ------------------------
# Check for compiler boilerplate output or warnings with
# the simple compiler test code.
AC_DEFUN([_LT_COMPILER_BOILERPLATE],
[ac_outfile=conftest.$ac_objext
printf "$lt_simple_compile_test_code" >conftest.$ac_ext
eval "$ac_compile" 2>&1 >/dev/null | $SED '/^$/d' >conftest.err
_lt_compiler_boilerplate=`cat conftest.err`
$rm conftest*
])# _LT_COMPILER_BOILERPLATE


# _LT_LINKER_BOILERPLATE
# ----------------------
# Check for linker boilerplate output or warnings with
# the simple link test code.
AC_DEFUN([_LT_LINKER_BOILERPLATE],
[ac_outfile=conftest.$ac_objext
printf "$lt_simple_link_test_code" >conftest.$ac_ext
eval "$ac_link" 2>&1 >/dev/null | $SED '/^$/d' >conftest.err
_lt_linker_boilerplate=`cat conftest.err`
$rm conftest*
])# _LT_LINKER_BOILERPLATE


# _LT_AC_SYS_LIBPATH_AIX
# ----------------------
# Links a minimal program and checks the executable
# for the system default hardcoded library path. In most cases,
# this is /usr/lib:/lib, but when the MPI compilers are used
# the location of the communication and MPI libs are included too.
# If we don't find anything, use the default library path according
# to the aix ld manual.
AC_DEFUN([_LT_AC_SYS_LIBPATH_AIX],
[AC_LINK_IFELSE(AC_LANG_PROGRAM,[
aix_libpath=`dump -H conftest$ac_exeext 2>/dev/null | $SED -n -e '/Import File Strings/,/^$/ { /^0/ { s/^0  *\(.*\)$/\1/; p; }
}'`
# Check for a 64-bit object if we didn't find anything.
if test -z "$aix_libpath"; then aix_libpath=`dump -HX64 conftest$ac_exeext 2>/dev/null | $SED -n -e '/Import File Strings/,/^$/ { /^0/ { s/^0  *\(.*\)$/\1/; p; }
}'`; fi],[])
if test -z "$aix_libpath"; then aix_libpath="/usr/lib:/lib"; fi
])# _LT_AC_SYS_LIBPATH_AIX


# _LT_AC_SHELL_INIT(ARG)
# ----------------------
AC_DEFUN([_LT_AC_SHELL_INIT],
[ifdef([AC_DIVERSION_NOTICE],
	     [AC_DIVERT_PUSH(AC_DIVERSION_NOTICE)],
	 [AC_DIVERT_PUSH(NOTICE)])
$1
AC_DIVERT_POP
])# _LT_AC_SHELL_INIT


# _LT_AC_PROG_ECHO_BACKSLASH
# --------------------------
# Add some code to the start of the generated configure script which
# will find an echo command which doesn't interpret backslashes.
AC_DEFUN([_LT_AC_PROG_ECHO_BACKSLASH],
[_LT_AC_SHELL_INIT([
# Check that we are running under the correct shell.
SHELL=${CONFIG_SHELL-/bin/sh}

case X$ECHO in
X*--fallback-echo)
  # Remove one level of quotation (which was required for Make).
  ECHO=`echo "$ECHO" | sed 's,\\\\\[$]\\[$]0,'[$]0','`
  ;;
esac

echo=${ECHO-echo}
if test "X[$]1" = X--no-reexec; then
  # Discard the --no-reexec flag, and continue.
  shift
elif test "X[$]1" = X--fallback-echo; then
  # Avoid inline document here, it may be left over
  :
elif test "X`($echo '\t') 2>/dev/null`" = 'X\t' ; then
  # Yippee, $echo works!
  :
else
  # Restart under the correct shell.
  exec $SHELL "[$]0" --no-reexec ${1+"[$]@"}
fi

if test "X[$]1" = X--fallback-echo; then
  # used as fallback echo
  shift
  cat <<EOF
[$]*
EOF
  exit 0
fi

# The HP-UX ksh and POSIX shell print the target directory to stdout
# if CDPATH is set.
(unset CDPATH) >/dev/null 2>&1 && unset CDPATH

if test -z "$ECHO"; then
if test "X${echo_test_string+set}" != Xset; then
# find a string as large as possible, as long as the shell can cope with it
  for cmd in 'sed 50q "[$]0"' 'sed 20q "[$]0"' 'sed 10q "[$]0"' 'sed 2q "[$]0"' 'echo test'; do
    # expected sizes: less than 2Kb, 1Kb, 512 bytes, 16 bytes, ...
    if (echo_test_string="`eval $cmd`") 2>/dev/null &&
       echo_test_string="`eval $cmd`" &&
       (test "X$echo_test_string" = "X$echo_test_string") 2>/dev/null
    then
      break
    fi
  done
fi

if test "X`($echo '\t') 2>/dev/null`" = 'X\t' &&
   echo_testing_string=`($echo "$echo_test_string") 2>/dev/null` &&
   test "X$echo_testing_string" = "X$echo_test_string"; then
  :
else
  # The Solaris, AIX, and Digital Unix default echo programs unquote
  # backslashes.  This makes it impossible to quote backslashes using
  #   echo "$something" | sed 's/\\/\\\\/g'
  #
  # So, first we look for a working echo in the user's PATH.

  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
  for dir in $PATH /usr/ucb; do
    IFS="$lt_save_ifs"
    if (test -f $dir/echo || test -f $dir/echo$ac_exeext) &&
       test "X`($dir/echo '\t') 2>/dev/null`" = 'X\t' &&
       echo_testing_string=`($dir/echo "$echo_test_string") 2>/dev/null` &&
       test "X$echo_testing_string" = "X$echo_test_string"; then
      echo="$dir/echo"
      break
    fi
  done
  IFS="$lt_save_ifs"

  if test "X$echo" = Xecho; then
    # We didn't find a better echo, so look for alternatives.
    if test "X`(print -r '\t') 2>/dev/null`" = 'X\t' &&
       echo_testing_string=`(print -r "$echo_test_string") 2>/dev/null` &&
       test "X$echo_testing_string" = "X$echo_test_string"; then
      # This shell has a builtin print -r that does the trick.
      echo='print -r'
    elif (test -f /bin/ksh || test -f /bin/ksh$ac_exeext) &&
	 test "X$CONFIG_SHELL" != X/bin/ksh; then
      # If we have ksh, try running configure again with it.
      ORIGINAL_CONFIG_SHELL=${CONFIG_SHELL-/bin/sh}
      export ORIGINAL_CONFIG_SHELL
      CONFIG_SHELL=/bin/ksh
      export CONFIG_SHELL
      exec $CONFIG_SHELL "[$]0" --no-reexec ${1+"[$]@"}
    else
      # Try using printf.
      echo='printf %s\n'
      if test "X`($echo '\t') 2>/dev/null`" = 'X\t' &&
	 echo_testing_string=`($echo "$echo_test_string") 2>/dev/null` &&
	 test "X$echo_testing_string" = "X$echo_test_string"; then
	# Cool, printf works
	:
      elif echo_testing_string=`($ORIGINAL_CONFIG_SHELL "[$]0" --fallback-echo '\t') 2>/dev/null` &&
	   test "X$echo_testing_string" = 'X\t' &&
	   echo_testing_string=`($ORIGINAL_CONFIG_SHELL "[$]0" --fallback-echo "$echo_test_string") 2>/dev/null` &&
	   test "X$echo_testing_string" = "X$echo_test_string"; then
	CONFIG_SHELL=$ORIGINAL_CONFIG_SHELL
	export CONFIG_SHELL
	SHELL="$CONFIG_SHELL"
	export SHELL
	echo="$CONFIG_SHELL [$]0 --fallback-echo"
      elif echo_testing_string=`($CONFIG_SHELL "[$]0" --fallback-echo '\t') 2>/dev/null` &&
	   test "X$echo_testing_string" = 'X\t' &&
	   echo_testing_string=`($CONFIG_SHELL "[$]0" --fallback-echo "$echo_test_string") 2>/dev/null` &&
	   test "X$echo_testing_string" = "X$echo_test_string"; then
	echo="$CONFIG_SHELL [$]0 --fallback-echo"
      else
	# maybe with a smaller string...
	prev=:

	for cmd in 'echo test' 'sed 2q "[$]0"' 'sed 10q "[$]0"' 'sed 20q "[$]0"' 'sed 50q "[$]0"'; do
	  if (test "X$echo_test_string" = "X`eval $cmd`") 2>/dev/null
	  then
	    break
	  fi
	  prev="$cmd"
	done

	if test "$prev" != 'sed 50q "[$]0"'; then
	  echo_test_string=`eval $prev`
	  export echo_test_string
	  exec ${ORIGINAL_CONFIG_SHELL-${CONFIG_SHELL-/bin/sh}} "[$]0" ${1+"[$]@"}
	else
	  # Oops.  We lost completely, so just stick with echo.
	  echo=echo
	fi
      fi
    fi
  fi
fi
fi

# Copy echo and quote the copy suitably for passing to libtool from
# the Makefile, instead of quoting the original, which is used later.
ECHO=$echo
if test "X$ECHO" = "X$CONFIG_SHELL [$]0 --fallback-echo"; then
   ECHO="$CONFIG_SHELL \\\$\[$]0 --fallback-echo"
fi

AC_SUBST(ECHO)
])])# _LT_AC_PROG_ECHO_BACKSLASH


# _LT_AC_LOCK
# -----------
AC_DEFUN([_LT_AC_LOCK],
[AC_ARG_ENABLE([libtool-lock],
    [AC_HELP_STRING([--disable-libtool-lock],
	[avoid locking (might break parallel builds)])])
test "x$enable_libtool_lock" != xno && enable_libtool_lock=yes

# Some flags need to be propagated to the compiler or linker for good
# libtool support.
case $host in
ia64-*-hpux*)
  # Find out which ABI we are using.
  echo 'int i;' > conftest.$ac_ext
  if AC_TRY_EVAL(ac_compile); then
    case `/usr/bin/file conftest.$ac_objext` in
    *ELF-32*)
      HPUX_IA64_MODE="32"
      ;;
    *ELF-64*)
      HPUX_IA64_MODE="64"
      ;;
    esac
  fi
  rm -rf conftest*
  ;;
*-*-irix6*)
  # Find out which ABI we are using.
  echo '[#]line __oline__ "configure"' > conftest.$ac_ext
  if AC_TRY_EVAL(ac_compile); then
   if test "$lt_cv_prog_gnu_ld" = yes; then
    case `/usr/bin/file conftest.$ac_objext` in
    *32-bit*)
      LD="${LD-ld} -melf32bsmip"
      ;;
    *N32*)
      LD="${LD-ld} -melf32bmipn32"
      ;;
    *64-bit*)
      LD="${LD-ld} -melf64bmip"
      ;;
    esac
   else
    case `/usr/bin/file conftest.$ac_objext` in
    *32-bit*)
      LD="${LD-ld} -32"
      ;;
    *N32*)
      LD="${LD-ld} -n32"
      ;;
    *64-bit*)
      LD="${LD-ld} -64"
      ;;
    esac
   fi
  fi
  rm -rf conftest*
  ;;

x86_64-*linux*|ppc*-*linux*|powerpc*-*linux*|s390*-*linux*|sparc*-*linux*)
  # Find out which ABI we are using.
  echo 'int i;' > conftest.$ac_ext
  if AC_TRY_EVAL(ac_compile); then
    case "`/usr/bin/file conftest.o`" in
    *32-bit*)
      case $host in
        x86_64-*linux*)
          LD="${LD-ld} -m elf_i386"
          ;;
        ppc64-*linux*|powerpc64-*linux*)
          LD="${LD-ld} -m elf32ppclinux"
          ;;
        s390x-*linux*)
          LD="${LD-ld} -m elf_s390"
          ;;
        sparc64-*linux*)
          LD="${LD-ld} -m elf32_sparc"
          ;;
      esac
      ;;
    *64-bit*)
      case $host in
        x86_64-*linux*)
          LD="${LD-ld} -m elf_x86_64"
          ;;
        ppc*-*linux*|powerpc*-*linux*)
          LD="${LD-ld} -m elf64ppc"
          ;;
        s390*-*linux*)
          LD="${LD-ld} -m elf64_s390"
          ;;
        sparc*-*linux*)
          LD="${LD-ld} -m elf64_sparc"
          ;;
      esac
      ;;
    esac
  fi
  rm -rf conftest*
  ;;

*-*-sco3.2v5*)
  # On SCO OpenServer 5, we need -belf to get full-featured binaries.
  SAVE_CFLAGS="$CFLAGS"
  CFLAGS="$CFLAGS -belf"
  AC_CACHE_CHECK([whether the C compiler needs -belf], lt_cv_cc_needs_belf,
    [AC_LANG_PUSH(C)
     AC_TRY_LINK([],[],[lt_cv_cc_needs_belf=yes],[lt_cv_cc_needs_belf=no])
     AC_LANG_POP])
  if test x"$lt_cv_cc_needs_belf" != x"yes"; then
    # this is probably gcc 2.8.0, egcs 1.0 or newer; no need for -belf
    CFLAGS="$SAVE_CFLAGS"
  fi
  ;;
AC_PROVIDE_IFELSE([AC_LIBTOOL_WIN32_DLL],
[*-*-cygwin* | *-*-mingw* | *-*-pw32*)
  AC_CHECK_TOOL(DLLTOOL, dlltool, false)
  AC_CHECK_TOOL(AS, as, false)
  AC_CHECK_TOOL(OBJDUMP, objdump, false)
  ;;
  ])
esac

need_locks="$enable_libtool_lock"

])# _LT_AC_LOCK


# AC_LIBTOOL_COMPILER_OPTION(MESSAGE, VARIABLE-NAME, FLAGS,
#		[OUTPUT-FILE], [ACTION-SUCCESS], [ACTION-FAILURE])
# ----------------------------------------------------------------
# Check whether the given compiler option works
AC_DEFUN([AC_LIBTOOL_COMPILER_OPTION],
[AC_REQUIRE([LT_AC_PROG_SED])
AC_CACHE_CHECK([$1], [$2],
  [$2=no
  ifelse([$4], , [ac_outfile=conftest.$ac_objext], [ac_outfile=$4])
   printf "$lt_simple_compile_test_code" > conftest.$ac_ext
   lt_compiler_flag="$3"
   # Insert the option either (1) after the last *FLAGS variable, or
   # (2) before a word containing "conftest.", or (3) at the end.
   # Note that $ac_compile itself does not contain backslashes and begins
   # with a dollar sign (not a hyphen), so the echo should work correctly.
   # The option is referenced via a variable to avoid confusing sed.
   lt_compile=`echo "$ac_compile" | $SED \
   -e 's:.*FLAGS}? :&$lt_compiler_flag :; t' \
   -e 's: [[^ ]]*conftest\.: $lt_compiler_flag&:; t' \
   -e 's:$: $lt_compiler_flag:'`
   (eval echo "\"\$as_me:__oline__: $lt_compile\"" >&AS_MESSAGE_LOG_FD)
   (eval "$lt_compile" 2>conftest.err)
   ac_status=$?
   cat conftest.err >&AS_MESSAGE_LOG_FD
   echo "$as_me:__oline__: \$? = $ac_status" >&AS_MESSAGE_LOG_FD
   if (exit $ac_status) && test -s "$ac_outfile"; then
     # The compiler can only warn and ignore the option if not recognized
     # So say no if there are warnings other than the usual output.
     $echo "X$_lt_compiler_boilerplate" | $Xsed >conftest.exp
     $SED '/^$/d' conftest.err >conftest.er2
     if test ! -s conftest.err || diff conftest.exp conftest.er2 >/dev/null; then
       $2=yes
     fi
   fi
   $rm conftest*
])

if test x"[$]$2" = xyes; then
    ifelse([$5], , :, [$5])
else
    ifelse([$6], , :, [$6])
fi
])# AC_LIBTOOL_COMPILER_OPTION


# AC_LIBTOOL_LINKER_OPTION(MESSAGE, VARIABLE-NAME, FLAGS,
#                          [ACTION-SUCCESS], [ACTION-FAILURE])
# ------------------------------------------------------------
# Check whether the given compiler option works
AC_DEFUN([AC_LIBTOOL_LINKER_OPTION],
[AC_CACHE_CHECK([$1], [$2],
  [$2=no
   save_LDFLAGS="$LDFLAGS"
   LDFLAGS="$LDFLAGS $3"
   printf "$lt_simple_link_test_code" > conftest.$ac_ext
   if (eval $ac_link 2>conftest.err) && test -s conftest$ac_exeext; then
     # The compiler can only warn and ignore the option if not recognized
     # So say no if there are warnings
     if test -s conftest.err; then
       # Append any errors to the config.log.
       cat conftest.err 1>&AS_MESSAGE_LOG_FD
       $echo "X$_lt_linker_boilerplate" | $Xsed > conftest.exp
       $SED '/^$/d' conftest.err >conftest.er2
       if diff conftest.exp conftest.er2 >/dev/null; then
         $2=yes
       fi
     else
       $2=yes
     fi
   fi
   $rm conftest*
   LDFLAGS="$save_LDFLAGS"
])

if test x"[$]$2" = xyes; then
    ifelse([$4], , :, [$4])
else
    ifelse([$5], , :, [$5])
fi
])# AC_LIBTOOL_LINKER_OPTION


# AC_LIBTOOL_SYS_MAX_CMD_LEN
# --------------------------
AC_DEFUN([AC_LIBTOOL_SYS_MAX_CMD_LEN],
[# find the maximum length of command line arguments
AC_MSG_CHECKING([the maximum length of command line arguments])
AC_CACHE_VAL([lt_cv_sys_max_cmd_len], [dnl
  i=0
  teststring="ABCD"

  case $build_os in
  msdosdjgpp*)
    # On DJGPP, this test can blow up pretty badly due to problems in libc
    # (any single argument exceeding 2000 bytes causes a buffer overrun
    # during glob expansion).  Even if it were fixed, the result of this
    # check would be larger than it should be.
    lt_cv_sys_max_cmd_len=12288;    # 12K is about right
    ;;

  gnu*)
    # Under GNU Hurd, this test is not required because there is
    # no limit to the length of command line arguments.
    # Libtool will interpret -1 as no limit whatsoever
    lt_cv_sys_max_cmd_len=-1;
    ;;

  cygwin* | mingw*)
    # On Win9x/ME, this test blows up -- it succeeds, but takes
    # about 5 minutes as the teststring grows exponentially.
    # Worse, since 9x/ME are not pre-emptively multitasking,
    # you end up with a "frozen" computer, even though with patience
    # the test eventually succeeds (with a max line length of 256k).
    # Instead, let's just punt: use the minimum linelength reported by
    # all of the supported platforms: 8192 (on NT/2K/XP).
    lt_cv_sys_max_cmd_len=8192;
    ;;

  amigaos*)
    # On AmigaOS with pdksh, this test takes hours, literally.
    # So we just punt and use a minimum line length of 8192.
    lt_cv_sys_max_cmd_len=8192;
    ;;

  netbsd* | freebsd* | openbsd* | darwin* | dragonfly*)
    # This has been around since 386BSD, at least.  Likely further.
    if test -x /sbin/sysctl; then
      lt_cv_sys_max_cmd_len=`/sbin/sysctl -n kern.argmax`
    elif test -x /usr/sbin/sysctl; then
      lt_cv_sys_max_cmd_len=`/usr/sbin/sysctl -n kern.argmax`
    else
      lt_cv_sys_max_cmd_len=65536 # usable default for *BSD
    fi
    # And add a safety zone
    lt_cv_sys_max_cmd_len=`expr $lt_cv_sys_max_cmd_len \/ 4`
    lt_cv_sys_max_cmd_len=`expr $lt_cv_sys_max_cmd_len \* 3`
    ;;
  osf*)
    # Dr. Hans Ekkehard Plesser reports seeing a kernel panic running configure
    # due to this test when exec_disable_arg_limit is 1 on Tru64. It is not
    # nice to cause kernel panics so lets avoid the loop below.
    # First set a reasonable default.
    lt_cv_sys_max_cmd_len=16384
    # 
    if test -x /sbin/sysconfig; then
      case `/sbin/sysconfig -q proc exec_disable_arg_limit` in
        *1*) lt_cv_sys_max_cmd_len=-1 ;;
      esac
    fi
    ;;
  *)
    # If test is not a shell built-in, we'll probably end up computing a
    # maximum length that is only half of the actual maximum length, but
    # we can't tell.
    SHELL=${SHELL-${CONFIG_SHELL-/bin/sh}}
    while (test "X"`$SHELL [$]0 --fallback-echo "X$teststring" 2>/dev/null` \
	       = "XX$teststring") >/dev/null 2>&1 &&
	    new_result=`expr "X$teststring" : ".*" 2>&1` &&
	    lt_cv_sys_max_cmd_len=$new_result &&
	    test $i != 17 # 1/2 MB should be enough
    do
      i=`expr $i + 1`
      teststring=$teststring$teststring
    done
    teststring=
    # Add a significant safety factor because C++ compilers can tack on massive
    # amounts of additional arguments before passing them to the linker.
    # It appears as though 1/2 is a usable value.
    lt_cv_sys_max_cmd_len=`expr $lt_cv_sys_max_cmd_len \/ 2`
    ;;
  esac
])
if test -n $lt_cv_sys_max_cmd_len ; then
  AC_MSG_RESULT($lt_cv_sys_max_cmd_len)
else
  AC_MSG_RESULT(none)
fi
])# AC_LIBTOOL_SYS_MAX_CMD_LEN


# _LT_AC_CHECK_DLFCN
# --------------------
AC_DEFUN([_LT_AC_CHECK_DLFCN],
[AC_CHECK_HEADERS(dlfcn.h)dnl
])# _LT_AC_CHECK_DLFCN


# _LT_AC_TRY_DLOPEN_SELF (ACTION-IF-TRUE, ACTION-IF-TRUE-W-USCORE,
#                           ACTION-IF-FALSE, ACTION-IF-CROSS-COMPILING)
# ------------------------------------------------------------------
AC_DEFUN([_LT_AC_TRY_DLOPEN_SELF],
[AC_REQUIRE([_LT_AC_CHECK_DLFCN])dnl
if test "$cross_compiling" = yes; then :
  [$4]
else
  lt_dlunknown=0; lt_dlno_uscore=1; lt_dlneed_uscore=2
  lt_status=$lt_dlunknown
  cat > conftest.$ac_ext <<EOF
[#line __oline__ "configure"
#include "confdefs.h"

#if HAVE_DLFCN_H
#include <dlfcn.h>
#endif

#include <stdio.h>

#ifdef RTLD_GLOBAL
#  define LT_DLGLOBAL		RTLD_GLOBAL
#else
#  ifdef DL_GLOBAL
#    define LT_DLGLOBAL		DL_GLOBAL
#  else
#    define LT_DLGLOBAL		0
#  endif
#endif

/* We may have to define LT_DLLAZY_OR_NOW in the command line if we
   find out it does not work in some platform. */
#ifndef LT_DLLAZY_OR_NOW
#  ifdef RTLD_LAZY
#    define LT_DLLAZY_OR_NOW		RTLD_LAZY
#  else
#    ifdef DL_LAZY
#      define LT_DLLAZY_OR_NOW		DL_LAZY
#    else
#      ifdef RTLD_NOW
#        define LT_DLLAZY_OR_NOW	RTLD_NOW
#      else
#        ifdef DL_NOW
#          define LT_DLLAZY_OR_NOW	DL_NOW
#        else
#          define LT_DLLAZY_OR_NOW	0
#        endif
#      endif
#    endif
#  endif
#endif

#ifdef __cplusplus
extern "C" void exit (int);
#endif

void fnord() { int i=42;}
int main ()
{
  void *self = dlopen (0, LT_DLGLOBAL|LT_DLLAZY_OR_NOW);
  int status = $lt_dlunknown;

  if (self)
    {
      if (dlsym (self,"fnord"))       status = $lt_dlno_uscore;
      else if (dlsym( self,"_fnord")) status = $lt_dlneed_uscore;
      /* dlclose (self); */
    }

    exit (status);
}]
EOF
  if AC_TRY_EVAL(ac_link) && test -s conftest${ac_exeext} 2>/dev/null; then
    (./conftest; exit; ) 2>/dev/null
    lt_status=$?
    case x$lt_status in
      x$lt_dlno_uscore) $1 ;;
      x$lt_dlneed_uscore) $2 ;;
      x$lt_unknown|x*) $3 ;;
    esac
  else :
    # compilation failed
    $3
  fi
fi
rm -fr conftest*
])# _LT_AC_TRY_DLOPEN_SELF


# AC_LIBTOOL_DLOPEN_SELF
# -------------------
AC_DEFUN([AC_LIBTOOL_DLOPEN_SELF],
[AC_REQUIRE([_LT_AC_CHECK_DLFCN])dnl
if test "x$enable_dlopen" != xyes; then
  enable_dlopen=unknown
  enable_dlopen_self=unknown
  enable_dlopen_self_static=unknown
else
  lt_cv_dlopen=no
  lt_cv_dlopen_libs=

  case $host_os in
  beos*)
    lt_cv_dlopen="load_add_on"
    lt_cv_dlopen_libs=
    lt_cv_dlopen_self=yes
    ;;

  mingw* | pw32*)
    lt_cv_dlopen="LoadLibrary"
    lt_cv_dlopen_libs=
   ;;

  cygwin*)
    lt_cv_dlopen="dlopen"
    lt_cv_dlopen_libs=
   ;;

  darwin*)
  # if libdl is installed we need to link against it
    AC_CHECK_LIB([dl], [dlopen],
		[lt_cv_dlopen="dlopen" lt_cv_dlopen_libs="-ldl"],[
    lt_cv_dlopen="dyld"
    lt_cv_dlopen_libs=
    lt_cv_dlopen_self=yes
    ])
   ;;

  *)
    AC_CHECK_FUNC([shl_load],
	  [lt_cv_dlopen="shl_load"],
      [AC_CHECK_LIB([dld], [shl_load],
	    [lt_cv_dlopen="shl_load" lt_cv_dlopen_libs="-dld"],
	[AC_CHECK_FUNC([dlopen],
	      [lt_cv_dlopen="dlopen"],
	  [AC_CHECK_LIB([dl], [dlopen],
		[lt_cv_dlopen="dlopen" lt_cv_dlopen_libs="-ldl"],
	    [AC_CHECK_LIB([svld], [dlopen],
		  [lt_cv_dlopen="dlopen" lt_cv_dlopen_libs="-lsvld"],
	      [AC_CHECK_LIB([dld], [dld_link],
		    [lt_cv_dlopen="dld_link" lt_cv_dlopen_libs="-dld"])
	      ])
	    ])
	  ])
	])
      ])
    ;;
  esac

  if test "x$lt_cv_dlopen" != xno; then
    enable_dlopen=yes
  else
    enable_dlopen=no
  fi

  case $lt_cv_dlopen in
  dlopen)
    save_CPPFLAGS="$CPPFLAGS"
    test "x$ac_cv_header_dlfcn_h" = xyes && CPPFLAGS="$CPPFLAGS -DHAVE_DLFCN_H"

    save_LDFLAGS="$LDFLAGS"
    eval LDFLAGS=\"\$LDFLAGS $export_dynamic_flag_spec\"

    save_LIBS="$LIBS"
    LIBS="$lt_cv_dlopen_libs $LIBS"

    AC_CACHE_CHECK([whether a program can dlopen itself],
	  lt_cv_dlopen_self, [dnl
	  _LT_AC_TRY_DLOPEN_SELF(
	    lt_cv_dlopen_self=yes, lt_cv_dlopen_self=yes,
	    lt_cv_dlopen_self=no, lt_cv_dlopen_self=cross)
    ])

    if test "x$lt_cv_dlopen_self" = xyes; then
      LDFLAGS="$LDFLAGS $link_static_flag"
      AC_CACHE_CHECK([whether a statically linked program can dlopen itself],
    	  lt_cv_dlopen_self_static, [dnl
	  _LT_AC_TRY_DLOPEN_SELF(
	    lt_cv_dlopen_self_static=yes, lt_cv_dlopen_self_static=yes,
	    lt_cv_dlopen_self_static=no,  lt_cv_dlopen_self_static=cross)
      ])
    fi

    CPPFLAGS="$save_CPPFLAGS"
    LDFLAGS="$save_LDFLAGS"
    LIBS="$save_LIBS"
    ;;
  esac

  case $lt_cv_dlopen_self in
  yes|no) enable_dlopen_self=$lt_cv_dlopen_self ;;
  *) enable_dlopen_self=unknown ;;
  esac

  case $lt_cv_dlopen_self_static in
  yes|no) enable_dlopen_self_static=$lt_cv_dlopen_self_static ;;
  *) enable_dlopen_self_static=unknown ;;
  esac
fi
])# AC_LIBTOOL_DLOPEN_SELF


# AC_LIBTOOL_PROG_CC_C_O([TAGNAME])
# ---------------------------------
# Check to see if options -c and -o are simultaneously supported by compiler
AC_DEFUN([AC_LIBTOOL_PROG_CC_C_O],
[AC_REQUIRE([_LT_AC_SYS_COMPILER])dnl
AC_CACHE_CHECK([if $compiler supports -c -o file.$ac_objext],
  [_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)],
  [_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)=no
   $rm -r conftest 2>/dev/null
   mkdir conftest
   cd conftest
   mkdir out
   printf "$lt_simple_compile_test_code" > conftest.$ac_ext

   lt_compiler_flag="-o out/conftest2.$ac_objext"
   # Insert the option either (1) after the last *FLAGS variable, or
   # (2) before a word containing "conftest.", or (3) at the end.
   # Note that $ac_compile itself does not contain backslashes and begins
   # with a dollar sign (not a hyphen), so the echo should work correctly.
   lt_compile=`echo "$ac_compile" | $SED \
   -e 's:.*FLAGS}? :&$lt_compiler_flag :; t' \
   -e 's: [[^ ]]*conftest\.: $lt_compiler_flag&:; t' \
   -e 's:$: $lt_compiler_flag:'`
   (eval echo "\"\$as_me:__oline__: $lt_compile\"" >&AS_MESSAGE_LOG_FD)
   (eval "$lt_compile" 2>out/conftest.err)
   ac_status=$?
   cat out/conftest.err >&AS_MESSAGE_LOG_FD
   echo "$as_me:__oline__: \$? = $ac_status" >&AS_MESSAGE_LOG_FD
   if (exit $ac_status) && test -s out/conftest2.$ac_objext
   then
     # The compiler can only warn and ignore the option if not recognized
     # So say no if there are warnings
     $echo "X$_lt_compiler_boilerplate" | $Xsed > out/conftest.exp
     $SED '/^$/d' out/conftest.err >out/conftest.er2
     if test ! -s out/conftest.err || diff out/conftest.exp out/conftest.er2 >/dev/null; then
       _LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)=yes
     fi
   fi
   chmod u+w .
   $rm conftest*
   # SGI C++ compiler will create directory out/ii_files/ for
   # template instantiation
   test -d out/ii_files && $rm out/ii_files/* && rmdir out/ii_files
   $rm out/* && rmdir out
   cd ..
   rmdir conftest
   $rm conftest*
])
])# AC_LIBTOOL_PROG_CC_C_O


# AC_LIBTOOL_SYS_HARD_LINK_LOCKS([TAGNAME])
# -----------------------------------------
# Check to see if we can do hard links to lock some files if needed
AC_DEFUN([AC_LIBTOOL_SYS_HARD_LINK_LOCKS],
[AC_REQUIRE([_LT_AC_LOCK])dnl

hard_links="nottested"
if test "$_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)" = no && test "$need_locks" != no; then
  # do not overwrite the value of need_locks provided by the user
  AC_MSG_CHECKING([if we can lock with hard links])
  hard_links=yes
  $rm conftest*
  ln conftest.a conftest.b 2>/dev/null && hard_links=no
  touch conftest.a
  ln conftest.a conftest.b 2>&5 || hard_links=no
  ln conftest.a conftest.b 2>/dev/null && hard_links=no
  AC_MSG_RESULT([$hard_links])
  if test "$hard_links" = no; then
    AC_MSG_WARN([`$CC' does not support `-c -o', so `make -j' may be unsafe])
    need_locks=warn
  fi
else
  need_locks=no
fi
])# AC_LIBTOOL_SYS_HARD_LINK_LOCKS


# AC_LIBTOOL_OBJDIR
# -----------------
AC_DEFUN([AC_LIBTOOL_OBJDIR],
[AC_CACHE_CHECK([for objdir], [lt_cv_objdir],
[rm -f .libs 2>/dev/null
mkdir .libs 2>/dev/null
if test -d .libs; then
  lt_cv_objdir=.libs
else
  # MS-DOS does not allow filenames that begin with a dot.
  lt_cv_objdir=_libs
fi
rmdir .libs 2>/dev/null])
objdir=$lt_cv_objdir
])# AC_LIBTOOL_OBJDIR


# AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH([TAGNAME])
# ----------------------------------------------
# Check hardcoding attributes.
AC_DEFUN([AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH],
[AC_MSG_CHECKING([how to hardcode library paths into programs])
_LT_AC_TAGVAR(hardcode_action, $1)=
if test -n "$_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)" || \
   test -n "$_LT_AC_TAGVAR(runpath_var, $1)" || \
   test "X$_LT_AC_TAGVAR(hardcode_automatic, $1)" = "Xyes" ; then

  # We can hardcode non-existant directories.
  if test "$_LT_AC_TAGVAR(hardcode_direct, $1)" != no &&
     # If the only mechanism to avoid hardcoding is shlibpath_var, we
     # have to relink, otherwise we might link with an installed library
     # when we should be linking with a yet-to-be-installed one
     ## test "$_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)" != no &&
     test "$_LT_AC_TAGVAR(hardcode_minus_L, $1)" != no; then
    # Linking always hardcodes the temporary library directory.
    _LT_AC_TAGVAR(hardcode_action, $1)=relink
  else
    # We can link without hardcoding, and we can hardcode nonexisting dirs.
    _LT_AC_TAGVAR(hardcode_action, $1)=immediate
  fi
else
  # We cannot hardcode anything, or else we can only hardcode existing
  # directories.
  _LT_AC_TAGVAR(hardcode_action, $1)=unsupported
fi
AC_MSG_RESULT([$_LT_AC_TAGVAR(hardcode_action, $1)])

if test "$_LT_AC_TAGVAR(hardcode_action, $1)" = relink; then
  # Fast installation is not supported
  enable_fast_install=no
elif test "$shlibpath_overrides_runpath" = yes ||
     test "$enable_shared" = no; then
  # Fast installation is not necessary
  enable_fast_install=needless
fi
])# AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH


# AC_LIBTOOL_SYS_LIB_STRIP
# ------------------------
AC_DEFUN([AC_LIBTOOL_SYS_LIB_STRIP],
[striplib=
old_striplib=
AC_MSG_CHECKING([whether stripping libraries is possible])
if test -n "$STRIP" && $STRIP -V 2>&1 | grep "GNU strip" >/dev/null; then
  test -z "$old_striplib" && old_striplib="$STRIP --strip-debug"
  test -z "$striplib" && striplib="$STRIP --strip-unneeded"
  AC_MSG_RESULT([yes])
else
# FIXME - insert some real tests, host_os isn't really good enough
  case $host_os in
   darwin*)
       if test -n "$STRIP" ; then
         striplib="$STRIP -x"
         AC_MSG_RESULT([yes])
       else
  AC_MSG_RESULT([no])
fi
       ;;
   *)
  AC_MSG_RESULT([no])
    ;;
  esac
fi
])# AC_LIBTOOL_SYS_LIB_STRIP


# AC_LIBTOOL_SYS_DYNAMIC_LINKER
# -----------------------------
# PORTME Fill in your ld.so characteristics
AC_DEFUN([AC_LIBTOOL_SYS_DYNAMIC_LINKER],
[AC_MSG_CHECKING([dynamic linker characteristics])
library_names_spec=
libname_spec='lib$name'
soname_spec=
shrext_cmds=".so"
postinstall_cmds=
postuninstall_cmds=
finish_cmds=
finish_eval=
shlibpath_var=
shlibpath_overrides_runpath=unknown
version_type=none
dynamic_linker="$host_os ld.so"
sys_lib_dlsearch_path_spec="/lib /usr/lib"
if test "$GCC" = yes; then
  sys_lib_search_path_spec=`$CC -print-search-dirs | grep "^libraries:" | $SED -e "s/^libraries://" -e "s,=/,/,g"`
  if echo "$sys_lib_search_path_spec" | grep ';' >/dev/null ; then
    # if the path contains ";" then we assume it to be the separator
    # otherwise default to the standard path separator (i.e. ":") - it is
    # assumed that no part of a normal pathname contains ";" but that should
    # okay in the real world where ";" in dirpaths is itself problematic.
    sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED -e 's/;/ /g'`
  else
    sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED  -e "s/$PATH_SEPARATOR/ /g"`
  fi
else
  sys_lib_search_path_spec="/lib /usr/lib /usr/local/lib"
fi
need_lib_prefix=unknown
hardcode_into_libs=no

# when you set need_version to no, make sure it does not cause -set_version
# flags to be left without arguments
need_version=unknown

case $host_os in
aix3*)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix $libname.a'
  shlibpath_var=LIBPATH

  # AIX 3 has no versioning support, so we append a major version to the name.
  soname_spec='${libname}${release}${shared_ext}$major'
  ;;

aix4* | aix5*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  hardcode_into_libs=yes
  if test "$host_cpu" = ia64; then
    # AIX 5 supports IA64
    library_names_spec='${libname}${release}${shared_ext}$major ${libname}${release}${shared_ext}$versuffix $libname${shared_ext}'
    shlibpath_var=LD_LIBRARY_PATH
  else
    # With GCC up to 2.95.x, collect2 would create an import file
    # for dependence libraries.  The import file would start with
    # the line `#! .'.  This would cause the generated library to
    # depend on `.', always an invalid library.  This was fixed in
    # development snapshots of GCC prior to 3.0.
    case $host_os in
      aix4 | aix4.[[01]] | aix4.[[01]].*)
      if { echo '#if __GNUC__ > 2 || (__GNUC__ == 2 && __GNUC_MINOR__ >= 97)'
	   echo ' yes '
	   echo '#endif'; } | ${CC} -E - | grep yes > /dev/null; then
	:
      else
	can_build_shared=no
      fi
      ;;
    esac
    # AIX (on Power*) has no versioning support, so currently we can not hardcode correct
    # soname into executable. Probably we can add versioning support to
    # collect2, so additional links can be useful in future.
    if test "$aix_use_runtimelinking" = yes; then
      # If using run time linking (on AIX 4.2 or later) use lib<name>.so
      # instead of lib<name>.a to let people know that these are not
      # typical AIX shared libraries.
      library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
    else
      # We preserve .a as extension for shared libraries through AIX4.2
      # and later when we are not doing run time linking.
      library_names_spec='${libname}${release}.a $libname.a'
      soname_spec='${libname}${release}${shared_ext}$major'
    fi
    shlibpath_var=LIBPATH
  fi
  ;;

amigaos*)
  library_names_spec='$libname.ixlibrary $libname.a'
  # Create ${libname}_ixlibrary.a entries in /sys/libs.
  finish_eval='for lib in `ls $libdir/*.ixlibrary 2>/dev/null`; do libname=`$echo "X$lib" | $Xsed -e '\''s%^.*/\([[^/]]*\)\.ixlibrary$%\1%'\''`; test $rm /sys/libs/${libname}_ixlibrary.a; $show "cd /sys/libs && $LN_S $lib ${libname}_ixlibrary.a"; cd /sys/libs && $LN_S $lib ${libname}_ixlibrary.a || exit 1; done'
  ;;

beos*)
  library_names_spec='${libname}${shared_ext}'
  dynamic_linker="$host_os ld.so"
  shlibpath_var=LIBRARY_PATH
  ;;

bsdi[[45]]*)
  version_type=linux
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  finish_cmds='PATH="\$PATH:/sbin" ldconfig $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  sys_lib_search_path_spec="/shlib /usr/lib /usr/X11/lib /usr/contrib/lib /lib /usr/local/lib"
  sys_lib_dlsearch_path_spec="/shlib /usr/lib /usr/local/lib"
  # the default ld.so.conf also contains /usr/contrib/lib and
  # /usr/X11R6/lib (/usr/X11 is a link to /usr/X11R6), but let us allow
  # libtool to hard-code these into programs
  ;;

cygwin* | mingw* | pw32*)
  version_type=windows
  shrext_cmds=".dll"
  need_version=no
  need_lib_prefix=no

  case $GCC,$host_os in
  yes,cygwin* | yes,mingw* | yes,pw32*)
    library_names_spec='$libname.dll.a'
    # DLL is installed to $(libdir)/../bin by postinstall_cmds
    postinstall_cmds='base_file=`basename \${file}`~
      dlpath=`$SHELL 2>&1 -c '\''. $dir/'\''\${base_file}'\''i;echo \$dlname'\''`~
      dldir=$destdir/`dirname \$dlpath`~
      test -d \$dldir || mkdir -p \$dldir~
      $install_prog $dir/$dlname \$dldir/$dlname'
    postuninstall_cmds='dldll=`$SHELL 2>&1 -c '\''. $file; echo \$dlname'\''`~
      dlpath=$dir/\$dldll~
       $rm \$dlpath'
    shlibpath_overrides_runpath=yes

    case $host_os in
    cygwin*)
      # Cygwin DLLs use 'cyg' prefix rather than 'lib'
      soname_spec='`echo ${libname} | sed -e 's/^lib/cyg/'``echo ${release} | $SED -e 's/[[.]]/-/g'`${versuffix}${shared_ext}'
      sys_lib_search_path_spec="/usr/lib /lib/w32api /lib /usr/local/lib"
      ;;
    mingw*)
      # MinGW DLLs use traditional 'lib' prefix
      soname_spec='${libname}`echo ${release} | $SED -e 's/[[.]]/-/g'`${versuffix}${shared_ext}'
      sys_lib_search_path_spec=`$CC -print-search-dirs | grep "^libraries:" | $SED -e "s/^libraries://" -e "s,=/,/,g"`
      if echo "$sys_lib_search_path_spec" | [grep ';[c-zC-Z]:/' >/dev/null]; then
        # It is most probably a Windows format PATH printed by
        # mingw gcc, but we are running on Cygwin. Gcc prints its search
        # path with ; separators, and with drive letters. We can handle the
        # drive letters (cygwin fileutils understands them), so leave them,
        # especially as we might pass files found there to a mingw objdump,
        # which wouldn't understand a cygwinified path. Ahh.
        sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED -e 's/;/ /g'`
      else
        sys_lib_search_path_spec=`echo "$sys_lib_search_path_spec" | $SED  -e "s/$PATH_SEPARATOR/ /g"`
      fi
      ;;
    pw32*)
      # pw32 DLLs use 'pw' prefix rather than 'lib'
      library_names_spec='`echo ${libname} | sed -e 's/^lib/pw/'``echo ${release} | $SED -e 's/[[.]]/-/g'`${versuffix}${shared_ext}'
      ;;
    esac
    ;;

  *)
    library_names_spec='${libname}`echo ${release} | $SED -e 's/[[.]]/-/g'`${versuffix}${shared_ext} $libname.lib'
    ;;
  esac
  dynamic_linker='Win32 ld.exe'
  # FIXME: first we should search . and the directory the executable is in
  shlibpath_var=PATH
  ;;

darwin* | rhapsody*)
  dynamic_linker="$host_os dyld"
  version_type=darwin
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${versuffix}$shared_ext ${libname}${release}${major}$shared_ext ${libname}$shared_ext'
  soname_spec='${libname}${release}${major}$shared_ext'
  shlibpath_overrides_runpath=yes
  shlibpath_var=DYLD_LIBRARY_PATH
  shrext_cmds='$(test .$module = .yes && echo .so || echo .dylib)'
  # Apple's gcc prints 'gcc -print-search-dirs' doesn't operate the same.
  if test "$GCC" = yes; then
    sys_lib_search_path_spec=`$CC -print-search-dirs | tr "\n" "$PATH_SEPARATOR" | sed -e 's/libraries:/@libraries:/' | tr "@" "\n" | grep "^libraries:" | sed -e "s/^libraries://" -e "s,=/,/,g" -e "s,$PATH_SEPARATOR, ,g" -e "s,.*,& /lib /usr/lib /usr/local/lib,g"`
  else
    sys_lib_search_path_spec='/lib /usr/lib /usr/local/lib'
  fi
  sys_lib_dlsearch_path_spec='/usr/local/lib /lib /usr/lib'
  ;;

dgux*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname$shared_ext'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  ;;

freebsd1*)
  dynamic_linker=no
  ;;

kfreebsd*-gnu)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=no
  hardcode_into_libs=yes
  dynamic_linker='GNU ld.so'
  ;;

freebsd* | dragonfly*)
  # DragonFly does not have aout.  When/if they implement a new
  # versioning mechanism, adjust this.
  objformat=`test -x /usr/bin/objformat && /usr/bin/objformat || echo aout`
  version_type=freebsd-$objformat
  case $version_type in
    freebsd-elf*)
      library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext} $libname${shared_ext}'
      need_version=no
      need_lib_prefix=no
      ;;
    freebsd-*)
      library_names_spec='${libname}${release}${shared_ext}$versuffix $libname${shared_ext}$versuffix'
      need_version=yes
      ;;
  esac
  shlibpath_var=LD_LIBRARY_PATH
  case $host_os in
  freebsd2*)
    shlibpath_overrides_runpath=yes
    ;;
  freebsd3.[[01]]* | freebsdelf3.[[01]]*)
    shlibpath_overrides_runpath=yes
    hardcode_into_libs=yes
    ;;
  *) # from 3.2 on
    shlibpath_overrides_runpath=no
    hardcode_into_libs=yes
    ;;
  esac
  ;;

gnu*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}${major} ${libname}${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  hardcode_into_libs=yes
  ;;

hpux9* | hpux10* | hpux11*)
  # Give a soname corresponding to the major version so that dld.sl refuses to
  # link against other versions.
  version_type=sunos
  need_lib_prefix=no
  need_version=no
  case "$host_cpu" in
  ia64*)
    shrext_cmds='.so'
    hardcode_into_libs=yes
    dynamic_linker="$host_os dld.so"
    shlibpath_var=LD_LIBRARY_PATH
    shlibpath_overrides_runpath=yes # Unless +noenvvar is specified.
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
    soname_spec='${libname}${release}${shared_ext}$major'
    if test "X$HPUX_IA64_MODE" = X32; then
      sys_lib_search_path_spec="/usr/lib/hpux32 /usr/local/lib/hpux32 /usr/local/lib"
    else
      sys_lib_search_path_spec="/usr/lib/hpux64 /usr/local/lib/hpux64"
    fi
    sys_lib_dlsearch_path_spec=$sys_lib_search_path_spec
    ;;
   hppa*64*)
     shrext_cmds='.sl'
     hardcode_into_libs=yes
     dynamic_linker="$host_os dld.sl"
     shlibpath_var=LD_LIBRARY_PATH # How should we handle SHLIB_PATH
     shlibpath_overrides_runpath=yes # Unless +noenvvar is specified.
     library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
     soname_spec='${libname}${release}${shared_ext}$major'
     sys_lib_search_path_spec="/usr/lib/pa20_64 /usr/ccs/lib/pa20_64"
     sys_lib_dlsearch_path_spec=$sys_lib_search_path_spec
     ;;
   *)
    shrext_cmds='.sl'
    dynamic_linker="$host_os dld.sl"
    shlibpath_var=SHLIB_PATH
    shlibpath_overrides_runpath=no # +s is required to enable SHLIB_PATH
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
    soname_spec='${libname}${release}${shared_ext}$major'
    ;;
  esac
  # HP-UX runs *really* slowly unless shared libraries are mode 555.
  postinstall_cmds='chmod 555 $lib'
  ;;

irix5* | irix6* | nonstopux*)
  case $host_os in
    nonstopux*) version_type=nonstopux ;;
    *)
	if test "$lt_cv_prog_gnu_ld" = yes; then
		version_type=linux
	else
		version_type=irix
	fi ;;
  esac
  need_lib_prefix=no
  need_version=no
  soname_spec='${libname}${release}${shared_ext}$major'
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${release}${shared_ext} $libname${shared_ext}'
  case $host_os in
  irix5* | nonstopux*)
    libsuff= shlibsuff=
    ;;
  *)
    case $LD in # libtool.m4 will add one of these switches to LD
    *-32|*"-32 "|*-melf32bsmip|*"-melf32bsmip ")
      libsuff= shlibsuff= libmagic=32-bit;;
    *-n32|*"-n32 "|*-melf32bmipn32|*"-melf32bmipn32 ")
      libsuff=32 shlibsuff=N32 libmagic=N32;;
    *-64|*"-64 "|*-melf64bmip|*"-melf64bmip ")
      libsuff=64 shlibsuff=64 libmagic=64-bit;;
    *) libsuff= shlibsuff= libmagic=never-match;;
    esac
    ;;
  esac
  shlibpath_var=LD_LIBRARY${shlibsuff}_PATH
  shlibpath_overrides_runpath=no
  sys_lib_search_path_spec="/usr/lib${libsuff} /lib${libsuff} /usr/local/lib${libsuff}"
  sys_lib_dlsearch_path_spec="/usr/lib${libsuff} /lib${libsuff}"
  hardcode_into_libs=yes
  ;;

# No shared lib support for Linux oldld, aout, or coff.
linux*oldld* | linux*aout* | linux*coff*)
  dynamic_linker=no
  ;;

# This must be Linux ELF.
linux*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  finish_cmds='PATH="\$PATH:/sbin" ldconfig -n $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=no
  # This implies no fast_install, which is unacceptable.
  # Some rework will be needed to allow for fast_install
  # before this can be enabled.
  hardcode_into_libs=yes

  # Append ld.so.conf contents to the search path
  if test -f /etc/ld.so.conf; then
    lt_ld_extra=`awk '/^include / { system(sprintf("cd /etc; cat %s", \[$]2)); skip = 1; } { if (!skip) print \[$]0; skip = 0; }' < /etc/ld.so.conf | $SED -e 's/#.*//;s/[:,	]/ /g;s/=[^=]*$//;s/=[^= ]* / /g;/^$/d' | tr '\n' ' '`
    sys_lib_dlsearch_path_spec="/lib /usr/lib $lt_ld_extra"
  fi

  # We used to test for /lib/ld.so.1 and disable shared libraries on
  # powerpc, because MkLinux only supported shared libraries with the
  # GNU dynamic linker.  Since this was broken with cross compilers,
  # most powerpc-linux boxes support dynamic linking these days and
  # people can always --disable-shared, the test was removed, and we
  # assume the GNU/Linux dynamic linker is in use.
  dynamic_linker='GNU/Linux ld.so'
  ;;

knetbsd*-gnu)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=no
  hardcode_into_libs=yes
  dynamic_linker='GNU ld.so'
  ;;

netbsd*)
  version_type=sunos
  need_lib_prefix=no
  need_version=no
  if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
    finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
    dynamic_linker='NetBSD (a.out) ld.so'
  else
    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
    soname_spec='${libname}${release}${shared_ext}$major'
    dynamic_linker='NetBSD ld.elf_so'
  fi
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  hardcode_into_libs=yes
  ;;

newsos6)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  ;;

nto-qnx*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  ;;

openbsd*)
  version_type=sunos
  need_lib_prefix=no
  # Some older versions of OpenBSD (3.3 at least) *do* need versioned libs.
  case $host_os in
    openbsd3.3 | openbsd3.3.*) need_version=yes ;;
    *)                         need_version=no  ;;
  esac
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
  finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
    case $host_os in
      openbsd2.[[89]] | openbsd2.[[89]].*)
	shlibpath_overrides_runpath=no
	;;
      *)
	shlibpath_overrides_runpath=yes
	;;
      esac
  else
    shlibpath_overrides_runpath=yes
  fi
  ;;

os2*)
  libname_spec='$name'
  shrext_cmds=".dll"
  need_lib_prefix=no
  library_names_spec='$libname${shared_ext} $libname.a'
  dynamic_linker='OS/2 ld.exe'
  shlibpath_var=LIBPATH
  ;;

osf3* | osf4* | osf5*)
  version_type=osf
  need_lib_prefix=no
  need_version=no
  soname_spec='${libname}${release}${shared_ext}$major'
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  shlibpath_var=LD_LIBRARY_PATH
  sys_lib_search_path_spec="/usr/shlib /usr/ccs/lib /usr/lib/cmplrs/cc /usr/lib /usr/local/lib /var/shlib"
  sys_lib_dlsearch_path_spec="$sys_lib_search_path_spec"
  ;;

sco3.2v5*)
  version_type=osf
  soname_spec='${libname}${release}${shared_ext}$major'
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  shlibpath_var=LD_LIBRARY_PATH
  ;;

solaris*)
  version_type=linux
  need_lib_prefix=no
  need_version=no
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  hardcode_into_libs=yes
  # ldd complains unless libraries are executable
  postinstall_cmds='chmod +x $lib'
  ;;

sunos4*)
  version_type=sunos
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
  finish_cmds='PATH="\$PATH:/usr/etc" ldconfig $libdir'
  shlibpath_var=LD_LIBRARY_PATH
  shlibpath_overrides_runpath=yes
  if test "$with_gnu_ld" = yes; then
    need_lib_prefix=no
  fi
  need_version=yes
  ;;

sysv4 | sysv4.2uw2* | sysv4.3* | sysv5*)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  case $host_vendor in
    sni)
      shlibpath_overrides_runpath=no
      need_lib_prefix=no
      export_dynamic_flag_spec='${wl}-Blargedynsym'
      runpath_var=LD_RUN_PATH
      ;;
    siemens)
      need_lib_prefix=no
      ;;
    motorola)
      need_lib_prefix=no
      need_version=no
      shlibpath_overrides_runpath=no
      sys_lib_search_path_spec='/lib /usr/lib /usr/ccs/lib'
      ;;
  esac
  ;;

sysv4*MP*)
  if test -d /usr/nec ;then
    version_type=linux
    library_names_spec='$libname${shared_ext}.$versuffix $libname${shared_ext}.$major $libname${shared_ext}'
    soname_spec='$libname${shared_ext}.$major'
    shlibpath_var=LD_LIBRARY_PATH
  fi
  ;;

uts4*)
  version_type=linux
  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
  soname_spec='${libname}${release}${shared_ext}$major'
  shlibpath_var=LD_LIBRARY_PATH
  ;;

*)
  dynamic_linker=no
  ;;
esac
AC_MSG_RESULT([$dynamic_linker])
test "$dynamic_linker" = no && can_build_shared=no
])# AC_LIBTOOL_SYS_DYNAMIC_LINKER


# _LT_AC_TAGCONFIG
# ----------------
AC_DEFUN([_LT_AC_TAGCONFIG],
[AC_ARG_WITH([tags],
    [AC_HELP_STRING([--with-tags@<:@=TAGS@:>@],
        [include additional configurations @<:@automatic@:>@])],
    [tagnames="$withval"])

if test -f "$ltmain" && test -n "$tagnames"; then
  if test ! -f "${ofile}"; then
    AC_MSG_WARN([output file `$ofile' does not exist])
  fi

  if test -z "$LTCC"; then
    eval "`$SHELL ${ofile} --config | grep '^LTCC='`"
    if test -z "$LTCC"; then
      AC_MSG_WARN([output file `$ofile' does not look like a libtool script])
    else
      AC_MSG_WARN([using `LTCC=$LTCC', extracted from `$ofile'])
    fi
  fi

  # Extract list of available tagged configurations in $ofile.
  # Note that this assumes the entire list is on one line.
  available_tags=`grep "^available_tags=" "${ofile}" | $SED -e 's/available_tags=\(.*$\)/\1/' -e 's/\"//g'`

  lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
  for tagname in $tagnames; do
    IFS="$lt_save_ifs"
    # Check whether tagname contains only valid characters
    case `$echo "X$tagname" | $Xsed -e 's:[[-_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890,/]]::g'` in
    "") ;;
    *)  AC_MSG_ERROR([invalid tag name: $tagname])
	;;
    esac

    if grep "^# ### BEGIN LIBTOOL TAG CONFIG: $tagname$" < "${ofile}" > /dev/null
    then
      AC_MSG_ERROR([tag name \"$tagname\" already exists])
    fi

    # Update the list of available tags.
    if test -n "$tagname"; then
      echo appending configuration tag \"$tagname\" to $ofile

      case $tagname in
      CXX)
	if test -n "$CXX" && ( test "X$CXX" != "Xno" &&
	    ( (test "X$CXX" = "Xg++" && `g++ -v >/dev/null 2>&1` ) ||
	    (test "X$CXX" != "Xg++"))) ; then
	  AC_LIBTOOL_LANG_CXX_CONFIG
	else
	  tagname=""
	fi
	;;

      F77)
	if test -n "$F77" && test "X$F77" != "Xno"; then
	  AC_LIBTOOL_LANG_F77_CONFIG
	else
	  tagname=""
	fi
	;;

      GCJ)
	if test -n "$GCJ" && test "X$GCJ" != "Xno"; then
	  AC_LIBTOOL_LANG_GCJ_CONFIG
	else
	  tagname=""
	fi
	;;

      RC)
	AC_LIBTOOL_LANG_RC_CONFIG
	;;

      *)
	AC_MSG_ERROR([Unsupported tag name: $tagname])
	;;
      esac

      # Append the new tag name to the list of available tags.
      if test -n "$tagname" ; then
      available_tags="$available_tags $tagname"
    fi
    fi
  done
  IFS="$lt_save_ifs"

  # Now substitute the updated list of available tags.
  if eval "sed -e 's/^available_tags=.*\$/available_tags=\"$available_tags\"/' \"$ofile\" > \"${ofile}T\""; then
    mv "${ofile}T" "$ofile"
    chmod +x "$ofile"
  else
    rm -f "${ofile}T"
    AC_MSG_ERROR([unable to update list of available tagged configurations.])
  fi
fi
])# _LT_AC_TAGCONFIG


# AC_LIBTOOL_DLOPEN
# -----------------
# enable checks for dlopen support
AC_DEFUN([AC_LIBTOOL_DLOPEN],
 [AC_BEFORE([$0],[AC_LIBTOOL_SETUP])
])# AC_LIBTOOL_DLOPEN


# AC_LIBTOOL_WIN32_DLL
# --------------------
# declare package support for building win32 dll's
AC_DEFUN([AC_LIBTOOL_WIN32_DLL],
[AC_BEFORE([$0], [AC_LIBTOOL_SETUP])
])# AC_LIBTOOL_WIN32_DLL


# AC_ENABLE_SHARED([DEFAULT])
# ---------------------------
# implement the --enable-shared flag
# DEFAULT is either `yes' or `no'.  If omitted, it defaults to `yes'.
AC_DEFUN([AC_ENABLE_SHARED],
[define([AC_ENABLE_SHARED_DEFAULT], ifelse($1, no, no, yes))dnl
AC_ARG_ENABLE([shared],
    [AC_HELP_STRING([--enable-shared@<:@=PKGS@:>@],
	[build shared libraries @<:@default=]AC_ENABLE_SHARED_DEFAULT[@:>@])],
    [p=${PACKAGE-default}
    case $enableval in
    yes) enable_shared=yes ;;
    no) enable_shared=no ;;
    *)
      enable_shared=no
      # Look at the argument we got.  We use all the common list separators.
      lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
      for pkg in $enableval; do
	IFS="$lt_save_ifs"
	if test "X$pkg" = "X$p"; then
	  enable_shared=yes
	fi
      done
      IFS="$lt_save_ifs"
      ;;
    esac],
    [enable_shared=]AC_ENABLE_SHARED_DEFAULT)
])# AC_ENABLE_SHARED


# AC_DISABLE_SHARED
# -----------------
#- set the default shared flag to --disable-shared
AC_DEFUN([AC_DISABLE_SHARED],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
AC_ENABLE_SHARED(no)
])# AC_DISABLE_SHARED


# AC_ENABLE_STATIC([DEFAULT])
# ---------------------------
# implement the --enable-static flag
# DEFAULT is either `yes' or `no'.  If omitted, it defaults to `yes'.
AC_DEFUN([AC_ENABLE_STATIC],
[define([AC_ENABLE_STATIC_DEFAULT], ifelse($1, no, no, yes))dnl
AC_ARG_ENABLE([static],
    [AC_HELP_STRING([--enable-static@<:@=PKGS@:>@],
	[build static libraries @<:@default=]AC_ENABLE_STATIC_DEFAULT[@:>@])],
    [p=${PACKAGE-default}
    case $enableval in
    yes) enable_static=yes ;;
    no) enable_static=no ;;
    *)
     enable_static=no
      # Look at the argument we got.  We use all the common list separators.
      lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
      for pkg in $enableval; do
	IFS="$lt_save_ifs"
	if test "X$pkg" = "X$p"; then
	  enable_static=yes
	fi
      done
      IFS="$lt_save_ifs"
      ;;
    esac],
    [enable_static=]AC_ENABLE_STATIC_DEFAULT)
])# AC_ENABLE_STATIC


# AC_DISABLE_STATIC
# -----------------
# set the default static flag to --disable-static
AC_DEFUN([AC_DISABLE_STATIC],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
AC_ENABLE_STATIC(no)
])# AC_DISABLE_STATIC


# AC_ENABLE_FAST_INSTALL([DEFAULT])
# ---------------------------------
# implement the --enable-fast-install flag
# DEFAULT is either `yes' or `no'.  If omitted, it defaults to `yes'.
AC_DEFUN([AC_ENABLE_FAST_INSTALL],
[define([AC_ENABLE_FAST_INSTALL_DEFAULT], ifelse($1, no, no, yes))dnl
AC_ARG_ENABLE([fast-install],
    [AC_HELP_STRING([--enable-fast-install@<:@=PKGS@:>@],
    [optimize for fast installation @<:@default=]AC_ENABLE_FAST_INSTALL_DEFAULT[@:>@])],
    [p=${PACKAGE-default}
    case $enableval in
    yes) enable_fast_install=yes ;;
    no) enable_fast_install=no ;;
    *)
      enable_fast_install=no
      # Look at the argument we got.  We use all the common list separators.
      lt_save_ifs="$IFS"; IFS="${IFS}$PATH_SEPARATOR,"
      for pkg in $enableval; do
	IFS="$lt_save_ifs"
	if test "X$pkg" = "X$p"; then
	  enable_fast_install=yes
	fi
      done
      IFS="$lt_save_ifs"
      ;;
    esac],
    [enable_fast_install=]AC_ENABLE_FAST_INSTALL_DEFAULT)
])# AC_ENABLE_FAST_INSTALL


# AC_DISABLE_FAST_INSTALL
# -----------------------
# set the default to --disable-fast-install
AC_DEFUN([AC_DISABLE_FAST_INSTALL],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
AC_ENABLE_FAST_INSTALL(no)
])# AC_DISABLE_FAST_INSTALL


# AC_LIBTOOL_PICMODE([MODE])
# --------------------------
# implement the --with-pic flag
# MODE is either `yes' or `no'.  If omitted, it defaults to `both'.
AC_DEFUN([AC_LIBTOOL_PICMODE],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
pic_mode=ifelse($#,1,$1,default)
])# AC_LIBTOOL_PICMODE


# AC_PROG_EGREP
# -------------
# This is predefined starting with Autoconf 2.54, so this conditional
# definition can be removed once we require Autoconf 2.54 or later.
m4_ifndef([AC_PROG_EGREP], [AC_DEFUN([AC_PROG_EGREP],
[AC_CACHE_CHECK([for egrep], [ac_cv_prog_egrep],
   [if echo a | (grep -E '(a|b)') >/dev/null 2>&1
    then ac_cv_prog_egrep='grep -E'
    else ac_cv_prog_egrep='egrep'
    fi])
 EGREP=$ac_cv_prog_egrep
 AC_SUBST([EGREP])
])])


# AC_PATH_TOOL_PREFIX
# -------------------
# find a file program which can recognise shared library
AC_DEFUN([AC_PATH_TOOL_PREFIX],
[AC_REQUIRE([AC_PROG_EGREP])dnl
AC_MSG_CHECKING([for $1])
AC_CACHE_VAL(lt_cv_path_MAGIC_CMD,
[case $MAGIC_CMD in
[[\\/*] |  ?:[\\/]*])
  lt_cv_path_MAGIC_CMD="$MAGIC_CMD" # Let the user override the test with a path.
  ;;
*)
  lt_save_MAGIC_CMD="$MAGIC_CMD"
  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
dnl $ac_dummy forces splitting on constant user-supplied paths.
dnl POSIX.2 word splitting is done only on the output of word expansions,
dnl not every word.  This closes a longstanding sh security hole.
  ac_dummy="ifelse([$2], , $PATH, [$2])"
  for ac_dir in $ac_dummy; do
    IFS="$lt_save_ifs"
    test -z "$ac_dir" && ac_dir=.
    if test -f $ac_dir/$1; then
      lt_cv_path_MAGIC_CMD="$ac_dir/$1"
      if test -n "$file_magic_test_file"; then
	case $deplibs_check_method in
	"file_magic "*)
	  file_magic_regex="`expr \"$deplibs_check_method\" : \"file_magic \(.*\)\"`"
	  MAGIC_CMD="$lt_cv_path_MAGIC_CMD"
	  if eval $file_magic_cmd \$file_magic_test_file 2> /dev/null |
	    $EGREP "$file_magic_regex" > /dev/null; then
	    :
	  else
	    cat <<EOF 1>&2

*** Warning: the command libtool uses to detect shared libraries,
*** $file_magic_cmd, produces output that libtool cannot recognize.
*** The result is that libtool may fail to recognize shared libraries
*** as such.  This will affect the creation of libtool libraries that
*** depend on shared libraries, but programs linked with such libtool
*** libraries will work regardless of this problem.  Nevertheless, you
*** may want to report the problem to your system manager and/or to
*** bug-libtool@gnu.org

EOF
	  fi ;;
	esac
      fi
      break
    fi
  done
  IFS="$lt_save_ifs"
  MAGIC_CMD="$lt_save_MAGIC_CMD"
  ;;
esac])
MAGIC_CMD="$lt_cv_path_MAGIC_CMD"
if test -n "$MAGIC_CMD"; then
  AC_MSG_RESULT($MAGIC_CMD)
else
  AC_MSG_RESULT(no)
fi
])# AC_PATH_TOOL_PREFIX


# AC_PATH_MAGIC
# -------------
# find a file program which can recognise a shared library
AC_DEFUN([AC_PATH_MAGIC],
[AC_PATH_TOOL_PREFIX(${ac_tool_prefix}file, /usr/bin$PATH_SEPARATOR$PATH)
if test -z "$lt_cv_path_MAGIC_CMD"; then
  if test -n "$ac_tool_prefix"; then
    AC_PATH_TOOL_PREFIX(file, /usr/bin$PATH_SEPARATOR$PATH)
  else
    MAGIC_CMD=:
  fi
fi
])# AC_PATH_MAGIC


# AC_PROG_LD
# ----------
# find the pathname to the GNU or non-GNU linker
AC_DEFUN([AC_PROG_LD],
[AC_ARG_WITH([gnu-ld],
    [AC_HELP_STRING([--with-gnu-ld],
	[assume the C compiler uses GNU ld @<:@default=no@:>@])],
    [test "$withval" = no || with_gnu_ld=yes],
    [with_gnu_ld=no])
AC_REQUIRE([LT_AC_PROG_SED])dnl
AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_CANONICAL_HOST])dnl
AC_REQUIRE([AC_CANONICAL_BUILD])dnl
ac_prog=ld
if test "$GCC" = yes; then
  # Check if gcc -print-prog-name=ld gives a path.
  AC_MSG_CHECKING([for ld used by $CC])
  case $host in
  *-*-mingw*)
    # gcc leaves a trailing carriage return which upsets mingw
    ac_prog=`($CC -print-prog-name=ld) 2>&5 | tr -d '\015'` ;;
  *)
    ac_prog=`($CC -print-prog-name=ld) 2>&5` ;;
  esac
  case $ac_prog in
    # Accept absolute paths.
    [[\\/]]* | ?:[[\\/]]*)
      re_direlt='/[[^/]][[^/]]*/\.\./'
      # Canonicalize the pathname of ld
      ac_prog=`echo $ac_prog| $SED 's%\\\\%/%g'`
      while echo $ac_prog | grep "$re_direlt" > /dev/null 2>&1; do
	ac_prog=`echo $ac_prog| $SED "s%$re_direlt%/%"`
      done
      test -z "$LD" && LD="$ac_prog"
      ;;
  "")
    # If it fails, then pretend we aren't using GCC.
    ac_prog=ld
    ;;
  *)
    # If it is relative, then search for the first ld in PATH.
    with_gnu_ld=unknown
    ;;
  esac
elif test "$with_gnu_ld" = yes; then
  AC_MSG_CHECKING([for GNU ld])
else
  AC_MSG_CHECKING([for non-GNU ld])
fi
AC_CACHE_VAL(lt_cv_path_LD,
[if test -z "$LD"; then
  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
  for ac_dir in $PATH; do
    IFS="$lt_save_ifs"
    test -z "$ac_dir" && ac_dir=.
    if test -f "$ac_dir/$ac_prog" || test -f "$ac_dir/$ac_prog$ac_exeext"; then
      lt_cv_path_LD="$ac_dir/$ac_prog"
      # Check to see if the program is GNU ld.  I'd rather use --version,
      # but apparently some GNU ld's only accept -v.
      # Break only if it was the GNU/non-GNU ld that we prefer.
      case `"$lt_cv_path_LD" -v 2>&1 </dev/null` in
      *GNU* | *'with BFD'*)
	test "$with_gnu_ld" != no && break
	;;
      *)
	test "$with_gnu_ld" != yes && break
	;;
      esac
    fi
  done
  IFS="$lt_save_ifs"
else
  lt_cv_path_LD="$LD" # Let the user override the test with a path.
fi])
LD="$lt_cv_path_LD"
if test -n "$LD"; then
  AC_MSG_RESULT($LD)
else
  AC_MSG_RESULT(no)
fi
test -z "$LD" && AC_MSG_ERROR([no acceptable ld found in \$PATH])
AC_PROG_LD_GNU
])# AC_PROG_LD


# AC_PROG_LD_GNU
# --------------
AC_DEFUN([AC_PROG_LD_GNU],
[AC_REQUIRE([AC_PROG_EGREP])dnl
AC_CACHE_CHECK([if the linker ($LD) is GNU ld], lt_cv_prog_gnu_ld,
[# I'd rather use --version here, but apparently some GNU ld's only accept -v.
case `$LD -v 2>&1 </dev/null` in
*GNU* | *'with BFD'*)
  lt_cv_prog_gnu_ld=yes
  ;;
*)
  lt_cv_prog_gnu_ld=no
  ;;
esac])
with_gnu_ld=$lt_cv_prog_gnu_ld
])# AC_PROG_LD_GNU


# AC_PROG_LD_RELOAD_FLAG
# ----------------------
# find reload flag for linker
#   -- PORTME Some linkers may need a different reload flag.
AC_DEFUN([AC_PROG_LD_RELOAD_FLAG],
[AC_CACHE_CHECK([for $LD option to reload object files],
  lt_cv_ld_reload_flag,
  [lt_cv_ld_reload_flag='-r'])
reload_flag=$lt_cv_ld_reload_flag
case $reload_flag in
"" | " "*) ;;
*) reload_flag=" $reload_flag" ;;
esac
reload_cmds='$LD$reload_flag -o $output$reload_objs'
case $host_os in
  darwin*)
    if test "$GCC" = yes; then
      reload_cmds='$CC -nostdlib ${wl}-r -o $output$reload_objs'
    else
      reload_cmds='$LD$reload_flag -o $output$reload_objs'
    fi
    ;;
esac
])# AC_PROG_LD_RELOAD_FLAG


# AC_DEPLIBS_CHECK_METHOD
# -----------------------
# how to check for library dependencies
#  -- PORTME fill in with the dynamic library characteristics
AC_DEFUN([AC_DEPLIBS_CHECK_METHOD],
[AC_CACHE_CHECK([how to recognise dependent libraries],
lt_cv_deplibs_check_method,
[lt_cv_file_magic_cmd='$MAGIC_CMD'
lt_cv_file_magic_test_file=
lt_cv_deplibs_check_method='unknown'
# Need to set the preceding variable on all platforms that support
# interlibrary dependencies.
# 'none' -- dependencies not supported.
# `unknown' -- same as none, but documents that we really don't know.
# 'pass_all' -- all dependencies passed with no checks.
# 'test_compile' -- check by making test program.
# 'file_magic [[regex]]' -- check by looking for files in library path
# which responds to the $file_magic_cmd with a given extended regex.
# If you have `file' or equivalent on your system and you're not sure
# whether `pass_all' will *always* work, you probably want this one.

case $host_os in
aix4* | aix5*)
  lt_cv_deplibs_check_method=pass_all
  ;;

beos*)
  lt_cv_deplibs_check_method=pass_all
  ;;

bsdi[[45]]*)
  lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[ML]]SB (shared object|dynamic lib)'
  lt_cv_file_magic_cmd='/usr/bin/file -L'
  lt_cv_file_magic_test_file=/shlib/libc.so
  ;;

cygwin*)
  # func_win32_libid is a shell function defined in ltmain.sh
  lt_cv_deplibs_check_method='file_magic ^x86 archive import|^x86 DLL'
  lt_cv_file_magic_cmd='func_win32_libid'
  ;;

mingw* | pw32*)
  # Base MSYS/MinGW do not provide the 'file' command needed by
  # func_win32_libid shell function, so use a weaker test based on 'objdump'.
  lt_cv_deplibs_check_method='file_magic file format pei*-i386(.*architecture: i386)?'
  lt_cv_file_magic_cmd='$OBJDUMP -f'
  ;;

darwin* | rhapsody*)
  lt_cv_deplibs_check_method=pass_all
  ;;

freebsd* | kfreebsd*-gnu | dragonfly*)
  if echo __ELF__ | $CC -E - | grep __ELF__ > /dev/null; then
    case $host_cpu in
    i*86 )
      # Not sure whether the presence of OpenBSD here was a mistake.
      # Let's accept both of them until this is cleared up.
      lt_cv_deplibs_check_method='file_magic (FreeBSD|OpenBSD|DragonFly)/i[[3-9]]86 (compact )?demand paged shared library'
      lt_cv_file_magic_cmd=/usr/bin/file
      lt_cv_file_magic_test_file=`echo /usr/lib/libc.so.*`
      ;;
    esac
  else
    lt_cv_deplibs_check_method=pass_all
  fi
  ;;

gnu*)
  lt_cv_deplibs_check_method=pass_all
  ;;

hpux10.20* | hpux11*)
  lt_cv_file_magic_cmd=/usr/bin/file
  case "$host_cpu" in
  ia64*)
    lt_cv_deplibs_check_method='file_magic (s[[0-9]][[0-9]][[0-9]]|ELF-[[0-9]][[0-9]]) shared object file - IA64'
    lt_cv_file_magic_test_file=/usr/lib/hpux32/libc.so
    ;;
  hppa*64*)
    [lt_cv_deplibs_check_method='file_magic (s[0-9][0-9][0-9]|ELF-[0-9][0-9]) shared object file - PA-RISC [0-9].[0-9]']
    lt_cv_file_magic_test_file=/usr/lib/pa20_64/libc.sl
    ;;
  *)
    lt_cv_deplibs_check_method='file_magic (s[[0-9]][[0-9]][[0-9]]|PA-RISC[[0-9]].[[0-9]]) shared library'
    lt_cv_file_magic_test_file=/usr/lib/libc.sl
    ;;
  esac
  ;;

irix5* | irix6* | nonstopux*)
  case $LD in
  *-32|*"-32 ") libmagic=32-bit;;
  *-n32|*"-n32 ") libmagic=N32;;
  *-64|*"-64 ") libmagic=64-bit;;
  *) libmagic=never-match;;
  esac
  lt_cv_deplibs_check_method=pass_all
  ;;

# This must be Linux ELF.
linux*)
  lt_cv_deplibs_check_method=pass_all
  ;;

netbsd*)
  if echo __ELF__ | $CC -E - | grep __ELF__ > /dev/null; then
    lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so\.[[0-9]]+\.[[0-9]]+|_pic\.a)$'
  else
    lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so|_pic\.a)$'
  fi
  ;;

newos6*)
  lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[ML]]SB (executable|dynamic lib)'
  lt_cv_file_magic_cmd=/usr/bin/file
  lt_cv_file_magic_test_file=/usr/lib/libnls.so
  ;;

nto-qnx*)
  lt_cv_deplibs_check_method=unknown
  ;;

openbsd*)
  if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
    lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so\.[[0-9]]+\.[[0-9]]+|\.so|_pic\.a)$'
  else
    lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so\.[[0-9]]+\.[[0-9]]+|_pic\.a)$'
  fi
  ;;

osf3* | osf4* | osf5*)
  lt_cv_deplibs_check_method=pass_all
  ;;

sco3.2v5*)
  lt_cv_deplibs_check_method=pass_all
  ;;

solaris*)
  lt_cv_deplibs_check_method=pass_all
  ;;

sysv4 | sysv4.2uw2* | sysv4.3* | sysv5*)
  case $host_vendor in
  motorola)
    lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[ML]]SB (shared object|dynamic lib) M[[0-9]][[0-9]]* Version [[0-9]]'
    lt_cv_file_magic_test_file=`echo /usr/lib/libc.so*`
    ;;
  ncr)
    lt_cv_deplibs_check_method=pass_all
    ;;
  sequent)
    lt_cv_file_magic_cmd='/bin/file'
    lt_cv_deplibs_check_method='file_magic ELF [[0-9]][[0-9]]*-bit [[LM]]SB (shared object|dynamic lib )'
    ;;
  sni)
    lt_cv_file_magic_cmd='/bin/file'
    lt_cv_deplibs_check_method="file_magic ELF [[0-9]][[0-9]]*-bit [[LM]]SB dynamic lib"
    lt_cv_file_magic_test_file=/lib/libc.so
    ;;
  siemens)
    lt_cv_deplibs_check_method=pass_all
    ;;
  esac
  ;;

sysv5OpenUNIX8* | sysv5UnixWare7* | sysv5uw[[78]]* | unixware7* | sysv4*uw2*)
  lt_cv_deplibs_check_method=pass_all
  ;;
esac
])
file_magic_cmd=$lt_cv_file_magic_cmd
deplibs_check_method=$lt_cv_deplibs_check_method
test -z "$deplibs_check_method" && deplibs_check_method=unknown
])# AC_DEPLIBS_CHECK_METHOD


# AC_PROG_NM
# ----------
# find the pathname to a BSD-compatible name lister
AC_DEFUN([AC_PROG_NM],
[AC_CACHE_CHECK([for BSD-compatible nm], lt_cv_path_NM,
[if test -n "$NM"; then
  # Let the user override the test.
  lt_cv_path_NM="$NM"
else
  lt_save_ifs="$IFS"; IFS=$PATH_SEPARATOR
  for ac_dir in $PATH /usr/ccs/bin /usr/ucb /bin; do
    IFS="$lt_save_ifs"
    test -z "$ac_dir" && ac_dir=.
    tmp_nm="$ac_dir/${ac_tool_prefix}nm"
    if test -f "$tmp_nm" || test -f "$tmp_nm$ac_exeext" ; then
      # Check to see if the nm accepts a BSD-compat flag.
      # Adding the `sed 1q' prevents false positives on HP-UX, which says:
      #   nm: unknown option "B" ignored
      # Tru64's nm complains that /dev/null is an invalid object file
      case `"$tmp_nm" -B /dev/null 2>&1 | sed '1q'` in
      */dev/null* | *'Invalid file or object type'*)
	lt_cv_path_NM="$tmp_nm -B"
	break
        ;;
      *)
	case `"$tmp_nm" -p /dev/null 2>&1 | sed '1q'` in
	*/dev/null*)
	  lt_cv_path_NM="$tmp_nm -p"
	  break
	  ;;
	*)
	  lt_cv_path_NM=${lt_cv_path_NM="$tmp_nm"} # keep the first match, but
	  continue # so that we can try to find one that supports BSD flags
	  ;;
	esac
      esac
    fi
  done
  IFS="$lt_save_ifs"
  test -z "$lt_cv_path_NM" && lt_cv_path_NM=nm
fi])
NM="$lt_cv_path_NM"
])# AC_PROG_NM


# AC_CHECK_LIBM
# -------------
# check for math library
AC_DEFUN([AC_CHECK_LIBM],
[AC_REQUIRE([AC_CANONICAL_HOST])dnl
LIBM=
case $host in
*-*-beos* | *-*-cygwin* | *-*-pw32* | *-*-darwin*)
  # These system don't have libm, or don't need it
  ;;
*-ncr-sysv4.3*)
  AC_CHECK_LIB(mw, _mwvalidcheckl, LIBM="-lmw")
  AC_CHECK_LIB(m, cos, LIBM="$LIBM -lm")
  ;;
*)
  AC_CHECK_LIB(m, cos, LIBM="-lm")
  ;;
esac
])# AC_CHECK_LIBM


# AC_LIBLTDL_CONVENIENCE([DIRECTORY])
# -----------------------------------
# sets LIBLTDL to the link flags for the libltdl convenience library and
# LTDLINCL to the include flags for the libltdl header and adds
# --enable-ltdl-convenience to the configure arguments.  Note that LIBLTDL
# and LTDLINCL are not AC_SUBSTed, nor is AC_CONFIG_SUBDIRS called.  If
# DIRECTORY is not provided, it is assumed to be `libltdl'.  LIBLTDL will
# be prefixed with '${top_builddir}/' and LTDLINCL will be prefixed with
# '${top_srcdir}/' (note the single quotes!).  If your package is not
# flat and you're not using automake, define top_builddir and
# top_srcdir appropriately in the Makefiles.
AC_DEFUN([AC_LIBLTDL_CONVENIENCE],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
  case $enable_ltdl_convenience in
  no) AC_MSG_ERROR([this package needs a convenience libltdl]) ;;
  "") enable_ltdl_convenience=yes
      ac_configure_args="$ac_configure_args --enable-ltdl-convenience" ;;
  esac
  LIBLTDL='${top_builddir}/'ifelse($#,1,[$1],['libltdl'])/libltdlc.la
  LTDLINCL='-I${top_srcdir}/'ifelse($#,1,[$1],['libltdl'])
  # For backwards non-gettext consistent compatibility...
  INCLTDL="$LTDLINCL"
])# AC_LIBLTDL_CONVENIENCE


# AC_LIBLTDL_INSTALLABLE([DIRECTORY])
# -----------------------------------
# sets LIBLTDL to the link flags for the libltdl installable library and
# LTDLINCL to the include flags for the libltdl header and adds
# --enable-ltdl-install to the configure arguments.  Note that LIBLTDL
# and LTDLINCL are not AC_SUBSTed, nor is AC_CONFIG_SUBDIRS called.  If
# DIRECTORY is not provided and an installed libltdl is not found, it is
# assumed to be `libltdl'.  LIBLTDL will be prefixed with '${top_builddir}/'
# and LTDLINCL will be prefixed with '${top_srcdir}/' (note the single
# quotes!).  If your package is not flat and you're not using automake,
# define top_builddir and top_srcdir appropriately in the Makefiles.
# In the future, this macro may have to be called after AC_PROG_LIBTOOL.
AC_DEFUN([AC_LIBLTDL_INSTALLABLE],
[AC_BEFORE([$0],[AC_LIBTOOL_SETUP])dnl
  AC_CHECK_LIB(ltdl, lt_dlinit,
  [test x"$enable_ltdl_install" != xyes && enable_ltdl_install=no],
  [if test x"$enable_ltdl_install" = xno; then
     AC_MSG_WARN([libltdl not installed, but installation disabled])
   else
     enable_ltdl_install=yes
   fi
  ])
  if test x"$enable_ltdl_install" = x"yes"; then
    ac_configure_args="$ac_configure_args --enable-ltdl-install"
    LIBLTDL='${top_builddir}/'ifelse($#,1,[$1],['libltdl'])/libltdl.la
    LTDLINCL='-I${top_srcdir}/'ifelse($#,1,[$1],['libltdl'])
  else
    ac_configure_args="$ac_configure_args --enable-ltdl-install=no"
    LIBLTDL="-lltdl"
    LTDLINCL=
  fi
  # For backwards non-gettext consistent compatibility...
  INCLTDL="$LTDLINCL"
])# AC_LIBLTDL_INSTALLABLE


# AC_LIBTOOL_CXX
# --------------
# enable support for C++ libraries
AC_DEFUN([AC_LIBTOOL_CXX],
[AC_REQUIRE([_LT_AC_LANG_CXX])
])# AC_LIBTOOL_CXX


# _LT_AC_LANG_CXX
# ---------------
AC_DEFUN([_LT_AC_LANG_CXX],
[AC_REQUIRE([AC_PROG_CXX])
AC_REQUIRE([_LT_AC_PROG_CXXCPP])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}CXX])
])# _LT_AC_LANG_CXX

# _LT_AC_PROG_CXXCPP
# ---------------
AC_DEFUN([_LT_AC_PROG_CXXCPP],
[
AC_REQUIRE([AC_PROG_CXX])
if test -n "$CXX" && ( test "X$CXX" != "Xno" &&
    ( (test "X$CXX" = "Xg++" && `g++ -v >/dev/null 2>&1` ) ||
    (test "X$CXX" != "Xg++"))) ; then
  AC_PROG_CXXCPP
fi
])# _LT_AC_PROG_CXXCPP

# AC_LIBTOOL_F77
# --------------
# enable support for Fortran 77 libraries
AC_DEFUN([AC_LIBTOOL_F77],
[AC_REQUIRE([_LT_AC_LANG_F77])
])# AC_LIBTOOL_F77


# _LT_AC_LANG_F77
# ---------------
AC_DEFUN([_LT_AC_LANG_F77],
[AC_REQUIRE([AC_PROG_F77])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}F77])
])# _LT_AC_LANG_F77


# AC_LIBTOOL_GCJ
# --------------
# enable support for GCJ libraries
AC_DEFUN([AC_LIBTOOL_GCJ],
[AC_REQUIRE([_LT_AC_LANG_GCJ])
])# AC_LIBTOOL_GCJ


# _LT_AC_LANG_GCJ
# ---------------
AC_DEFUN([_LT_AC_LANG_GCJ],
[AC_PROVIDE_IFELSE([AC_PROG_GCJ],[],
  [AC_PROVIDE_IFELSE([A][M_PROG_GCJ],[],
    [AC_PROVIDE_IFELSE([LT_AC_PROG_GCJ],[],
      [ifdef([AC_PROG_GCJ],[AC_REQUIRE([AC_PROG_GCJ])],
	 [ifdef([A][M_PROG_GCJ],[AC_REQUIRE([A][M_PROG_GCJ])],
	   [AC_REQUIRE([A][C_PROG_GCJ_OR_A][M_PROG_GCJ])])])])])])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}GCJ])
])# _LT_AC_LANG_GCJ


# AC_LIBTOOL_RC
# --------------
# enable support for Windows resource files
AC_DEFUN([AC_LIBTOOL_RC],
[AC_REQUIRE([LT_AC_PROG_RC])
_LT_AC_SHELL_INIT([tagnames=${tagnames+${tagnames},}RC])
])# AC_LIBTOOL_RC


# AC_LIBTOOL_LANG_C_CONFIG
# ------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_C_CONFIG], [_LT_AC_LANG_C_CONFIG])
AC_DEFUN([_LT_AC_LANG_C_CONFIG],
[lt_save_CC="$CC"
AC_LANG_PUSH(C)

# Source file extension for C test sources.
ac_ext=c

# Object file extension for compiled C test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="int some_variable = 0;\n"

# Code to be used in simple link tests
lt_simple_link_test_code='int main(){return(0);}\n'

_LT_AC_SYS_COMPILER

# save warnings/boilerplate of simple test code
_LT_COMPILER_BOILERPLATE
_LT_LINKER_BOILERPLATE

#
# Check for any special shared library compilation flags.
#
_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)=
if test "$GCC" = no; then
  case $host_os in
  sco3.2v5*)
    _LT_AC_TAGVAR(lt_prog_cc_shlib, $1)='-belf'
    ;;
  esac
fi
if test -n "$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)"; then
  AC_MSG_WARN([`$CC' requires `$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)' to build shared libraries])
  if echo "$old_CC $old_CFLAGS " | grep "[[ 	]]$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)[[ 	]]" >/dev/null; then :
  else
    AC_MSG_WARN([add `$_LT_AC_TAGVAR(lt_prog_cc_shlib, $1)' to the CC or CFLAGS env variable and reconfigure])
    _LT_AC_TAGVAR(lt_cv_prog_cc_can_build_shared, $1)=no
  fi
fi


#
# Check to make sure the static flag actually works.
#
AC_LIBTOOL_LINKER_OPTION([if $compiler static flag $_LT_AC_TAGVAR(lt_prog_compiler_static, $1) works],
  _LT_AC_TAGVAR(lt_prog_compiler_static_works, $1),
  $_LT_AC_TAGVAR(lt_prog_compiler_static, $1),
  [],
  [_LT_AC_TAGVAR(lt_prog_compiler_static, $1)=])


AC_LIBTOOL_PROG_COMPILER_NO_RTTI($1)
AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP
AC_LIBTOOL_DLOPEN_SELF($1)

# Report which librarie types wil actually be built
AC_MSG_CHECKING([if libtool supports shared libraries])
AC_MSG_RESULT([$can_build_shared])

AC_MSG_CHECKING([whether to build shared libraries])
test "$can_build_shared" = "no" && enable_shared=no

# On AIX, shared libraries and static libraries use the same namespace, and
# are all built from PIC.
case "$host_os" in
aix3*)
  test "$enable_shared" = yes && enable_static=no
  if test -n "$RANLIB"; then
    archive_cmds="$archive_cmds~\$RANLIB \$lib"
    postinstall_cmds='$RANLIB $lib'
  fi
  ;;

aix4* | aix5*)
  if test "$host_cpu" != ia64 && test "$aix_use_runtimelinking" = no ; then
    test "$enable_shared" = yes && enable_static=no
  fi
    ;;
esac
AC_MSG_RESULT([$enable_shared])

AC_MSG_CHECKING([whether to build static libraries])
# Make sure either enable_shared or enable_static is yes.
test "$enable_shared" = yes || enable_static=yes
AC_MSG_RESULT([$enable_static])

AC_LIBTOOL_CONFIG($1)

AC_LANG_POP
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_C_CONFIG


# AC_LIBTOOL_LANG_CXX_CONFIG
# --------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_CXX_CONFIG], [_LT_AC_LANG_CXX_CONFIG(CXX)])
AC_DEFUN([_LT_AC_LANG_CXX_CONFIG],
[AC_LANG_PUSH(C++)
AC_REQUIRE([AC_PROG_CXX])
AC_REQUIRE([_LT_AC_PROG_CXXCPP])

_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
_LT_AC_TAGVAR(allow_undefined_flag, $1)=
_LT_AC_TAGVAR(always_export_symbols, $1)=no
_LT_AC_TAGVAR(archive_expsym_cmds, $1)=
_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_direct, $1)=no
_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)=
_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
_LT_AC_TAGVAR(hardcode_minus_L, $1)=no
_LT_AC_TAGVAR(hardcode_automatic, $1)=no
_LT_AC_TAGVAR(module_cmds, $1)=
_LT_AC_TAGVAR(module_expsym_cmds, $1)=
_LT_AC_TAGVAR(link_all_deplibs, $1)=unknown
_LT_AC_TAGVAR(old_archive_cmds, $1)=$old_archive_cmds
_LT_AC_TAGVAR(no_undefined_flag, $1)=
_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
_LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=no

# Dependencies to place before and after the object being linked:
_LT_AC_TAGVAR(predep_objects, $1)=
_LT_AC_TAGVAR(postdep_objects, $1)=
_LT_AC_TAGVAR(predeps, $1)=
_LT_AC_TAGVAR(postdeps, $1)=
_LT_AC_TAGVAR(compiler_lib_search_path, $1)=

# Source file extension for C++ test sources.
ac_ext=cc

# Object file extension for compiled C++ test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="int some_variable = 0;\n"

# Code to be used in simple link tests
lt_simple_link_test_code='int main(int, char *[]) { return(0); }\n'

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# save warnings/boilerplate of simple test code
_LT_COMPILER_BOILERPLATE
_LT_LINKER_BOILERPLATE

# Allow CC to be a program name with arguments.
lt_save_CC=$CC
lt_save_LD=$LD
lt_save_GCC=$GCC
GCC=$GXX
lt_save_with_gnu_ld=$with_gnu_ld
lt_save_path_LD=$lt_cv_path_LD
if test -n "${lt_cv_prog_gnu_ldcxx+set}"; then
  lt_cv_prog_gnu_ld=$lt_cv_prog_gnu_ldcxx
else
  unset lt_cv_prog_gnu_ld
fi
if test -n "${lt_cv_path_LDCXX+set}"; then
  lt_cv_path_LD=$lt_cv_path_LDCXX
else
  unset lt_cv_path_LD
fi
test -z "${LDCXX+set}" || LD=$LDCXX
CC=${CXX-"c++"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC
_LT_CC_BASENAME([$compiler])

# We don't want -fno-exception wen compiling C++ code, so set the
# no_builtin_flag separately
if test "$GXX" = yes; then
  _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=' -fno-builtin'
else
  _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=
fi

if test "$GXX" = yes; then
  # Set up default GNU C++ configuration

  AC_PROG_LD

  # Check if GNU C++ uses GNU ld as the underlying linker, since the
  # archiving commands below assume that GNU ld is being used.
  if test "$with_gnu_ld" = yes; then
    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname -o $lib'
    _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'

    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}--rpath ${wl}$libdir'
    _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'

    # If archive_cmds runs LD, not CC, wlarc should be empty
    # XXX I think wlarc can be eliminated in ltcf-cxx, but I need to
    #     investigate it a little bit more. (MM)
    wlarc='${wl}'

    # ancient GNU ld didn't support --whole-archive et. al.
    if eval "`$CC -print-prog-name=ld` --help 2>&1" | \
	grep 'no-whole-archive' > /dev/null; then
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)="$wlarc"'--whole-archive$convenience '"$wlarc"'--no-whole-archive'
    else
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
    fi
  else
    with_gnu_ld=no
    wlarc=

    # A generic and very simple default shared library creation
    # command for GNU C++ for the case where it uses the native
    # linker, instead of GNU ld.  If possible, this setting should
    # overridden to take advantage of the native linker features on
    # the platform it is being used on.
    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $lib'
  fi

  # Commands to make compiler produce verbose output that lists
  # what "hidden" libraries, object files and flags are used when
  # linking a shared library.
  output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "\-L"'

else
  GXX=no
  with_gnu_ld=no
  wlarc=
fi

# PORTME: fill in a description of your system's C++ link characteristics
AC_MSG_CHECKING([whether the $compiler linker ($LD) supports shared libraries])
_LT_AC_TAGVAR(ld_shlibs, $1)=yes
case $host_os in
  aix3*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  aix4* | aix5*)
    if test "$host_cpu" = ia64; then
      # On IA64, the linker does run time linking by default, so we don't
      # have to do anything special.
      aix_use_runtimelinking=no
      exp_sym_flag='-Bexport'
      no_entry_flag=""
    else
      aix_use_runtimelinking=no

      # Test if we are trying to use run time linking or normal
      # AIX style linking. If -brtl is somewhere in LDFLAGS, we
      # need to do runtime linking.
      case $host_os in aix4.[[23]]|aix4.[[23]].*|aix5*)
	for ld_flag in $LDFLAGS; do
	  case $ld_flag in
	  *-brtl*)
	    aix_use_runtimelinking=yes
	    break
	    ;;
	  esac
	done
      esac

      exp_sym_flag='-bexport'
      no_entry_flag='-bnoentry'
    fi

    # When large executables or shared objects are built, AIX ld can
    # have problems creating the table of contents.  If linking a library
    # or program results in "error TOC overflow" add -mminimal-toc to
    # CXXFLAGS/CFLAGS for g++/gcc.  In the cases where that is not
    # enough to fix the problem, add -Wl,-bbigtoc to LDFLAGS.

    _LT_AC_TAGVAR(archive_cmds, $1)=''
    _LT_AC_TAGVAR(hardcode_direct, $1)=yes
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=':'
    _LT_AC_TAGVAR(link_all_deplibs, $1)=yes

    if test "$GXX" = yes; then
      case $host_os in aix4.[[012]]|aix4.[[012]].*)
      # We only want to do this on AIX 4.2 and lower, the check
      # below for broken collect2 doesn't work under 4.3+
	collect2name=`${CC} -print-prog-name=collect2`
	if test -f "$collect2name" && \
	   strings "$collect2name" | grep resolve_lib_name >/dev/null
	then
	  # We have reworked collect2
	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes
	else
	  # We have old collect2
	  _LT_AC_TAGVAR(hardcode_direct, $1)=unsupported
	  # It fails to find uninstalled libraries when the uninstalled
	  # path is not listed in the libpath.  Setting hardcode_minus_L
	  # to unsupported forces relinking
	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
	fi
      esac
      shared_flag='-shared'
      if test "$aix_use_runtimelinking" = yes; then
	shared_flag="$shared_flag "'${wl}-G'
      fi
    else
      # not using gcc
      if test "$host_cpu" = ia64; then
	# VisualAge C++, Version 5.5 for AIX 5L for IA-64, Beta 3 Release
	# chokes on -Wl,-G. The following line is correct:
	shared_flag='-G'
      else
	if test "$aix_use_runtimelinking" = yes; then
	  shared_flag='${wl}-G'
	else
	  shared_flag='${wl}-bM:SRE'
	fi
      fi
    fi

    # It seems that -bexpall does not export symbols beginning with
    # underscore (_), so it is better to generate a list of symbols to export.
    _LT_AC_TAGVAR(always_export_symbols, $1)=yes
    if test "$aix_use_runtimelinking" = yes; then
      # Warning - without using the other runtime loading flags (-brtl),
      # -berok will link without error, but may produce a broken library.
      _LT_AC_TAGVAR(allow_undefined_flag, $1)='-berok'
      # Determine the default libpath from the value encoded in an empty executable.
      _LT_AC_SYS_LIBPATH_AIX
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"

      _LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags `if test "x${allow_undefined_flag}" != "x"; then echo "${wl}${allow_undefined_flag}"; else :; fi` '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols $shared_flag"
     else
      if test "$host_cpu" = ia64; then
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-R $libdir:/usr/lib:/lib'
	_LT_AC_TAGVAR(allow_undefined_flag, $1)="-z nodefs"
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}${allow_undefined_flag} '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols"
      else
	# Determine the default libpath from the value encoded in an empty executable.
	_LT_AC_SYS_LIBPATH_AIX
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"
	# Warning - without using the other run time loading flags,
	# -berok will link without error, but may produce a broken library.
	_LT_AC_TAGVAR(no_undefined_flag, $1)=' ${wl}-bernotok'
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-berok'
	# -bexpall does not export symbols beginning with underscore (_)
	_LT_AC_TAGVAR(always_export_symbols, $1)=yes
	# Exported symbols can be pulled into shared objects from archives
	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=' '
	_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes
	# This is similar to how AIX traditionally builds it's shared libraries.
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}-bE:$export_symbols ${wl}-bnoentry${allow_undefined_flag}~$AR $AR_FLAGS $output_objdir/$libname$release.a $output_objdir/$soname'
      fi
    fi
    ;;
  chorus*)
    case $cc_basename in
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;


  cygwin* | mingw* | pw32*)
    # _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1) is actually meaningless,
    # as there is no search path for DLLs.
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
    _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
    _LT_AC_TAGVAR(always_export_symbols, $1)=no
    _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=yes

    if $LD --help 2>&1 | grep 'auto-import' > /dev/null; then
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000 ${wl}--out-implib,$lib'
      # If the export-symbols file already is a .def file (1st line
      # is EXPORTS), use it as is; otherwise, prepend...
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='if test "x`$SED 1q $export_symbols`" = xEXPORTS; then
	cp $export_symbols $output_objdir/$soname.def;
      else
	echo EXPORTS > $output_objdir/$soname.def;
	cat $export_symbols >> $output_objdir/$soname.def;
      fi~
      $CC -shared -nostdlib $output_objdir/$soname.def $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000 ${wl}--out-implib,$lib'
    else
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
    fi
  ;;
      darwin* | rhapsody*)
        case "$host_os" in
        rhapsody* | darwin1.[[012]])
         _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-undefined ${wl}suppress'
         ;;
       *) # Darwin 1.3 on
         if test -z ${MACOSX_DEPLOYMENT_TARGET} ; then
           _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-flat_namespace ${wl}-undefined ${wl}suppress'
         else
           case ${MACOSX_DEPLOYMENT_TARGET} in
             10.[[012]])
               _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-flat_namespace ${wl}-undefined ${wl}suppress'
               ;;
             10.*)
               _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-undefined ${wl}dynamic_lookup'
               ;;
           esac
         fi
         ;;
        esac
      _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
      _LT_AC_TAGVAR(hardcode_direct, $1)=no
      _LT_AC_TAGVAR(hardcode_automatic, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=unsupported
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=''
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes

    if test "$GXX" = yes ; then
      lt_int_apple_cc_single_mod=no
      output_verbose_link_cmd='echo'
      if $CC -dumpspecs 2>&1 | $EGREP 'single_module' >/dev/null ; then
       lt_int_apple_cc_single_mod=yes
      fi
      if test "X$lt_int_apple_cc_single_mod" = Xyes ; then
       _LT_AC_TAGVAR(archive_cmds, $1)='$CC -dynamiclib -single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
      else
          _LT_AC_TAGVAR(archive_cmds, $1)='$CC -r -keep_private_externs -nostdlib -o ${lib}-master.o $libobjs~$CC -dynamiclib $allow_undefined_flag -o $lib ${lib}-master.o $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
        fi
        _LT_AC_TAGVAR(module_cmds, $1)='$CC $allow_undefined_flag -o $lib -bundle $libobjs $deplibs$compiler_flags'
        # Don't fix this by using the ld -exported_symbols_list flag, it doesn't exist in older darwin ld's
          if test "X$lt_int_apple_cc_single_mod" = Xyes ; then
            _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -dynamiclib -single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
          else
            _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -r -keep_private_externs -nostdlib -o ${lib}-master.o $libobjs~$CC -dynamiclib $allow_undefined_flag -o $lib ${lib}-master.o $deplibs $compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
          fi
            _LT_AC_TAGVAR(module_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC $allow_undefined_flag  -o $lib -bundle $libobjs $deplibs$compiler_flags~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
      else
      case $cc_basename in
        xlc*)
         output_verbose_link_cmd='echo'
          _LT_AC_TAGVAR(archive_cmds, $1)='$CC -qmkshrobj ${wl}-single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags ${wl}-install_name ${wl}`echo $rpath/$soname` $verstring'
          _LT_AC_TAGVAR(module_cmds, $1)='$CC $allow_undefined_flag -o $lib -bundle $libobjs $deplibs$compiler_flags'
          # Don't fix this by using the ld -exported_symbols_list flag, it doesn't exist in older darwin ld's
          _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -qmkshrobj ${wl}-single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags ${wl}-install_name ${wl}$rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
          _LT_AC_TAGVAR(module_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC $allow_undefined_flag  -o $lib -bundle $libobjs $deplibs$compiler_flags~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
          ;;
       *)
         _LT_AC_TAGVAR(ld_shlibs, $1)=no
          ;;
      esac
      fi
        ;;

  dgux*)
    case $cc_basename in
      ec++*)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      ghcx*)
	# Green Hills C++ Compiler
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  freebsd[[12]]*)
    # C++ shared libraries reported to be fairly broken before switch to ELF
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  freebsd-elf*)
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    ;;
  freebsd* | kfreebsd*-gnu | dragonfly*)
    # FreeBSD 3 and later use GNU C++ and GNU ld with standard ELF
    # conventions
    _LT_AC_TAGVAR(ld_shlibs, $1)=yes
    ;;
  gnu*)
    ;;
  hpux9*)
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
    _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
    _LT_AC_TAGVAR(hardcode_direct, $1)=yes
    _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes # Not in the search PATH,
				# but as the default
				# location of the library.

    case $cc_basename in
    CC*)
      # FIXME: insert proper C++ library support
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;
    aCC*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$CC -b ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      # Commands to make compiler produce verbose output that lists
      # what "hidden" libraries, object files and flags are used when
      # linking a shared library.
      #
      # There doesn't appear to be a way to prevent this compiler from
      # explicitly linking system object files so we need to strip them
      # from the output so that they don't get included in the library
      # dependencies.
      output_verbose_link_cmd='templist=`($CC -b $CFLAGS -v conftest.$objext 2>&1) | grep "[[-]]L"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
      ;;
    *)
      if test "$GXX" = yes; then
        _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$CC -shared -nostdlib -fPIC ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      else
        # FIXME: insert proper C++ library support
        _LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;
    esac
    ;;
  hpux10*|hpux11*)
    if test $with_gnu_ld = no; then
      case "$host_cpu" in
      hppa*64*)
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)='+b $libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
        ;;
      ia64*)
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
        ;;
      *)
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
        ;;
      esac
    fi
    case "$host_cpu" in
    hppa*64*)
      _LT_AC_TAGVAR(hardcode_direct, $1)=no
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;
    ia64*)
      _LT_AC_TAGVAR(hardcode_direct, $1)=no
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes # Not in the search PATH,
					      # but as the default
					      # location of the library.
      ;;
    *)
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes # Not in the search PATH,
					      # but as the default
					      # location of the library.
      ;;
    esac

    case $cc_basename in
      CC*)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      aCC*)
	case "$host_cpu" in
	hppa*64*|ia64*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname -o $lib $linker_flags $libobjs $deplibs'
	  ;;
	*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -b ${wl}+h ${wl}$soname ${wl}+b ${wl}$install_libdir -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags'
	  ;;
	esac
	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`($CC -b $CFLAGS -v conftest.$objext 2>&1) | grep "\-L"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
      *)
	if test "$GXX" = yes; then
	  if test $with_gnu_ld = no; then
	    case "$host_cpu" in
	    ia64*|hppa*64*)
	      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname -o $lib $linker_flags $libobjs $deplibs'
	      ;;
	    *)
	      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib -fPIC ${wl}+h ${wl}$soname ${wl}+b ${wl}$install_libdir -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags'
	      ;;
	    esac
	  fi
	else
	  # FIXME: insert proper C++ library support
	  _LT_AC_TAGVAR(ld_shlibs, $1)=no
	fi
	;;
    esac
    ;;
  irix5* | irix6*)
    case $cc_basename in
      CC*)
	# SGI C++
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -all -multigot $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'

	# Archives containing C++ object files must be created using
	# "CC -ar", where "CC" is the IRIX C++ compiler.  This is
	# necessary to make sure instantiated templates are included
	# in the archive.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -ar -WR,-u -o $oldlib $oldobjs'
	;;
      *)
	if test "$GXX" = yes; then
	  if test "$with_gnu_ld" = no; then
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'
	  else
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` -o $lib'
	  fi
	fi
	_LT_AC_TAGVAR(link_all_deplibs, $1)=yes
	;;
    esac
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
    ;;
  linux*)
    case $cc_basename in
      KCC*)
	# Kuck and Associates, Inc. (KAI) C++ Compiler

	# KCC will only create a shared library if the output file
	# ends with ".so" (or ".sl" for HP-UX), so rename the library
	# to its proper name (with version) after linking.
	_LT_AC_TAGVAR(archive_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib; mv \$templib $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib ${wl}-retain-symbols-file,$export_symbols; mv \$templib $lib'
	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC $CFLAGS -v conftest.$objext -o libconftest$shared_ext 2>&1 | grep "ld"`; rm -f libconftest$shared_ext; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}--rpath,$libdir'
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'

	# Archives containing C++ object files must be created using
	# "CC -Bstatic", where "CC" is the KAI C++ compiler.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -Bstatic -o $oldlib $oldobjs'
	;;
      icpc*)
	# Intel C++
	with_gnu_ld=yes
	# version 8.0 and above of icpc choke on multiply defined symbols
	# if we add $predep_objects and $postdep_objects, however 7.1 and
	# earlier do not add the objects themselves.
	case `$CC -V 2>&1` in
	*"Version 7."*)
  	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname -o $lib'
  	  _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
	  ;;
	*)  # Version 8.0 or newer
	  tmp_idyn=
	  case $host_cpu in
	    ia64*) tmp_idyn=' -i_dynamic';;
	  esac
  	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared'"$tmp_idyn"' $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	  _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared'"$tmp_idyn"' $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
	  ;;
	esac
	_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'
	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}--whole-archive$convenience ${wl}--no-whole-archive'
	;;
      pgCC*)
        # Portland Group C++ compiler
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname -o $lib'
  	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $pic_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname ${wl}-retain-symbols-file ${wl}$export_symbols -o $lib'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}--rpath ${wl}$libdir'
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'
	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}--whole-archive,`for conv in $convenience\"\"; do test  -n \"$conv\" && new_convenience=\"$new_convenience,$conv\"; done; $echo \"$new_convenience\"` ${wl}--no-whole-archive'
        ;;
      cxx*)
	# Compaq C++
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname  -o $lib ${wl}-retain-symbols-file $wl$export_symbols'

	runpath_var=LD_RUN_PATH
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-rpath $libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld"`; templist=`echo $templist | $SED "s/\(^.*ld.*\)\( .*ld .*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
    esac
    ;;
  lynxos*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  m88k*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  mvs*)
    case $cc_basename in
      cxx*)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  netbsd*)
    if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable  -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags'
      wlarc=
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
    fi
    # Workaround some broken pre-1.5 toolchains
    output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep conftest.$objext | $SED -e "s:-lgcc -lc -lgcc::"'
    ;;
  openbsd2*)
    # C++ shared libraries are fairly broken
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  openbsd*)
    _LT_AC_TAGVAR(hardcode_direct, $1)=yes
    _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $lib'
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
    if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $pic_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-retain-symbols-file,$export_symbols -o $lib'
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)="$wlarc"'--whole-archive$convenience '"$wlarc"'--no-whole-archive'
    fi
    output_verbose_link_cmd='echo'
    ;;
  osf3*)
    case $cc_basename in
      KCC*)
	# Kuck and Associates, Inc. (KAI) C++ Compiler

	# KCC will only create a shared library if the output file
	# ends with ".so" (or ".sl" for HP-UX), so rename the library
	# to its proper name (with version) after linking.
	_LT_AC_TAGVAR(archive_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib; mv \$templib $lib'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Archives containing C++ object files must be created using
	# "CC -Bstatic", where "CC" is the KAI C++ compiler.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -Bstatic -o $oldlib $oldobjs'

	;;
      RCC*)
	# Rational C++ 2.4.1
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      cxx*)
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $soname `test -n "$verstring" && echo ${wl}-set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld" | grep -v "ld:"`; templist=`echo $templist | $SED "s/\(^.*ld.*\)\( .*ld.*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
      *)
	if test "$GXX" = yes && test "$with_gnu_ld" = no; then
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib ${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'

	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	  # Commands to make compiler produce verbose output that lists
	  # what "hidden" libraries, object files and flags are used when
	  # linking a shared library.
	  output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "\-L"'

	else
	  # FIXME: insert proper C++ library support
	  _LT_AC_TAGVAR(ld_shlibs, $1)=no
	fi
	;;
    esac
    ;;
  osf4* | osf5*)
    case $cc_basename in
      KCC*)
	# Kuck and Associates, Inc. (KAI) C++ Compiler

	# KCC will only create a shared library if the output file
	# ends with ".so" (or ".sl" for HP-UX), so rename the library
	# to its proper name (with version) after linking.
	_LT_AC_TAGVAR(archive_cmds, $1)='tempext=`echo $shared_ext | $SED -e '\''s/\([[^()0-9A-Za-z{}]]\)/\\\\\1/g'\''`; templib=`echo $lib | $SED -e "s/\${tempext}\..*/.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags --soname $soname -o \$templib; mv \$templib $lib'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Archives containing C++ object files must be created using
	# the KAI C++ compiler.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -o $oldlib $oldobjs'
	;;
      RCC*)
	# Rational C++ 2.4.1
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      cxx*)
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' -expect_unresolved \*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -msym -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='for i in `cat $export_symbols`; do printf "%s %s\\n" -exported_symbol "\$i" >> $lib.exp; done~
	  echo "-hidden">> $lib.exp~
	  $CC -shared$allow_undefined_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -msym -soname $soname -Wl,-input -Wl,$lib.exp  `test -n "$verstring" && echo -set_version	$verstring` -update_registry ${output_objdir}/so_locations -o $lib~
	  $rm $lib.exp'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-rpath $libdir'
	_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld" | grep -v "ld:"`; templist=`echo $templist | $SED "s/\(^.*ld.*\)\( .*ld.*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
	;;
      *)
	if test "$GXX" = yes && test "$with_gnu_ld" = no; then
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	 _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib ${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-msym ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'

	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:

	  # Commands to make compiler produce verbose output that lists
	  # what "hidden" libraries, object files and flags are used when
	  # linking a shared library.
	  output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "\-L"'

	else
	  # FIXME: insert proper C++ library support
	  _LT_AC_TAGVAR(ld_shlibs, $1)=no
	fi
	;;
    esac
    ;;
  psos*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  sco*)
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    case $cc_basename in
      CC*)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  sunos4*)
    case $cc_basename in
      CC*)
	# Sun C++ 4.x
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      lcc*)
	# Lucid
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  solaris*)
    case $cc_basename in
      CC*)
	# Sun C++ 4.2, 5.x and Centerline C++
	_LT_AC_TAGVAR(no_undefined_flag, $1)=' -zdefs'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -G${allow_undefined_flag} -nolib -h$soname -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
	$CC -G${allow_undefined_flag} -nolib ${wl}-M ${wl}$lib.exp -h$soname -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~$rm $lib.exp'

	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
	_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
	case $host_os in
	  solaris2.[[0-5]] | solaris2.[[0-5]].*) ;;
	  *)
	    # The C++ compiler is used as linker so we must use $wl
	    # flag to pass the commands to the underlying system
	    # linker. We must also pass each convience library through
	    # to the system linker between allextract/defaultextract.
	    # The C++ compiler will combine linker options so we
	    # cannot just pass the convience library names through
	    # without $wl.
	    # Supported since Solaris 2.6 (maybe 2.5.1?)
	    _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}-z ${wl}allextract`for conv in $convenience\"\"; do test -n \"$conv\" && new_convenience=\"$new_convenience,$conv\"; done; $echo \"$new_convenience\"` ${wl}-z ${wl}defaultextract'
	    ;;
	esac
	_LT_AC_TAGVAR(link_all_deplibs, $1)=yes

	# Commands to make compiler produce verbose output that lists
	# what "hidden" libraries, object files and flags are used when
	# linking a shared library.
	#
	# There doesn't appear to be a way to prevent this compiler from
	# explicitly linking system object files so we need to strip them
	# from the output so that they don't get included in the library
	# dependencies.
	output_verbose_link_cmd='templist=`$CC -G $CFLAGS -v conftest.$objext 2>&1 | grep "\-[[LR]]"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'

	# Archives containing C++ object files must be created using
	# "CC -xar", where "CC" is the Sun C++ compiler.  This is
	# necessary to make sure instantiated templates are included
	# in the archive.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC -xar -o $oldlib $oldobjs'
	;;
      gcx*)
	# Green Hills C++ Compiler
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-h $wl$soname -o $lib'

	# The C++ compiler must be used to create the archive.
	_LT_AC_TAGVAR(old_archive_cmds, $1)='$CC $LDFLAGS -archive -o $oldlib $oldobjs'
	;;
      *)
	# GNU C++ compiler with Solaris linker
	if test "$GXX" = yes && test "$with_gnu_ld" = no; then
	  _LT_AC_TAGVAR(no_undefined_flag, $1)=' ${wl}-z ${wl}defs'
	  if $CC --version | grep -v '^2\.7' > /dev/null; then
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -nostdlib $LDFLAGS $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-h $wl$soname -o $lib'
	    _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
		$CC -shared -nostdlib ${wl}-M $wl$lib.exp -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~$rm $lib.exp'

	    # Commands to make compiler produce verbose output that lists
	    # what "hidden" libraries, object files and flags are used when
	    # linking a shared library.
	    output_verbose_link_cmd="$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep \"\-L\""
	  else
	    # g++ 2.7 appears to require `-G' NOT `-shared' on this
	    # platform.
	    _LT_AC_TAGVAR(archive_cmds, $1)='$CC -G -nostdlib $LDFLAGS $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-h $wl$soname -o $lib'
	    _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
		$CC -G -nostdlib ${wl}-M $wl$lib.exp -o $lib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags~$rm $lib.exp'

	    # Commands to make compiler produce verbose output that lists
	    # what "hidden" libraries, object files and flags are used when
	    # linking a shared library.
	    output_verbose_link_cmd="$CC -G $CFLAGS -v conftest.$objext 2>&1 | grep \"\-L\""
	  fi

	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-R $wl$libdir'
	fi
	;;
    esac
    ;;
  sysv5OpenUNIX8* | sysv5UnixWare7* | sysv5uw[[78]]* | unixware7*)
    _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
    ;;
  tandem*)
    case $cc_basename in
      NCC*)
	# NonStop-UX NCC 3.20
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
      *)
	# FIXME: insert proper C++ library support
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	;;
    esac
    ;;
  vxworks*)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
  *)
    # FIXME: insert proper C++ library support
    _LT_AC_TAGVAR(ld_shlibs, $1)=no
    ;;
esac
AC_MSG_RESULT([$_LT_AC_TAGVAR(ld_shlibs, $1)])
test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = no && can_build_shared=no

_LT_AC_TAGVAR(GCC, $1)="$GXX"
_LT_AC_TAGVAR(LD, $1)="$LD"

AC_LIBTOOL_POSTDEP_PREDEP($1)
AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP
AC_LIBTOOL_DLOPEN_SELF($1)

AC_LIBTOOL_CONFIG($1)

AC_LANG_POP
CC=$lt_save_CC
LDCXX=$LD
LD=$lt_save_LD
GCC=$lt_save_GCC
with_gnu_ldcxx=$with_gnu_ld
with_gnu_ld=$lt_save_with_gnu_ld
lt_cv_path_LDCXX=$lt_cv_path_LD
lt_cv_path_LD=$lt_save_path_LD
lt_cv_prog_gnu_ldcxx=$lt_cv_prog_gnu_ld
lt_cv_prog_gnu_ld=$lt_save_with_gnu_ld
])# AC_LIBTOOL_LANG_CXX_CONFIG

# AC_LIBTOOL_POSTDEP_PREDEP([TAGNAME])
# ------------------------
# Figure out "hidden" library dependencies from verbose
# compiler output when linking a shared library.
# Parse the compiler output and extract the necessary
# objects, libraries and library flags.
AC_DEFUN([AC_LIBTOOL_POSTDEP_PREDEP],[
dnl we can't use the lt_simple_compile_test_code here,
dnl because it contains code intended for an executable,
dnl not a library.  It's possible we should let each
dnl tag define a new lt_????_link_test_code variable,
dnl but it's only used here...
ifelse([$1],[],[cat > conftest.$ac_ext <<EOF
int a;
void foo (void) { a = 0; }
EOF
],[$1],[CXX],[cat > conftest.$ac_ext <<EOF
class Foo
{
public:
  Foo (void) { a = 0; }
private:
  int a;
};
EOF
],[$1],[F77],[cat > conftest.$ac_ext <<EOF
      subroutine foo
      implicit none
      integer*4 a
      a=0
      return
      end
EOF
],[$1],[GCJ],[cat > conftest.$ac_ext <<EOF
public class foo {
  private int a;
  public void bar (void) {
    a = 0;
  }
};
EOF
])
dnl Parse the compiler output and extract the necessary
dnl objects, libraries and library flags.
if AC_TRY_EVAL(ac_compile); then
  # Parse the compiler output and extract the necessary
  # objects, libraries and library flags.

  # Sentinel used to keep track of whether or not we are before
  # the conftest object file.
  pre_test_object_deps_done=no

  # The `*' in the case matches for architectures that use `case' in
  # $output_verbose_cmd can trigger glob expansion during the loop
  # eval without this substitution.
  output_verbose_link_cmd="`$echo \"X$output_verbose_link_cmd\" | $Xsed -e \"$no_glob_subst\"`"

  for p in `eval $output_verbose_link_cmd`; do
    case $p in

    -L* | -R* | -l*)
       # Some compilers place space between "-{L,R}" and the path.
       # Remove the space.
       if test $p = "-L" \
	  || test $p = "-R"; then
	 prev=$p
	 continue
       else
	 prev=
       fi

       if test "$pre_test_object_deps_done" = no; then
	 case $p in
	 -L* | -R*)
	   # Internal compiler library paths should come after those
	   # provided the user.  The postdeps already come after the
	   # user supplied libs so there is no need to process them.
	   if test -z "$_LT_AC_TAGVAR(compiler_lib_search_path, $1)"; then
	     _LT_AC_TAGVAR(compiler_lib_search_path, $1)="${prev}${p}"
	   else
	     _LT_AC_TAGVAR(compiler_lib_search_path, $1)="${_LT_AC_TAGVAR(compiler_lib_search_path, $1)} ${prev}${p}"
	   fi
	   ;;
	 # The "-l" case would never come before the object being
	 # linked, so don't bother handling this case.
	 esac
       else
	 if test -z "$_LT_AC_TAGVAR(postdeps, $1)"; then
	   _LT_AC_TAGVAR(postdeps, $1)="${prev}${p}"
	 else
	   _LT_AC_TAGVAR(postdeps, $1)="${_LT_AC_TAGVAR(postdeps, $1)} ${prev}${p}"
	 fi
       fi
       ;;

    *.$objext)
       # This assumes that the test object file only shows up
       # once in the compiler output.
       if test "$p" = "conftest.$objext"; then
	 pre_test_object_deps_done=yes
	 continue
       fi

       if test "$pre_test_object_deps_done" = no; then
	 if test -z "$_LT_AC_TAGVAR(predep_objects, $1)"; then
	   _LT_AC_TAGVAR(predep_objects, $1)="$p"
	 else
	   _LT_AC_TAGVAR(predep_objects, $1)="$_LT_AC_TAGVAR(predep_objects, $1) $p"
	 fi
       else
	 if test -z "$_LT_AC_TAGVAR(postdep_objects, $1)"; then
	   _LT_AC_TAGVAR(postdep_objects, $1)="$p"
	 else
	   _LT_AC_TAGVAR(postdep_objects, $1)="$_LT_AC_TAGVAR(postdep_objects, $1) $p"
	 fi
       fi
       ;;

    *) ;; # Ignore the rest.

    esac
  done

  # Clean up.
  rm -f a.out a.exe
else
  echo "libtool.m4: error: problem compiling $1 test program"
fi

$rm -f confest.$objext

case " $_LT_AC_TAGVAR(postdeps, $1) " in
*" -lc "*) _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no ;;
esac
])# AC_LIBTOOL_POSTDEP_PREDEP

# AC_LIBTOOL_LANG_F77_CONFIG
# ------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_F77_CONFIG], [_LT_AC_LANG_F77_CONFIG(F77)])
AC_DEFUN([_LT_AC_LANG_F77_CONFIG],
[AC_REQUIRE([AC_PROG_F77])
AC_LANG_PUSH(Fortran 77)

_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
_LT_AC_TAGVAR(allow_undefined_flag, $1)=
_LT_AC_TAGVAR(always_export_symbols, $1)=no
_LT_AC_TAGVAR(archive_expsym_cmds, $1)=
_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_direct, $1)=no
_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)=
_LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
_LT_AC_TAGVAR(hardcode_minus_L, $1)=no
_LT_AC_TAGVAR(hardcode_automatic, $1)=no
_LT_AC_TAGVAR(module_cmds, $1)=
_LT_AC_TAGVAR(module_expsym_cmds, $1)=
_LT_AC_TAGVAR(link_all_deplibs, $1)=unknown
_LT_AC_TAGVAR(old_archive_cmds, $1)=$old_archive_cmds
_LT_AC_TAGVAR(no_undefined_flag, $1)=
_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
_LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=no

# Source file extension for f77 test sources.
ac_ext=f

# Object file extension for compiled f77 test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="      subroutine t\n      return\n      end\n"

# Code to be used in simple link tests
lt_simple_link_test_code="      program t\n      end\n"

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# save warnings/boilerplate of simple test code
_LT_COMPILER_BOILERPLATE
_LT_LINKER_BOILERPLATE

# Allow CC to be a program name with arguments.
lt_save_CC="$CC"
CC=${F77-"f77"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC
_LT_CC_BASENAME([$compiler])

AC_MSG_CHECKING([if libtool supports shared libraries])
AC_MSG_RESULT([$can_build_shared])

AC_MSG_CHECKING([whether to build shared libraries])
test "$can_build_shared" = "no" && enable_shared=no

# On AIX, shared libraries and static libraries use the same namespace, and
# are all built from PIC.
case "$host_os" in
aix3*)
  test "$enable_shared" = yes && enable_static=no
  if test -n "$RANLIB"; then
    archive_cmds="$archive_cmds~\$RANLIB \$lib"
    postinstall_cmds='$RANLIB $lib'
  fi
  ;;
aix4* | aix5*)
  if test "$host_cpu" != ia64 && test "$aix_use_runtimelinking" = no ; then
    test "$enable_shared" = yes && enable_static=no
  fi
  ;;
esac
AC_MSG_RESULT([$enable_shared])

AC_MSG_CHECKING([whether to build static libraries])
# Make sure either enable_shared or enable_static is yes.
test "$enable_shared" = yes || enable_static=yes
AC_MSG_RESULT([$enable_static])

test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = no && can_build_shared=no

_LT_AC_TAGVAR(GCC, $1)="$G77"
_LT_AC_TAGVAR(LD, $1)="$LD"

AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP


AC_LIBTOOL_CONFIG($1)

AC_LANG_POP
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_F77_CONFIG


# AC_LIBTOOL_LANG_GCJ_CONFIG
# --------------------------
# Ensure that the configuration vars for the C compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_GCJ_CONFIG], [_LT_AC_LANG_GCJ_CONFIG(GCJ)])
AC_DEFUN([_LT_AC_LANG_GCJ_CONFIG],
[AC_LANG_SAVE

# Source file extension for Java test sources.
ac_ext=java

# Object file extension for compiled Java test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code="class foo {}\n"

# Code to be used in simple link tests
lt_simple_link_test_code='public class conftest { public static void main(String[[]] argv) {}; }\n'

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# save warnings/boilerplate of simple test code
_LT_COMPILER_BOILERPLATE
_LT_LINKER_BOILERPLATE

# Allow CC to be a program name with arguments.
lt_save_CC="$CC"
CC=${GCJ-"gcj"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC
_LT_CC_BASENAME([$compiler])

# GCJ did not exist at the time GCC didn't implicitly link libc in.
_LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no

_LT_AC_TAGVAR(old_archive_cmds, $1)=$old_archive_cmds

AC_LIBTOOL_PROG_COMPILER_NO_RTTI($1)
AC_LIBTOOL_PROG_COMPILER_PIC($1)
AC_LIBTOOL_PROG_CC_C_O($1)
AC_LIBTOOL_SYS_HARD_LINK_LOCKS($1)
AC_LIBTOOL_PROG_LD_SHLIBS($1)
AC_LIBTOOL_SYS_DYNAMIC_LINKER($1)
AC_LIBTOOL_PROG_LD_HARDCODE_LIBPATH($1)
AC_LIBTOOL_SYS_LIB_STRIP
AC_LIBTOOL_DLOPEN_SELF($1)

AC_LIBTOOL_CONFIG($1)

AC_LANG_RESTORE
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_GCJ_CONFIG


# AC_LIBTOOL_LANG_RC_CONFIG
# --------------------------
# Ensure that the configuration vars for the Windows resource compiler are
# suitably defined.  Those variables are subsequently used by
# AC_LIBTOOL_CONFIG to write the compiler configuration to `libtool'.
AC_DEFUN([AC_LIBTOOL_LANG_RC_CONFIG], [_LT_AC_LANG_RC_CONFIG(RC)])
AC_DEFUN([_LT_AC_LANG_RC_CONFIG],
[AC_LANG_SAVE

# Source file extension for RC test sources.
ac_ext=rc

# Object file extension for compiled RC test sources.
objext=o
_LT_AC_TAGVAR(objext, $1)=$objext

# Code to be used in simple compile tests
lt_simple_compile_test_code='sample MENU { MENUITEM "&Soup", 100, CHECKED }\n'

# Code to be used in simple link tests
lt_simple_link_test_code="$lt_simple_compile_test_code"

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
_LT_AC_SYS_COMPILER

# save warnings/boilerplate of simple test code
_LT_COMPILER_BOILERPLATE
_LT_LINKER_BOILERPLATE

# Allow CC to be a program name with arguments.
lt_save_CC="$CC"
CC=${RC-"windres"}
compiler=$CC
_LT_AC_TAGVAR(compiler, $1)=$CC
_LT_CC_BASENAME([$compiler])
_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)=yes

AC_LIBTOOL_CONFIG($1)

AC_LANG_RESTORE
CC="$lt_save_CC"
])# AC_LIBTOOL_LANG_RC_CONFIG


# AC_LIBTOOL_CONFIG([TAGNAME])
# ----------------------------
# If TAGNAME is not passed, then create an initial libtool script
# with a default configuration from the untagged config vars.  Otherwise
# add code to config.status for appending the configuration named by
# TAGNAME from the matching tagged config vars.
AC_DEFUN([AC_LIBTOOL_CONFIG],
[# The else clause should only fire when bootstrapping the
# libtool distribution, otherwise you forgot to ship ltmain.sh
# with your package, and you will get complaints that there are
# no rules to generate ltmain.sh.
if test -f "$ltmain"; then
  # See if we are running on zsh, and set the options which allow our commands through
  # without removal of \ escapes.
  if test -n "${ZSH_VERSION+set}" ; then
    setopt NO_GLOB_SUBST
  fi
  # Now quote all the things that may contain metacharacters while being
  # careful not to overquote the AC_SUBSTed values.  We take copies of the
  # variables and quote the copies for generation of the libtool script.
  for var in echo old_CC old_CFLAGS AR AR_FLAGS EGREP RANLIB LN_S LTCC NM \
    SED SHELL STRIP \
    libname_spec library_names_spec soname_spec extract_expsyms_cmds \
    old_striplib striplib file_magic_cmd finish_cmds finish_eval \
    deplibs_check_method reload_flag reload_cmds need_locks \
    lt_cv_sys_global_symbol_pipe lt_cv_sys_global_symbol_to_cdecl \
    lt_cv_sys_global_symbol_to_c_name_address \
    sys_lib_search_path_spec sys_lib_dlsearch_path_spec \
    old_postinstall_cmds old_postuninstall_cmds \
    _LT_AC_TAGVAR(compiler, $1) \
    _LT_AC_TAGVAR(CC, $1) \
    _LT_AC_TAGVAR(LD, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_static, $1) \
    _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1) \
    _LT_AC_TAGVAR(export_dynamic_flag_spec, $1) \
    _LT_AC_TAGVAR(thread_safe_flag_spec, $1) \
    _LT_AC_TAGVAR(whole_archive_flag_spec, $1) \
    _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1) \
    _LT_AC_TAGVAR(old_archive_cmds, $1) \
    _LT_AC_TAGVAR(old_archive_from_new_cmds, $1) \
    _LT_AC_TAGVAR(predep_objects, $1) \
    _LT_AC_TAGVAR(postdep_objects, $1) \
    _LT_AC_TAGVAR(predeps, $1) \
    _LT_AC_TAGVAR(postdeps, $1) \
    _LT_AC_TAGVAR(compiler_lib_search_path, $1) \
    _LT_AC_TAGVAR(archive_cmds, $1) \
    _LT_AC_TAGVAR(archive_expsym_cmds, $1) \
    _LT_AC_TAGVAR(postinstall_cmds, $1) \
    _LT_AC_TAGVAR(postuninstall_cmds, $1) \
    _LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1) \
    _LT_AC_TAGVAR(allow_undefined_flag, $1) \
    _LT_AC_TAGVAR(no_undefined_flag, $1) \
    _LT_AC_TAGVAR(export_symbols_cmds, $1) \
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1) \
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1) \
    _LT_AC_TAGVAR(hardcode_libdir_separator, $1) \
    _LT_AC_TAGVAR(hardcode_automatic, $1) \
    _LT_AC_TAGVAR(module_cmds, $1) \
    _LT_AC_TAGVAR(module_expsym_cmds, $1) \
    _LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1) \
    _LT_AC_TAGVAR(exclude_expsyms, $1) \
    _LT_AC_TAGVAR(include_expsyms, $1); do

    case $var in
    _LT_AC_TAGVAR(old_archive_cmds, $1) | \
    _LT_AC_TAGVAR(old_archive_from_new_cmds, $1) | \
    _LT_AC_TAGVAR(archive_cmds, $1) | \
    _LT_AC_TAGVAR(archive_expsym_cmds, $1) | \
    _LT_AC_TAGVAR(module_cmds, $1) | \
    _LT_AC_TAGVAR(module_expsym_cmds, $1) | \
    _LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1) | \
    _LT_AC_TAGVAR(export_symbols_cmds, $1) | \
    extract_expsyms_cmds | reload_cmds | finish_cmds | \
    postinstall_cmds | postuninstall_cmds | \
    old_postinstall_cmds | old_postuninstall_cmds | \
    sys_lib_search_path_spec | sys_lib_dlsearch_path_spec)
      # Double-quote double-evaled strings.
      eval "lt_$var=\\\"\`\$echo \"X\$$var\" | \$Xsed -e \"\$double_quote_subst\" -e \"\$sed_quote_subst\" -e \"\$delay_variable_subst\"\`\\\""
      ;;
    *)
      eval "lt_$var=\\\"\`\$echo \"X\$$var\" | \$Xsed -e \"\$sed_quote_subst\"\`\\\""
      ;;
    esac
  done

  case $lt_echo in
  *'\[$]0 --fallback-echo"')
    lt_echo=`$echo "X$lt_echo" | $Xsed -e 's/\\\\\\\[$]0 --fallback-echo"[$]/[$]0 --fallback-echo"/'`
    ;;
  esac

ifelse([$1], [],
  [cfgfile="${ofile}T"
  trap "$rm \"$cfgfile\"; exit 1" 1 2 15
  $rm -f "$cfgfile"
  AC_MSG_NOTICE([creating $ofile])],
  [cfgfile="$ofile"])

  cat <<__EOF__ >> "$cfgfile"
ifelse([$1], [],
[#! $SHELL

# `$echo "$cfgfile" | sed 's%^.*/%%'` - Provide generalized library-building support services.
# Generated automatically by $PROGRAM (GNU $PACKAGE $VERSION$TIMESTAMP)
# NOTE: Changes made to this file will be lost: look at ltmain.sh.
#
# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001
# Free Software Foundation, Inc.
#
# This file is part of GNU Libtool:
# Originally by Gordon Matzigkeit <gord@gnu.ai.mit.edu>, 1996
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# As a special exception to the GNU General Public License, if you
# distribute this file as part of a program that contains a
# configuration script generated by Autoconf, you may include it under
# the same distribution terms that you use for the rest of that program.

# A sed program that does not truncate output.
SED=$lt_SED

# Sed that helps us avoid accidentally triggering echo(1) options like -n.
Xsed="$SED -e 1s/^X//"

# The HP-UX ksh and POSIX shell print the target directory to stdout
# if CDPATH is set.
(unset CDPATH) >/dev/null 2>&1 && unset CDPATH

# The names of the tagged configurations supported by this script.
available_tags=

# ### BEGIN LIBTOOL CONFIG],
[# ### BEGIN LIBTOOL TAG CONFIG: $tagname])

# Libtool was configured on host `(hostname || uname -n) 2>/dev/null | sed 1q`:

# Shell to use when invoking shell scripts.
SHELL=$lt_SHELL

# Whether or not to build shared libraries.
build_libtool_libs=$enable_shared

# Whether or not to build static libraries.
build_old_libs=$enable_static

# Whether or not to add -lc for building shared libraries.
build_libtool_need_lc=$_LT_AC_TAGVAR(archive_cmds_need_lc, $1)

# Whether or not to disallow shared libs when runtime libs are static
allow_libtool_libs_with_static_runtimes=$_LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)

# Whether or not to optimize for fast installation.
fast_install=$enable_fast_install

# The host system.
host_alias=$host_alias
host=$host
host_os=$host_os

# The build system.
build_alias=$build_alias
build=$build
build_os=$build_os

# An echo program that does not interpret backslashes.
echo=$lt_echo

# The archiver.
AR=$lt_AR
AR_FLAGS=$lt_AR_FLAGS

# A C compiler.
LTCC=$lt_LTCC

# A language-specific compiler.
CC=$lt_[]_LT_AC_TAGVAR(compiler, $1)

# Is the compiler the GNU C compiler?
with_gcc=$_LT_AC_TAGVAR(GCC, $1)

# An ERE matcher.
EGREP=$lt_EGREP

# The linker used to build libraries.
LD=$lt_[]_LT_AC_TAGVAR(LD, $1)

# Whether we need hard or soft links.
LN_S=$lt_LN_S

# A BSD-compatible nm program.
NM=$lt_NM

# A symbol stripping program
STRIP=$lt_STRIP

# Used to examine libraries when file_magic_cmd begins "file"
MAGIC_CMD=$MAGIC_CMD

# Used on cygwin: DLL creation program.
DLLTOOL="$DLLTOOL"

# Used on cygwin: object dumper.
OBJDUMP="$OBJDUMP"

# Used on cygwin: assembler.
AS="$AS"

# The name of the directory that contains temporary libtool files.
objdir=$objdir

# How to create reloadable object files.
reload_flag=$lt_reload_flag
reload_cmds=$lt_reload_cmds

# How to pass a linker flag through the compiler.
wl=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)

# Object file suffix (normally "o").
objext="$ac_objext"

# Old archive suffix (normally "a").
libext="$libext"

# Shared library suffix (normally ".so").
shrext_cmds='$shrext_cmds'

# Executable file suffix (normally "").
exeext="$exeext"

# Additional compiler flags for building library objects.
pic_flag=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)
pic_mode=$pic_mode

# What is the maximum length of a command?
max_cmd_len=$lt_cv_sys_max_cmd_len

# Does compiler simultaneously support -c and -o options?
compiler_c_o=$lt_[]_LT_AC_TAGVAR(lt_cv_prog_compiler_c_o, $1)

# Must we lock files when doing compilation?
need_locks=$lt_need_locks

# Do we need the lib prefix for modules?
need_lib_prefix=$need_lib_prefix

# Do we need a version for libraries?
need_version=$need_version

# Whether dlopen is supported.
dlopen_support=$enable_dlopen

# Whether dlopen of programs is supported.
dlopen_self=$enable_dlopen_self

# Whether dlopen of statically linked programs is supported.
dlopen_self_static=$enable_dlopen_self_static

# Compiler flag to prevent dynamic linking.
link_static_flag=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_static, $1)

# Compiler flag to turn off builtin functions.
no_builtin_flag=$lt_[]_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)

# Compiler flag to allow reflexive dlopens.
export_dynamic_flag_spec=$lt_[]_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)

# Compiler flag to generate shared objects directly from archives.
whole_archive_flag_spec=$lt_[]_LT_AC_TAGVAR(whole_archive_flag_spec, $1)

# Compiler flag to generate thread-safe objects.
thread_safe_flag_spec=$lt_[]_LT_AC_TAGVAR(thread_safe_flag_spec, $1)

# Library versioning type.
version_type=$version_type

# Format of library name prefix.
libname_spec=$lt_libname_spec

# List of archive names.  First name is the real one, the rest are links.
# The last name is the one that the linker finds with -lNAME.
library_names_spec=$lt_library_names_spec

# The coded name of the library, if different from the real name.
soname_spec=$lt_soname_spec

# Commands used to build and install an old-style archive.
RANLIB=$lt_RANLIB
old_archive_cmds=$lt_[]_LT_AC_TAGVAR(old_archive_cmds, $1)
old_postinstall_cmds=$lt_old_postinstall_cmds
old_postuninstall_cmds=$lt_old_postuninstall_cmds

# Create an old-style archive from a shared archive.
old_archive_from_new_cmds=$lt_[]_LT_AC_TAGVAR(old_archive_from_new_cmds, $1)

# Create a temporary old-style archive to link instead of a shared archive.
old_archive_from_expsyms_cmds=$lt_[]_LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1)

# Commands used to build and install a shared archive.
archive_cmds=$lt_[]_LT_AC_TAGVAR(archive_cmds, $1)
archive_expsym_cmds=$lt_[]_LT_AC_TAGVAR(archive_expsym_cmds, $1)
postinstall_cmds=$lt_postinstall_cmds
postuninstall_cmds=$lt_postuninstall_cmds

# Commands used to build a loadable module (assumed same as above if empty)
module_cmds=$lt_[]_LT_AC_TAGVAR(module_cmds, $1)
module_expsym_cmds=$lt_[]_LT_AC_TAGVAR(module_expsym_cmds, $1)

# Commands to strip libraries.
old_striplib=$lt_old_striplib
striplib=$lt_striplib

# Dependencies to place before the objects being linked to create a
# shared library.
predep_objects=$lt_[]_LT_AC_TAGVAR(predep_objects, $1)

# Dependencies to place after the objects being linked to create a
# shared library.
postdep_objects=$lt_[]_LT_AC_TAGVAR(postdep_objects, $1)

# Dependencies to place before the objects being linked to create a
# shared library.
predeps=$lt_[]_LT_AC_TAGVAR(predeps, $1)

# Dependencies to place after the objects being linked to create a
# shared library.
postdeps=$lt_[]_LT_AC_TAGVAR(postdeps, $1)

# The library search path used internally by the compiler when linking
# a shared library.
compiler_lib_search_path=$lt_[]_LT_AC_TAGVAR(compiler_lib_search_path, $1)

# Method to check whether dependent libraries are shared objects.
deplibs_check_method=$lt_deplibs_check_method

# Command to use when deplibs_check_method == file_magic.
file_magic_cmd=$lt_file_magic_cmd

# Flag that allows shared libraries with undefined symbols to be built.
allow_undefined_flag=$lt_[]_LT_AC_TAGVAR(allow_undefined_flag, $1)

# Flag that forces no undefined symbols.
no_undefined_flag=$lt_[]_LT_AC_TAGVAR(no_undefined_flag, $1)

# Commands used to finish a libtool library installation in a directory.
finish_cmds=$lt_finish_cmds

# Same as above, but a single script fragment to be evaled but not shown.
finish_eval=$lt_finish_eval

# Take the output of nm and produce a listing of raw symbols and C names.
global_symbol_pipe=$lt_lt_cv_sys_global_symbol_pipe

# Transform the output of nm in a proper C declaration
global_symbol_to_cdecl=$lt_lt_cv_sys_global_symbol_to_cdecl

# Transform the output of nm in a C name address pair
global_symbol_to_c_name_address=$lt_lt_cv_sys_global_symbol_to_c_name_address

# This is the shared library runtime path variable.
runpath_var=$runpath_var

# This is the shared library path variable.
shlibpath_var=$shlibpath_var

# Is shlibpath searched before the hard-coded library search path?
shlibpath_overrides_runpath=$shlibpath_overrides_runpath

# How to hardcode a shared library path into an executable.
hardcode_action=$_LT_AC_TAGVAR(hardcode_action, $1)

# Whether we should hardcode library paths into libraries.
hardcode_into_libs=$hardcode_into_libs

# Flag to hardcode \$libdir into a binary during linking.
# This must work even if \$libdir does not exist.
hardcode_libdir_flag_spec=$lt_[]_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)

# If ld is used when linking, flag to hardcode \$libdir into
# a binary during linking. This must work even if \$libdir does
# not exist.
hardcode_libdir_flag_spec_ld=$lt_[]_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)

# Whether we need a single -rpath flag with a separated argument.
hardcode_libdir_separator=$lt_[]_LT_AC_TAGVAR(hardcode_libdir_separator, $1)

# Set to yes if using DIR/libNAME${shared_ext} during linking hardcodes DIR into the
# resulting binary.
hardcode_direct=$_LT_AC_TAGVAR(hardcode_direct, $1)

# Set to yes if using the -LDIR flag during linking hardcodes DIR into the
# resulting binary.
hardcode_minus_L=$_LT_AC_TAGVAR(hardcode_minus_L, $1)

# Set to yes if using SHLIBPATH_VAR=DIR during linking hardcodes DIR into
# the resulting binary.
hardcode_shlibpath_var=$_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)

# Set to yes if building a shared library automatically hardcodes DIR into the library
# and all subsequent libraries and executables linked against it.
hardcode_automatic=$_LT_AC_TAGVAR(hardcode_automatic, $1)

# Variables whose values should be saved in libtool wrapper scripts and
# restored at relink time.
variables_saved_for_relink="$variables_saved_for_relink"

# Whether libtool must link a program against all its dependency libraries.
link_all_deplibs=$_LT_AC_TAGVAR(link_all_deplibs, $1)

# Compile-time system search path for libraries
sys_lib_search_path_spec=$lt_sys_lib_search_path_spec

# Run-time system search path for libraries
sys_lib_dlsearch_path_spec=$lt_sys_lib_dlsearch_path_spec

# Fix the shell variable \$srcfile for the compiler.
fix_srcfile_path="$_LT_AC_TAGVAR(fix_srcfile_path, $1)"

# Set to yes if exported symbols are required.
always_export_symbols=$_LT_AC_TAGVAR(always_export_symbols, $1)

# The commands to list exported symbols.
export_symbols_cmds=$lt_[]_LT_AC_TAGVAR(export_symbols_cmds, $1)

# The commands to extract the exported symbol list from a shared archive.
extract_expsyms_cmds=$lt_extract_expsyms_cmds

# Symbols that should not be listed in the preloaded symbols.
exclude_expsyms=$lt_[]_LT_AC_TAGVAR(exclude_expsyms, $1)

# Symbols that must always be exported.
include_expsyms=$lt_[]_LT_AC_TAGVAR(include_expsyms, $1)

ifelse([$1],[],
[# ### END LIBTOOL CONFIG],
[# ### END LIBTOOL TAG CONFIG: $tagname])

__EOF__

ifelse([$1],[], [
  case $host_os in
  aix3*)
    cat <<\EOF >> "$cfgfile"

# AIX sometimes has problems with the GCC collect2 program.  For some
# reason, if we set the COLLECT_NAMES environment variable, the problems
# vanish in a puff of smoke.
if test "X${COLLECT_NAMES+set}" != Xset; then
  COLLECT_NAMES=
  export COLLECT_NAMES
fi
EOF
    ;;
  esac

  # We use sed instead of cat because bash on DJGPP gets confused if
  # if finds mixed CR/LF and LF-only lines.  Since sed operates in
  # text mode, it properly converts lines to CR/LF.  This bash problem
  # is reportedly fixed, but why not run on old versions too?
  sed '$q' "$ltmain" >> "$cfgfile" || (rm -f "$cfgfile"; exit 1)

  mv -f "$cfgfile" "$ofile" || \
    (rm -f "$ofile" && cp "$cfgfile" "$ofile" && rm -f "$cfgfile")
  chmod +x "$ofile"
])
else
  # If there is no Makefile yet, we rely on a make rule to execute
  # `config.status --recheck' to rerun these tests and create the
  # libtool script then.
  ltmain_in=`echo $ltmain | sed -e 's/\.sh$/.in/'`
  if test -f "$ltmain_in"; then
    test -f Makefile && make "$ltmain"
  fi
fi
])# AC_LIBTOOL_CONFIG


# AC_LIBTOOL_PROG_COMPILER_NO_RTTI([TAGNAME])
# -------------------------------------------
AC_DEFUN([AC_LIBTOOL_PROG_COMPILER_NO_RTTI],
[AC_REQUIRE([_LT_AC_SYS_COMPILER])dnl

_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=

if test "$GCC" = yes; then
  _LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)=' -fno-builtin'

  AC_LIBTOOL_COMPILER_OPTION([if $compiler supports -fno-rtti -fno-exceptions],
    lt_cv_prog_compiler_rtti_exceptions,
    [-fno-rtti -fno-exceptions], [],
    [_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)="$_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1) -fno-rtti -fno-exceptions"])
fi
])# AC_LIBTOOL_PROG_COMPILER_NO_RTTI


# AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE
# ---------------------------------
AC_DEFUN([AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE],
[AC_REQUIRE([AC_CANONICAL_HOST])
AC_REQUIRE([AC_PROG_NM])
AC_REQUIRE([AC_OBJEXT])
# Check for command to grab the raw symbol name followed by C symbol from nm.
AC_MSG_CHECKING([command to parse $NM output from $compiler object])
AC_CACHE_VAL([lt_cv_sys_global_symbol_pipe],
[
# These are sane defaults that work on at least a few old systems.
# [They come from Ultrix.  What could be older than Ultrix?!! ;)]

# Character class describing NM global symbol codes.
symcode='[[BCDEGRST]]'

# Regexp to match symbols that can be accessed directly from C.
sympat='\([[_A-Za-z]][[_A-Za-z0-9]]*\)'

# Transform an extracted symbol line into a proper C declaration
lt_cv_sys_global_symbol_to_cdecl="sed -n -e 's/^. .* \(.*\)$/extern int \1;/p'"

# Transform an extracted symbol line into symbol name and symbol address
lt_cv_sys_global_symbol_to_c_name_address="sed -n -e 's/^: \([[^ ]]*\) $/  {\\\"\1\\\", (lt_ptr) 0},/p' -e 's/^$symcode \([[^ ]]*\) \([[^ ]]*\)$/  {\"\2\", (lt_ptr) \&\2},/p'"

# Define system-specific variables.
case $host_os in
aix*)
  symcode='[[BCDT]]'
  ;;
cygwin* | mingw* | pw32*)
  symcode='[[ABCDGISTW]]'
  ;;
hpux*) # Its linker distinguishes data from code symbols
  if test "$host_cpu" = ia64; then
    symcode='[[ABCDEGRST]]'
  fi
  lt_cv_sys_global_symbol_to_cdecl="sed -n -e 's/^T .* \(.*\)$/extern int \1();/p' -e 's/^$symcode* .* \(.*\)$/extern char \1;/p'"
  lt_cv_sys_global_symbol_to_c_name_address="sed -n -e 's/^: \([[^ ]]*\) $/  {\\\"\1\\\", (lt_ptr) 0},/p' -e 's/^$symcode* \([[^ ]]*\) \([[^ ]]*\)$/  {\"\2\", (lt_ptr) \&\2},/p'"
  ;;
linux*)
  if test "$host_cpu" = ia64; then
    symcode='[[ABCDGIRSTW]]'
    lt_cv_sys_global_symbol_to_cdecl="sed -n -e 's/^T .* \(.*\)$/extern int \1();/p' -e 's/^$symcode* .* \(.*\)$/extern char \1;/p'"
    lt_cv_sys_global_symbol_to_c_name_address="sed -n -e 's/^: \([[^ ]]*\) $/  {\\\"\1\\\", (lt_ptr) 0},/p' -e 's/^$symcode* \([[^ ]]*\) \([[^ ]]*\)$/  {\"\2\", (lt_ptr) \&\2},/p'"
  fi
  ;;
irix* | nonstopux*)
  symcode='[[BCDEGRST]]'
  ;;
osf*)
  symcode='[[BCDEGQRST]]'
  ;;
solaris* | sysv5*)
  symcode='[[BDRT]]'
  ;;
sysv4)
  symcode='[[DFNSTU]]'
  ;;
esac

# Handle CRLF in mingw tool chain
opt_cr=
case $build_os in
mingw*)
  opt_cr=`echo 'x\{0,1\}' | tr x '\015'` # option cr in regexp
  ;;
esac

# If we're using GNU nm, then use its standard symbol codes.
case `$NM -V 2>&1` in
*GNU* | *'with BFD'*)
  symcode='[[ABCDGIRSTW]]' ;;
esac

# Try without a prefix undercore, then with it.
for ac_symprfx in "" "_"; do

  # Transform symcode, sympat, and symprfx into a raw symbol and a C symbol.
  symxfrm="\\1 $ac_symprfx\\2 \\2"

  # Write the raw and C identifiers.
  lt_cv_sys_global_symbol_pipe="sed -n -e 's/^.*[[ 	]]\($symcode$symcode*\)[[ 	]][[ 	]]*$ac_symprfx$sympat$opt_cr$/$symxfrm/p'"

  # Check to see that the pipe works correctly.
  pipe_works=no

  rm -f conftest*
  cat > conftest.$ac_ext <<EOF
#ifdef __cplusplus
extern "C" {
#endif
char nm_test_var;
void nm_test_func(){}
#ifdef __cplusplus
}
#endif
int main(){nm_test_var='a';nm_test_func();return(0);}
EOF

  if AC_TRY_EVAL(ac_compile); then
    # Now try to grab the symbols.
    nlist=conftest.nm
    if AC_TRY_EVAL(NM conftest.$ac_objext \| $lt_cv_sys_global_symbol_pipe \> $nlist) && test -s "$nlist"; then
      # Try sorting and uniquifying the output.
      if sort "$nlist" | uniq > "$nlist"T; then
	mv -f "$nlist"T "$nlist"
      else
	rm -f "$nlist"T
      fi

      # Make sure that we snagged all the symbols we need.
      if grep ' nm_test_var$' "$nlist" >/dev/null; then
	if grep ' nm_test_func$' "$nlist" >/dev/null; then
	  cat <<EOF > conftest.$ac_ext
#ifdef __cplusplus
extern "C" {
#endif

EOF
	  # Now generate the symbol file.
	  eval "$lt_cv_sys_global_symbol_to_cdecl"' < "$nlist" | grep -v main >> conftest.$ac_ext'

	  cat <<EOF >> conftest.$ac_ext
#if defined (__STDC__) && __STDC__
# define lt_ptr_t void *
#else
# define lt_ptr_t char *
# define const
#endif

/* The mapping between symbol names and symbols. */
const struct {
  const char *name;
  lt_ptr_t address;
}
lt_preloaded_symbols[[]] =
{
EOF
	  $SED "s/^$symcode$symcode* \(.*\) \(.*\)$/  {\"\2\", (lt_ptr_t) \&\2},/" < "$nlist" | grep -v main >> conftest.$ac_ext
	  cat <<\EOF >> conftest.$ac_ext
  {0, (lt_ptr_t) 0}
};

#ifdef __cplusplus
}
#endif
EOF
	  # Now try linking the two files.
	  mv conftest.$ac_objext conftstm.$ac_objext
	  lt_save_LIBS="$LIBS"
	  lt_save_CFLAGS="$CFLAGS"
	  LIBS="conftstm.$ac_objext"
	  CFLAGS="$CFLAGS$_LT_AC_TAGVAR(lt_prog_compiler_no_builtin_flag, $1)"
	  if AC_TRY_EVAL(ac_link) && test -s conftest${ac_exeext}; then
	    pipe_works=yes
	  fi
	  LIBS="$lt_save_LIBS"
	  CFLAGS="$lt_save_CFLAGS"
	else
	  echo "cannot find nm_test_func in $nlist" >&AS_MESSAGE_LOG_FD
	fi
      else
	echo "cannot find nm_test_var in $nlist" >&AS_MESSAGE_LOG_FD
      fi
    else
      echo "cannot run $lt_cv_sys_global_symbol_pipe" >&AS_MESSAGE_LOG_FD
    fi
  else
    echo "$progname: failed program was:" >&AS_MESSAGE_LOG_FD
    cat conftest.$ac_ext >&5
  fi
  rm -f conftest* conftst*

  # Do not use the global_symbol_pipe unless it works.
  if test "$pipe_works" = yes; then
    break
  else
    lt_cv_sys_global_symbol_pipe=
  fi
done
])
if test -z "$lt_cv_sys_global_symbol_pipe"; then
  lt_cv_sys_global_symbol_to_cdecl=
fi
if test -z "$lt_cv_sys_global_symbol_pipe$lt_cv_sys_global_symbol_to_cdecl"; then
  AC_MSG_RESULT(failed)
else
  AC_MSG_RESULT(ok)
fi
]) # AC_LIBTOOL_SYS_GLOBAL_SYMBOL_PIPE


# AC_LIBTOOL_PROG_COMPILER_PIC([TAGNAME])
# ---------------------------------------
AC_DEFUN([AC_LIBTOOL_PROG_COMPILER_PIC],
[_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)=
_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
_LT_AC_TAGVAR(lt_prog_compiler_static, $1)=

AC_MSG_CHECKING([for $compiler option to produce PIC])
 ifelse([$1],[CXX],[
  # C++ specific cases for pic, static, wl, etc.
  if test "$GXX" = yes; then
    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'

    case $host_os in
    aix*)
      # All AIX code is PIC.
      if test "$host_cpu" = ia64; then
	# AIX 5 now supports IA64 processor
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      fi
      ;;
    amigaos*)
      # FIXME: we need at least 68020 code to build shared libraries, but
      # adding the `-m68020' flag to GCC prevents building anything better,
      # like `-m68040'.
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-m68020 -resident32 -malways-restore-a4'
      ;;
    beos* | cygwin* | irix5* | irix6* | nonstopux* | osf3* | osf4* | osf5*)
      # PIC is the default for these OSes.
      ;;
    mingw* | os2* | pw32*)
      # This hack is so that the source file can tell whether it is being
      # built for inclusion in a dll (and should export symbols for example).
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-DDLL_EXPORT'
      ;;
    darwin* | rhapsody*)
      # PIC is the default on this platform
      # Common symbols not allowed in MH_DYLIB files
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fno-common'
      ;;
    *djgpp*)
      # DJGPP does not support shared libraries at all
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
      ;;
    sysv4*MP*)
      if test -d /usr/nec; then
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=-Kconform_pic
      fi
      ;;
    hpux*)
      # PIC is the default for IA64 HP-UX and 64-bit HP-UX, but
      # not for PA HP-UX.
      case "$host_cpu" in
      hppa*64*|ia64*)
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	;;
      esac
      ;;
    *)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
      ;;
    esac
  else
    case $host_os in
      aix4* | aix5*)
	# All AIX code is PIC.
	if test "$host_cpu" = ia64; then
	  # AIX 5 now supports IA64 processor
	  _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
	else
	  _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-bnso -bI:/lib/syscalls.exp'
	fi
	;;
      chorus*)
	case $cc_basename in
	cxch68*)
	  # Green Hills C++ Compiler
	  # _LT_AC_TAGVAR(lt_prog_compiler_static, $1)="--no_auto_instantiation -u __main -u __premain -u _abort -r $COOL_DIR/lib/libOrb.a $MVME_DIR/lib/CC/libC.a $MVME_DIR/lib/classix/libcx.s.a"
	  ;;
	esac
	;;
       darwin*)
         # PIC is the default on this platform
         # Common symbols not allowed in MH_DYLIB files
         case $cc_basename in
           xlc*)
           _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-qnocommon'
           _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
           ;;
         esac
       ;;
      dgux*)
	case $cc_basename in
	  ec++*)
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    ;;
	  ghcx*)
	    # Green Hills C++ Compiler
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    ;;
	  *)
	    ;;
	esac
	;;
      freebsd* | kfreebsd*-gnu | dragonfly*)
	# FreeBSD uses GNU C++
	;;
      hpux9* | hpux10* | hpux11*)
	case $cc_basename in
	  CC*)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)="${ac_cv_prog_cc_wl}-a ${ac_cv_prog_cc_wl}archive"
	    if test "$host_cpu" != ia64; then
	      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='+Z'
	    fi
	    ;;
	  aCC*)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)="${ac_cv_prog_cc_wl}-a ${ac_cv_prog_cc_wl}archive"
	    case "$host_cpu" in
	    hppa*64*|ia64*)
	      # +Z the default
	      ;;
	    *)
	      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='+Z'
	      ;;
	    esac
	    ;;
	  *)
	    ;;
	esac
	;;
      irix5* | irix6* | nonstopux*)
	case $cc_basename in
	  CC*)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
	    # CC pic flag -KPIC is the default.
	    ;;
	  *)
	    ;;
	esac
	;;
      linux*)
	case $cc_basename in
	  KCC*)
	    # KAI C++ Compiler
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='--backend -Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	    ;;
	  icpc* | ecpc*)
	    # Intel C++
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'
	    ;;
	  pgCC*)
	    # Portland Group C++ compiler.
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fpic'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'
	    ;;
	  cxx*)
	    # Compaq C++
	    # Make sure the PIC flag is empty.  It appears that all Alpha
	    # Linux and Compaq Tru64 Unix objects are PIC.
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
	    ;;
	  *)
	    ;;
	esac
	;;
      lynxos*)
	;;
      m88k*)
	;;
      mvs*)
	case $cc_basename in
	  cxx*)
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-W c,exportall'
	    ;;
	  *)
	    ;;
	esac
	;;
      netbsd*)
	;;
      osf3* | osf4* | osf5*)
	case $cc_basename in
	  KCC*)
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='--backend -Wl,'
	    ;;
	  RCC*)
	    # Rational C++ 2.4.1
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    ;;
	  cxx*)
	    # Digital/Compaq C++
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	    # Make sure the PIC flag is empty.  It appears that all Alpha
	    # Linux and Compaq Tru64 Unix objects are PIC.
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
	    ;;
	  *)
	    ;;
	esac
	;;
      psos*)
	;;
      sco*)
	case $cc_basename in
	  CC*)
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	    ;;
	  *)
	    ;;
	esac
	;;
      solaris*)
	case $cc_basename in
	  CC*)
	    # Sun C++ 4.2, 5.x and Centerline C++
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
	    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Qoption ld '
	    ;;
	  gcx*)
	    # Green Hills C++ Compiler
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-PIC'
	    ;;
	  *)
	    ;;
	esac
	;;
      sunos4*)
	case $cc_basename in
	  CC*)
	    # Sun C++ 4.x
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
	    ;;
	  lcc*)
	    # Lucid
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
	    ;;
	  *)
	    ;;
	esac
	;;
      tandem*)
	case $cc_basename in
	  NCC*)
	    # NonStop-UX NCC 3.20
	    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	    ;;
	  *)
	    ;;
	esac
	;;
      unixware*)
	;;
      vxworks*)
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
	;;
    esac
  fi
],
[
  if test "$GCC" = yes; then
    _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
    _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'

    case $host_os in
      aix*)
      # All AIX code is PIC.
      if test "$host_cpu" = ia64; then
	# AIX 5 now supports IA64 processor
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      fi
      ;;

    amigaos*)
      # FIXME: we need at least 68020 code to build shared libraries, but
      # adding the `-m68020' flag to GCC prevents building anything better,
      # like `-m68040'.
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-m68020 -resident32 -malways-restore-a4'
      ;;

    beos* | cygwin* | irix5* | irix6* | nonstopux* | osf3* | osf4* | osf5*)
      # PIC is the default for these OSes.
      ;;

    mingw* | pw32* | os2*)
      # This hack is so that the source file can tell whether it is being
      # built for inclusion in a dll (and should export symbols for example).
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-DDLL_EXPORT'
      ;;

    darwin* | rhapsody*)
      # PIC is the default on this platform
      # Common symbols not allowed in MH_DYLIB files
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fno-common'
      ;;

    msdosdjgpp*)
      # Just because we use GCC doesn't mean we suddenly get shared libraries
      # on systems that don't support them.
      _LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
      enable_shared=no
      ;;

    sysv4*MP*)
      if test -d /usr/nec; then
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=-Kconform_pic
      fi
      ;;

    hpux*)
      # PIC is the default for IA64 HP-UX and 64-bit HP-UX, but
      # not for PA HP-UX.
      case "$host_cpu" in
      hppa*64*|ia64*)
	# +Z the default
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
	;;
      esac
      ;;

    *)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fPIC'
      ;;
    esac
  else
    # PORTME Check for flag to pass linker flags through the system compiler.
    case $host_os in
    aix*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      if test "$host_cpu" = ia64; then
	# AIX 5 now supports IA64 processor
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      else
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-bnso -bI:/lib/syscalls.exp'
      fi
      ;;
      darwin*)
        # PIC is the default on this platform
        # Common symbols not allowed in MH_DYLIB files
       case $cc_basename in
         xlc*)
         _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-qnocommon'
         _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
         ;;
       esac
       ;;

    mingw* | pw32* | os2*)
      # This hack is so that the source file can tell whether it is being
      # built for inclusion in a dll (and should export symbols for example).
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-DDLL_EXPORT'
      ;;

    hpux9* | hpux10* | hpux11*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      # PIC is the default for IA64 HP-UX and 64-bit HP-UX, but
      # not for PA HP-UX.
      case "$host_cpu" in
      hppa*64*|ia64*)
	# +Z the default
	;;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='+Z'
	;;
      esac
      # Is there a better lt_prog_compiler_static that works with the bundled CC?
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='${wl}-a ${wl}archive'
      ;;

    irix5* | irix6* | nonstopux*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      # PIC (with -KPIC) is the default.
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
      ;;

    newsos6)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    linux*)
      case $cc_basename in
      icc* | ecc*)
	_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'
        ;;
      pgcc* | pgf77* | pgf90*)
        # Portland Group compilers (*not* the Pentium gcc compiler,
	# which looks to be a dead project)
	_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-fpic'
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-static'
        ;;
      ccc*)
        _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
        # All Alpha code is PIC.
        _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
        ;;
      esac
      ;;

    osf3* | osf4* | osf5*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      # All OSF/1 code is PIC.
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-non_shared'
      ;;

    sco3.2v5*)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-Kpic'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-dn'
      ;;

    solaris*)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      case $cc_basename in
      f77* | f90* | f95*)
	_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Qoption ld ';;
      *)
	_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,';;
      esac
      ;;

    sunos4*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Qoption ld '
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-PIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    sysv4 | sysv4.2uw2* | sysv4.3* | sysv5*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-KPIC'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    sysv4*MP*)
      if test -d /usr/nec ;then
	_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-Kconform_pic'
	_LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      fi
      ;;

    unicos*)
      _LT_AC_TAGVAR(lt_prog_compiler_wl, $1)='-Wl,'
      _LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
      ;;

    uts4*)
      _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)='-pic'
      _LT_AC_TAGVAR(lt_prog_compiler_static, $1)='-Bstatic'
      ;;

    *)
      _LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
      ;;
    esac
  fi
])
AC_MSG_RESULT([$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)])

#
# Check to make sure the PIC flag actually works.
#
if test -n "$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)"; then
  AC_LIBTOOL_COMPILER_OPTION([if $compiler PIC flag $_LT_AC_TAGVAR(lt_prog_compiler_pic, $1) works],
    _LT_AC_TAGVAR(lt_prog_compiler_pic_works, $1),
    [$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)ifelse([$1],[],[ -DPIC],[ifelse([$1],[CXX],[ -DPIC],[])])], [],
    [case $_LT_AC_TAGVAR(lt_prog_compiler_pic, $1) in
     "" | " "*) ;;
     *) _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=" $_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)" ;;
     esac],
    [_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
     _LT_AC_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no])
fi
case "$host_os" in
  # For platforms which do not support PIC, -DPIC is meaningless:
  *djgpp*)
    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)=
    ;;
  *)
    _LT_AC_TAGVAR(lt_prog_compiler_pic, $1)="$_LT_AC_TAGVAR(lt_prog_compiler_pic, $1)ifelse([$1],[],[ -DPIC],[ifelse([$1],[CXX],[ -DPIC],[])])"
    ;;
esac
])


# AC_LIBTOOL_PROG_LD_SHLIBS([TAGNAME])
# ------------------------------------
# See if the linker supports building shared libraries.
AC_DEFUN([AC_LIBTOOL_PROG_LD_SHLIBS],
[AC_MSG_CHECKING([whether the $compiler linker ($LD) supports shared libraries])
ifelse([$1],[CXX],[
  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED '\''s/.* //'\'' | sort | uniq > $export_symbols'
  case $host_os in
  aix4* | aix5*)
    # If we're using GNU nm, then we don't want the "-C" option.
    # -C means demangle to AIX nm, but means don't demangle with GNU nm
    if $NM -V 2>&1 | grep 'GNU' > /dev/null; then
      _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -Bpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
    else
      _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -BCpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
    fi
    ;;
  pw32*)
    _LT_AC_TAGVAR(export_symbols_cmds, $1)="$ltdll_cmds"
  ;;
  cygwin* | mingw*)
    _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED -e '\''/^[[BCDGRS]] /s/.* \([[^ ]]*\)/\1 DATA/;/^.* __nm__/s/^.* __nm__\([[^ ]]*\) [[^ ]]*/\1 DATA/;/^I /d;/^[[AITW]] /s/.* //'\'' | sort | uniq > $export_symbols'
  ;;
  *)
    _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED '\''s/.* //'\'' | sort | uniq > $export_symbols'
  ;;
  esac
],[
  runpath_var=
  _LT_AC_TAGVAR(allow_undefined_flag, $1)=
  _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=no
  _LT_AC_TAGVAR(archive_cmds, $1)=
  _LT_AC_TAGVAR(archive_expsym_cmds, $1)=
  _LT_AC_TAGVAR(old_archive_From_new_cmds, $1)=
  _LT_AC_TAGVAR(old_archive_from_expsyms_cmds, $1)=
  _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=
  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
  _LT_AC_TAGVAR(thread_safe_flag_spec, $1)=
  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
  _LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)=
  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
  _LT_AC_TAGVAR(hardcode_direct, $1)=no
  _LT_AC_TAGVAR(hardcode_minus_L, $1)=no
  _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=unsupported
  _LT_AC_TAGVAR(link_all_deplibs, $1)=unknown
  _LT_AC_TAGVAR(hardcode_automatic, $1)=no
  _LT_AC_TAGVAR(module_cmds, $1)=
  _LT_AC_TAGVAR(module_expsym_cmds, $1)=
  _LT_AC_TAGVAR(always_export_symbols, $1)=no
  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED '\''s/.* //'\'' | sort | uniq > $export_symbols'
  # include_expsyms should be a list of space-separated symbols to be *always*
  # included in the symbol list
  _LT_AC_TAGVAR(include_expsyms, $1)=
  # exclude_expsyms can be an extended regexp of symbols to exclude
  # it will be wrapped by ` (' and `)$', so one must not match beginning or
  # end of line.  Example: `a|bc|.*d.*' will exclude the symbols `a' and `bc',
  # as well as any symbol that contains `d'.
  _LT_AC_TAGVAR(exclude_expsyms, $1)="_GLOBAL_OFFSET_TABLE_"
  # Although _GLOBAL_OFFSET_TABLE_ is a valid symbol C name, most a.out
  # platforms (ab)use it in PIC code, but their linkers get confused if
  # the symbol is explicitly referenced.  Since portable code cannot
  # rely on this symbol name, it's probably fine to never include it in
  # preloaded symbol tables.
  extract_expsyms_cmds=
  # Just being paranoid about ensuring that cc_basename is set.
  _LT_CC_BASENAME([$compiler])
  case $host_os in
  cygwin* | mingw* | pw32*)
    # FIXME: the MSVC++ port hasn't been tested in a loooong time
    # When not using gcc, we currently assume that we are using
    # Microsoft Visual C++.
    if test "$GCC" != yes; then
      with_gnu_ld=no
    fi
    ;;
  openbsd*)
    with_gnu_ld=no
    ;;
  esac

  _LT_AC_TAGVAR(ld_shlibs, $1)=yes
  if test "$with_gnu_ld" = yes; then
    # If archive_cmds runs LD, not CC, wlarc should be empty
    wlarc='${wl}'
    
    # Set some defaults for GNU ld with shared library support. These
    # are reset later if shared libraries are not supported. Putting them
    # here allows them to be overridden if necessary.
    runpath_var=LD_RUN_PATH
    _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}--rpath ${wl}$libdir'
    _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}--export-dynamic'
    # ancient GNU ld didn't support --whole-archive et. al.
    if $LD --help 2>&1 | grep 'no-whole-archive' > /dev/null; then
	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)="$wlarc"'--whole-archive$convenience '"$wlarc"'--no-whole-archive'
      else
  	_LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
    fi
    supports_anon_versioning=no
    case `$LD -v 2>/dev/null` in
      *\ [[01]].* | *\ 2.[[0-9]].* | *\ 2.10.*) ;; # catch versions < 2.11
      *\ 2.11.93.0.2\ *) supports_anon_versioning=yes ;; # RH7.3 ...
      *\ 2.11.92.0.12\ *) supports_anon_versioning=yes ;; # Mandrake 8.2 ...
      *\ 2.11.*) ;; # other 2.11 versions
      *) supports_anon_versioning=yes ;;
    esac
    
    # See if GNU ld supports shared libraries.
    case $host_os in
    aix3* | aix4* | aix5*)
      # On AIX/PPC, the GNU linker is very broken
      if test "$host_cpu" != ia64; then
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	cat <<EOF 1>&2

*** Warning: the GNU linker, at least up to release 2.9.1, is reported
*** to be unable to reliably create shared libraries on AIX.
*** Therefore, libtool is disabling shared libraries support.  If you
*** really care for shared libraries, you may want to modify your PATH
*** so that a non-GNU linker is found, and then restart.

EOF
      fi
      ;;

    amigaos*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/a2ixlibrary.data~$echo "#define NAME $libname" > $output_objdir/a2ixlibrary.data~$echo "#define LIBRARY_ID 1" >> $output_objdir/a2ixlibrary.data~$echo "#define VERSION $major" >> $output_objdir/a2ixlibrary.data~$echo "#define REVISION $revision" >> $output_objdir/a2ixlibrary.data~$AR $AR_FLAGS $lib $libobjs~$RANLIB $lib~(cd $output_objdir && a2ixlibrary -32)'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes

      # Samuel A. Falvo II <kc5tja@dolphin.openprojects.net> reports
      # that the semantics of dynamic libraries on AmigaOS, at least up
      # to version 4, is to share data among multiple programs linked
      # with the same dynamic library.  Since this doesn't match the
      # behavior of shared libraries on other platforms, we can't use
      # them.
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;

    beos*)
      if $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
	# Joseph Beckenbach <jrb3@best.com> says some releases of gcc
	# support --undefined.  This deserves some investigation.  FIXME
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -nostart $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;

    cygwin* | mingw* | pw32*)
      # _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1) is actually meaningless,
      # as there is no search path for DLLs.
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      _LT_AC_TAGVAR(always_export_symbols, $1)=no
      _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=yes
      _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM $libobjs $convenience | $global_symbol_pipe | $SED -e '\''/^[[BCDGRS]] /s/.* \([[^ ]]*\)/\1 DATA/'\'' | $SED -e '\''/^[[AITW]] /s/.* //'\'' | sort | uniq > $export_symbols'

      if $LD --help 2>&1 | grep 'auto-import' > /dev/null; then
        _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000 ${wl}--out-implib,$lib'
	# If the export-symbols file already is a .def file (1st line
	# is EXPORTS), use it as is; otherwise, prepend...
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='if test "x`$SED 1q $export_symbols`" = xEXPORTS; then
	  cp $export_symbols $output_objdir/$soname.def;
	else
	  echo EXPORTS > $output_objdir/$soname.def;
	  cat $export_symbols >> $output_objdir/$soname.def;
	fi~
	$CC -shared $output_objdir/$soname.def $libobjs $deplibs $compiler_flags -o $output_objdir/$soname ${wl}--image-base=0x10000000  ${wl}--out-implib,$lib'
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;

    linux*)
      if $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
	tmp_addflag=
	case $cc_basename,$host_cpu in
	pgcc*)				# Portland Group C compiler
	  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}--whole-archive,`for conv in $convenience\"\"; do test  -n \"$conv\" && new_convenience=\"$new_convenience,$conv\"; done; $echo \"$new_convenience\"` ${wl}--no-whole-archive'
	  tmp_addflag=' $pic_flag'
	  ;;
	pgf77* | pgf90* )			# Portland Group f77 and f90 compilers
	  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}--whole-archive,`for conv in $convenience\"\"; do test  -n \"$conv\" && new_convenience=\"$new_convenience,$conv\"; done; $echo \"$new_convenience\"` ${wl}--no-whole-archive'
	  tmp_addflag=' $pic_flag -Mnomain' ;;
	ecc*,ia64* | icc*,ia64*)		# Intel C compiler on ia64
	  tmp_addflag=' -i_dynamic' ;;
	efc*,ia64* | ifort*,ia64*)	# Intel Fortran compiler on ia64
	  tmp_addflag=' -i_dynamic -nofor_main' ;;
	ifc* | ifort*)			# Intel Fortran compiler
	  tmp_addflag=' -nofor_main' ;;
	esac
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared'"$tmp_addflag"' $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'

	if test $supports_anon_versioning = yes; then
	  _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $output_objdir/$libname.ver~
  cat $export_symbols | sed -e "s/\(.*\)/\1;/" >> $output_objdir/$libname.ver~
  $echo "local: *; };" >> $output_objdir/$libname.ver~
	  $CC -shared'"$tmp_addflag"' $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-version-script ${wl}$output_objdir/$libname.ver -o $lib'
	fi
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;

    netbsd*)
      if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable $libobjs $deplibs $linker_flags -o $lib'
	wlarc=
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
      fi
      ;;

    solaris* | sysv5*)
      if $LD -v 2>&1 | grep 'BFD 2\.8' > /dev/null; then
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
	cat <<EOF 1>&2

*** Warning: The releases 2.8.* of the GNU linker cannot reliably
*** create shared libraries on Solaris systems.  Therefore, libtool
*** is disabling shared libraries support.  We urge you to upgrade GNU
*** binutils to release 2.9.1 or newer.  Another option is to modify
*** your PATH or compiler configuration so that the native linker is
*** used, and then restart.

EOF
      elif $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;

    sunos4*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -assert pure-text -Bshareable -o $lib $libobjs $deplibs $linker_flags'
      wlarc=
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    *)
      if $LD --help 2>&1 | grep ': supported targets:.* elf' > /dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
      else
	_LT_AC_TAGVAR(ld_shlibs, $1)=no
      fi
      ;;
    esac

    if test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = no; then
      runpath_var=
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=
    fi
  else
    # PORTME fill in a description of your system's linker (not GNU ld)
    case $host_os in
    aix3*)
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      _LT_AC_TAGVAR(always_export_symbols, $1)=yes
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$LD -o $output_objdir/$soname $libobjs $deplibs $linker_flags -bE:$export_symbols -T512 -H512 -bM:SRE~$AR $AR_FLAGS $lib $output_objdir/$soname'
      # Note: this linker hardcodes the directories in LIBPATH if there
      # are no directories specified by -L.
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      if test "$GCC" = yes && test -z "$link_static_flag"; then
	# Neither direct hardcoding nor static linking is supported with a
	# broken collect2.
	_LT_AC_TAGVAR(hardcode_direct, $1)=unsupported
      fi
      ;;

    aix4* | aix5*)
      if test "$host_cpu" = ia64; then
	# On IA64, the linker does run time linking by default, so we don't
	# have to do anything special.
	aix_use_runtimelinking=no
	exp_sym_flag='-Bexport'
	no_entry_flag=""
      else
	# If we're using GNU nm, then we don't want the "-C" option.
	# -C means demangle to AIX nm, but means don't demangle with GNU nm
	if $NM -V 2>&1 | grep 'GNU' > /dev/null; then
	  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -Bpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
	else
	  _LT_AC_TAGVAR(export_symbols_cmds, $1)='$NM -BCpg $libobjs $convenience | awk '\''{ if (((\[$]2 == "T") || (\[$]2 == "D") || (\[$]2 == "B")) && ([substr](\[$]3,1,1) != ".")) { print \[$]3 } }'\'' | sort -u > $export_symbols'
	fi
	aix_use_runtimelinking=no

	# Test if we are trying to use run time linking or normal
	# AIX style linking. If -brtl is somewhere in LDFLAGS, we
	# need to do runtime linking.
	case $host_os in aix4.[[23]]|aix4.[[23]].*|aix5*)
	  for ld_flag in $LDFLAGS; do
  	  if (test $ld_flag = "-brtl" || test $ld_flag = "-Wl,-brtl"); then
  	    aix_use_runtimelinking=yes
  	    break
  	  fi
	  done
	esac

	exp_sym_flag='-bexport'
	no_entry_flag='-bnoentry'
      fi

      # When large executables or shared objects are built, AIX ld can
      # have problems creating the table of contents.  If linking a library
      # or program results in "error TOC overflow" add -mminimal-toc to
      # CXXFLAGS/CFLAGS for g++/gcc.  In the cases where that is not
      # enough to fix the problem, add -Wl,-bbigtoc to LDFLAGS.

      _LT_AC_TAGVAR(archive_cmds, $1)=''
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=':'
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes

      if test "$GCC" = yes; then
	case $host_os in aix4.[[012]]|aix4.[[012]].*)
	# We only want to do this on AIX 4.2 and lower, the check
	# below for broken collect2 doesn't work under 4.3+
	  collect2name=`${CC} -print-prog-name=collect2`
	  if test -f "$collect2name" && \
  	   strings "$collect2name" | grep resolve_lib_name >/dev/null
	  then
  	  # We have reworked collect2
  	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes
	  else
  	  # We have old collect2
  	  _LT_AC_TAGVAR(hardcode_direct, $1)=unsupported
  	  # It fails to find uninstalled libraries when the uninstalled
  	  # path is not listed in the libpath.  Setting hardcode_minus_L
  	  # to unsupported forces relinking
  	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
  	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
  	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=
	  fi
	esac
	shared_flag='-shared'
	if test "$aix_use_runtimelinking" = yes; then
	  shared_flag="$shared_flag "'${wl}-G'
	fi
      else
	# not using gcc
	if test "$host_cpu" = ia64; then
  	# VisualAge C++, Version 5.5 for AIX 5L for IA-64, Beta 3 Release
  	# chokes on -Wl,-G. The following line is correct:
	  shared_flag='-G'
	else
  	if test "$aix_use_runtimelinking" = yes; then
	    shared_flag='${wl}-G'
	  else
	    shared_flag='${wl}-bM:SRE'
  	fi
	fi
      fi

      # It seems that -bexpall does not export symbols beginning with
      # underscore (_), so it is better to generate a list of symbols to export.
      _LT_AC_TAGVAR(always_export_symbols, $1)=yes
      if test "$aix_use_runtimelinking" = yes; then
	# Warning - without using the other runtime loading flags (-brtl),
	# -berok will link without error, but may produce a broken library.
	_LT_AC_TAGVAR(allow_undefined_flag, $1)='-berok'
       # Determine the default libpath from the value encoded in an empty executable.
       _LT_AC_SYS_LIBPATH_AIX
       _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags `if test "x${allow_undefined_flag}" != "x"; then echo "${wl}${allow_undefined_flag}"; else :; fi` '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols $shared_flag"
       else
	if test "$host_cpu" = ia64; then
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-R $libdir:/usr/lib:/lib'
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)="-z nodefs"
	  _LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}${allow_undefined_flag} '"\${wl}$no_entry_flag \${wl}$exp_sym_flag:\$export_symbols"
	else
	 # Determine the default libpath from the value encoded in an empty executable.
	 _LT_AC_SYS_LIBPATH_AIX
	 _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-blibpath:$libdir:'"$aix_libpath"
	  # Warning - without using the other run time loading flags,
	  # -berok will link without error, but may produce a broken library.
	  _LT_AC_TAGVAR(no_undefined_flag, $1)=' ${wl}-bernotok'
	  _LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-berok'
	  # -bexpall does not export symbols beginning with underscore (_)
	  _LT_AC_TAGVAR(always_export_symbols, $1)=yes
	  # Exported symbols can be pulled into shared objects from archives
	  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=' '
	  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes
	  # This is similar to how AIX traditionally builds it's shared libraries.
	  _LT_AC_TAGVAR(archive_expsym_cmds, $1)="\$CC $shared_flag"' -o $output_objdir/$soname $libobjs $deplibs $compiler_flags ${wl}-bE:$export_symbols ${wl}-bnoentry${allow_undefined_flag}~$AR $AR_FLAGS $output_objdir/$libname$release.a $output_objdir/$soname'
	fi
      fi
      ;;

    amigaos*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/a2ixlibrary.data~$echo "#define NAME $libname" > $output_objdir/a2ixlibrary.data~$echo "#define LIBRARY_ID 1" >> $output_objdir/a2ixlibrary.data~$echo "#define VERSION $major" >> $output_objdir/a2ixlibrary.data~$echo "#define REVISION $revision" >> $output_objdir/a2ixlibrary.data~$AR $AR_FLAGS $lib $libobjs~$RANLIB $lib~(cd $output_objdir && a2ixlibrary -32)'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      # see comment about different semantics on the GNU ld section
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;

    bsdi[[45]]*)
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)=-rdynamic
      ;;

    cygwin* | mingw* | pw32*)
      # When not using gcc, we currently assume that we are using
      # Microsoft Visual C++.
      # hardcode_libdir_flag_spec is actually meaningless, as there is
      # no search path for DLLs.
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=' '
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      # Tell ltmain to make .lib files, not .a files.
      libext=lib
      # Tell ltmain to make .dll files, not .so files.
      shrext_cmds=".dll"
      # FIXME: Setting linknames here is a bad hack.
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -o $lib $libobjs $compiler_flags `echo "$deplibs" | $SED -e '\''s/ -lc$//'\''` -link -dll~linknames='
      # The linker will automatically build a .lib file if we build a DLL.
      _LT_AC_TAGVAR(old_archive_From_new_cmds, $1)='true'
      # FIXME: Should let the user specify the lib program.
      _LT_AC_TAGVAR(old_archive_cmds, $1)='lib /OUT:$oldlib$oldobjs$old_deplibs'
      _LT_AC_TAGVAR(fix_srcfile_path, $1)='`cygpath -w "$srcfile"`'
      _LT_AC_TAGVAR(enable_shared_with_static_runtimes, $1)=yes
      ;;

    darwin* | rhapsody*)
      case "$host_os" in
        rhapsody* | darwin1.[[012]])
         _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-undefined ${wl}suppress'
         ;;
       *) # Darwin 1.3 on
         if test -z ${MACOSX_DEPLOYMENT_TARGET} ; then
           _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-flat_namespace ${wl}-undefined ${wl}suppress'
         else
           case ${MACOSX_DEPLOYMENT_TARGET} in
             10.[[012]])
               _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-flat_namespace ${wl}-undefined ${wl}suppress'
               ;;
             10.*)
               _LT_AC_TAGVAR(allow_undefined_flag, $1)='${wl}-undefined ${wl}dynamic_lookup'
               ;;
           esac
         fi
         ;;
      esac
      _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
      _LT_AC_TAGVAR(hardcode_direct, $1)=no
      _LT_AC_TAGVAR(hardcode_automatic, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=unsupported
      _LT_AC_TAGVAR(whole_archive_flag_spec, $1)=''
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
    if test "$GCC" = yes ; then
#        echo "G77=$G77,compiler=$compiler,tagname=$tagname"
        if test "$tagname" = "F77"; then
_LT_AC_TAGVAR(archive_cmds, $1)='$CC -dynamiclib -single_module -nostdlib $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
        else
_LT_AC_TAGVAR(archive_cmds, $1)='$CC -dynamiclib -single_module $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring'
        fi
    	output_verbose_link_cmd='echo'
      _LT_AC_TAGVAR(module_cmds, $1)='$CC $allow_undefined_flag -o $lib -bundle $libobjs $deplibs$compiler_flags'
      # Don't fix this by using the ld -exported_symbols_list flag, it doesn't exist in older darwin ld's
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -dynamiclib $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags -install_name $rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
      _LT_AC_TAGVAR(module_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC $allow_undefined_flag  -o $lib -bundle $libobjs $deplibs$compiler_flags~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
    else
      case $cc_basename in
        xlc*)
         output_verbose_link_cmd='echo'
         _LT_AC_TAGVAR(archive_cmds, $1)='$CC -qmkshrobj $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags ${wl}-install_name ${wl}`echo $rpath/$soname` $verstring'
         _LT_AC_TAGVAR(module_cmds, $1)='$CC $allow_undefined_flag -o $lib -bundle $libobjs $deplibs$compiler_flags'
          # Don't fix this by using the ld -exported_symbols_list flag, it doesn't exist in older darwin ld's
         _LT_AC_TAGVAR(archive_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC -qmkshrobj $allow_undefined_flag -o $lib $libobjs $deplibs $compiler_flags ${wl}-install_name ${wl}$rpath/$soname $verstring~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
          _LT_AC_TAGVAR(module_expsym_cmds, $1)='sed -e "s,#.*,," -e "s,^[    ]*,," -e "s,^\(..*\),_&," < $export_symbols > $output_objdir/${libname}-symbols.expsym~$CC $allow_undefined_flag  -o $lib -bundle $libobjs $deplibs$compiler_flags~nmedit -s $output_objdir/${libname}-symbols.expsym ${lib}'
          ;;
       *)
         _LT_AC_TAGVAR(ld_shlibs, $1)=no
          ;;
      esac
    fi
      ;;

    dgux*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    freebsd1*)
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;

    # FreeBSD 2.2.[012] allows us to include c++rt0.o to get C++ constructor
    # support.  Future versions do this automatically, but an explicit c++rt0.o
    # does not break anything, and helps significantly (at the cost of a little
    # extra space).
    freebsd2.2*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags /usr/lib/c++rt0.o'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    # Unfortunately, older versions of FreeBSD 2 do not have this feature.
    freebsd2*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    # FreeBSD 3 and greater uses gcc -shared to do shared libraries.
    freebsd* | kfreebsd*-gnu | dragonfly*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -o $lib $libobjs $deplibs $compiler_flags'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    hpux9*)
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$CC -shared -fPIC ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $libobjs $deplibs $compiler_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$rm $output_objdir/$soname~$LD -b +b $install_libdir -o $output_objdir/$soname $libobjs $deplibs $linker_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes

      # hardcode_minus_L: Not really in the search PATH,
      # but as the default location of the library.
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
      ;;

    hpux10* | hpux11*)
      if test "$GCC" = yes -a "$with_gnu_ld" = no; then
	case "$host_cpu" in
	hppa*64*|ia64*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared ${wl}+h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
	  ;;
	*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared -fPIC ${wl}+h ${wl}$soname ${wl}+b ${wl}$install_libdir -o $lib $libobjs $deplibs $compiler_flags'
	  ;;
	esac
      else
	case "$host_cpu" in
	hppa*64*|ia64*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname -o $lib $libobjs $deplibs $linker_flags'
	  ;;
	*)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -b +h $soname +b $install_libdir -o $lib $libobjs $deplibs $linker_flags'
	  ;;
	esac
      fi
      if test "$with_gnu_ld" = no; then
	case "$host_cpu" in
	hppa*64*)
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)='+b $libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no
	  _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
	  ;;
	ia64*)
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no
	  _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no

	  # hardcode_minus_L: Not really in the search PATH,
	  # but as the default location of the library.
	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
	  ;;
	*)
	  _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}+b ${wl}$libdir'
	  _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes
	  _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'

	  # hardcode_minus_L: Not really in the search PATH,
	  # but as the default location of the library.
	  _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
	  ;;
	esac
      fi
      ;;

    irix5* | irix6* | nonstopux*)
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared $libobjs $deplibs $linker_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec_ld, $1)='-rpath $libdir'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
      ;;

    netbsd*)
      if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'  # a.out
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared -o $lib $libobjs $deplibs $linker_flags'      # ELF
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    newsos6)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    openbsd*)
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      if test -z "`echo __ELF__ | $CC -E - | grep __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag -o $lib $libobjs $deplibs $compiler_flags'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $pic_flag -o $lib $libobjs $deplibs $compiler_flags ${wl}-retain-symbols-file,$export_symbols'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	_LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
      else
       case $host_os in
	 openbsd[[01]].* | openbsd2.[[0-7]] | openbsd2.[[0-7]].*)
	   _LT_AC_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'
	   _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
	   ;;
	 *)
	   _LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag -o $lib $libobjs $deplibs $compiler_flags'
	   _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
	   ;;
       esac
      fi
      ;;

    os2*)
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(allow_undefined_flag, $1)=unsupported
      _LT_AC_TAGVAR(archive_cmds, $1)='$echo "LIBRARY $libname INITINSTANCE" > $output_objdir/$libname.def~$echo "DESCRIPTION \"$libname\"" >> $output_objdir/$libname.def~$echo DATA >> $output_objdir/$libname.def~$echo " SINGLE NONSHARED" >> $output_objdir/$libname.def~$echo EXPORTS >> $output_objdir/$libname.def~emxexp $libobjs >> $output_objdir/$libname.def~$CC -Zdll -Zcrtdll -o $lib $libobjs $deplibs $compiler_flags $output_objdir/$libname.def'
      _LT_AC_TAGVAR(old_archive_From_new_cmds, $1)='emximp -o $output_objdir/$libname.a $output_objdir/$libname.def'
      ;;

    osf3*)
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $libobjs $deplibs $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'
      else
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' -expect_unresolved \*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared${allow_undefined_flag} $libobjs $deplibs $linker_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      ;;

    osf4* | osf5*)	# as osf3* with the addition of -msym flag
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' ${wl}-expect_unresolved ${wl}\*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared${allow_undefined_flag} $libobjs $deplibs $compiler_flags ${wl}-msym ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${output_objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath ${wl}$libdir'
      else
	_LT_AC_TAGVAR(allow_undefined_flag, $1)=' -expect_unresolved \*'
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -shared${allow_undefined_flag} $libobjs $deplibs $linker_flags -msym -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='for i in `cat $export_symbols`; do printf "%s %s\\n" -exported_symbol "\$i" >> $lib.exp; done; echo "-hidden">> $lib.exp~
	$LD -shared${allow_undefined_flag} -input $lib.exp $linker_flags $libobjs $deplibs -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${output_objdir}/so_locations -o $lib~$rm $lib.exp'

	# Both c and cxx compiler support -rpath directly
	_LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-rpath $libdir'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_separator, $1)=:
      ;;

    sco3.2v5*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-Bexport'
      runpath_var=LD_RUN_PATH
      hardcode_runpath_var=yes
      ;;

    solaris*)
      _LT_AC_TAGVAR(no_undefined_flag, $1)=' -z text'
      if test "$GCC" = yes; then
	wlarc='${wl}'
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
	  $CC -shared ${wl}-M ${wl}$lib.exp ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags~$rm $lib.exp'
      else
	wlarc=''
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -G${allow_undefined_flag} -h $soname -o $lib $libobjs $deplibs $linker_flags'
	_LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
  	$LD -G${allow_undefined_flag} -M $lib.exp -h $soname -o $lib $libobjs $deplibs $linker_flags~$rm $lib.exp'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      case $host_os in
      solaris2.[[0-5]] | solaris2.[[0-5]].*) ;;
      *)
 	# The compiler driver will combine linker options so we
 	# cannot just pass the convience library names through
 	# without $wl, iff we do not link with $LD.
 	# Luckily, gcc supports the same syntax we need for Sun Studio.
 	# Supported since Solaris 2.6 (maybe 2.5.1?)
 	case $wlarc in
 	'')
 	  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='-z allextract$convenience -z defaultextract' ;;
 	*)
 	  _LT_AC_TAGVAR(whole_archive_flag_spec, $1)='${wl}-z ${wl}allextract`for conv in $convenience\"\"; do test -n \"$conv\" && new_convenience=\"$new_convenience,$conv\"; done; $echo \"$new_convenience\"` ${wl}-z ${wl}defaultextract' ;;
 	esac ;;
      esac
      _LT_AC_TAGVAR(link_all_deplibs, $1)=yes
      ;;

    sunos4*)
      if test "x$host_vendor" = xsequent; then
	# Use $CC to link under sequent, because it throws in some extra .o
	# files that make .init and .fini sections work.
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -G ${wl}-h $soname -o $lib $libobjs $deplibs $compiler_flags'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -assert pure-text -Bstatic -o $lib $libobjs $deplibs $linker_flags'
      fi
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=yes
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    sysv4)
      case $host_vendor in
	sni)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=yes # is this really true???
	;;
	siemens)
	  ## LD is ld it makes a PLAMLIB
	  ## CC just makes a GrossModule.
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -o $lib $libobjs $deplibs $linker_flags'
	  _LT_AC_TAGVAR(reload_cmds, $1)='$CC -r -o $output$reload_objs'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no
        ;;
	motorola)
	  _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
	  _LT_AC_TAGVAR(hardcode_direct, $1)=no #Motorola manual says yes, but my tests say they lie
	;;
      esac
      runpath_var='LD_RUN_PATH'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    sysv4.3*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      _LT_AC_TAGVAR(export_dynamic_flag_spec, $1)='-Bexport'
      ;;

    sysv4*MP*)
      if test -d /usr/nec; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
	_LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
	runpath_var=LD_RUN_PATH
	hardcode_runpath_var=yes
	_LT_AC_TAGVAR(ld_shlibs, $1)=yes
      fi
      ;;

    sysv4.2uw2*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_direct, $1)=yes
      _LT_AC_TAGVAR(hardcode_minus_L, $1)=no
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      hardcode_runpath_var=yes
      runpath_var=LD_RUN_PATH
      ;;

   sysv5OpenUNIX8* | sysv5UnixWare7* |  sysv5uw[[78]]* | unixware7*)
      _LT_AC_TAGVAR(no_undefined_flag, $1)='${wl}-z ${wl}text'
      if test "$GCC" = yes; then
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -shared ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
      else
	_LT_AC_TAGVAR(archive_cmds, $1)='$CC -G ${wl}-h ${wl}$soname -o $lib $libobjs $deplibs $compiler_flags'
      fi
      runpath_var='LD_RUN_PATH'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    sysv5*)
      _LT_AC_TAGVAR(no_undefined_flag, $1)=' -z text'
      # $CC -shared without GNU ld will not create a library from C++
      # object files and a static libstdc++, better avoid it by now
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G${allow_undefined_flag} -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(archive_expsym_cmds, $1)='$echo "{ global:" > $lib.exp~cat $export_symbols | $SED -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
  		$LD -G${allow_undefined_flag} -M $lib.exp -h $soname -o $lib $libobjs $deplibs $linker_flags~$rm $lib.exp'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)=
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      runpath_var='LD_RUN_PATH'
      ;;

    uts4*)
      _LT_AC_TAGVAR(archive_cmds, $1)='$LD -G -h $soname -o $lib $libobjs $deplibs $linker_flags'
      _LT_AC_TAGVAR(hardcode_libdir_flag_spec, $1)='-L$libdir'
      _LT_AC_TAGVAR(hardcode_shlibpath_var, $1)=no
      ;;

    *)
      _LT_AC_TAGVAR(ld_shlibs, $1)=no
      ;;
    esac
  fi
])
AC_MSG_RESULT([$_LT_AC_TAGVAR(ld_shlibs, $1)])
test "$_LT_AC_TAGVAR(ld_shlibs, $1)" = no && can_build_shared=no

variables_saved_for_relink="PATH $shlibpath_var $runpath_var"
if test "$GCC" = yes; then
  variables_saved_for_relink="$variables_saved_for_relink GCC_EXEC_PREFIX COMPILER_PATH LIBRARY_PATH"
fi

#
# Do we need to explicitly link libc?
#
case "x$_LT_AC_TAGVAR(archive_cmds_need_lc, $1)" in
x|xyes)
  # Assume -lc should be added
  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes

  if test "$enable_shared" = yes && test "$GCC" = yes; then
    case $_LT_AC_TAGVAR(archive_cmds, $1) in
    *'~'*)
      # FIXME: we may have to deal with multi-command sequences.
      ;;
    '$CC '*)
      # Test whether the compiler implicitly links with -lc since on some
      # systems, -lgcc has to come before -lc. If gcc already passes -lc
      # to ld, don't add -lc before -lgcc.
      AC_MSG_CHECKING([whether -lc should be explicitly linked in])
      $rm conftest*
      printf "$lt_simple_compile_test_code" > conftest.$ac_ext

      if AC_TRY_EVAL(ac_compile) 2>conftest.err; then
        soname=conftest
        lib=conftest
        libobjs=conftest.$ac_objext
        deplibs=
        wl=$_LT_AC_TAGVAR(lt_prog_compiler_wl, $1)
        compiler_flags=-v
        linker_flags=-v
        verstring=
        output_objdir=.
        libname=conftest
        lt_save_allow_undefined_flag=$_LT_AC_TAGVAR(allow_undefined_flag, $1)
        _LT_AC_TAGVAR(allow_undefined_flag, $1)=
        if AC_TRY_EVAL(_LT_AC_TAGVAR(archive_cmds, $1) 2\>\&1 \| grep \" -lc \" \>/dev/null 2\>\&1)
        then
	  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=no
        else
	  _LT_AC_TAGVAR(archive_cmds_need_lc, $1)=yes
        fi
        _LT_AC_TAGVAR(allow_undefined_flag, $1)=$lt_save_allow_undefined_flag
      else
        cat conftest.err 1>&5
      fi
      $rm conftest*
      AC_MSG_RESULT([$_LT_AC_TAGVAR(archive_cmds_need_lc, $1)])
      ;;
    esac
  fi
  ;;
esac
])# AC_LIBTOOL_PROG_LD_SHLIBS


# _LT_AC_FILE_LTDLL_C
# -------------------
# Be careful that the start marker always follows a newline.
AC_DEFUN([_LT_AC_FILE_LTDLL_C], [
# /* ltdll.c starts here */
# #define WIN32_LEAN_AND_MEAN
# #include <windows.h>
# #undef WIN32_LEAN_AND_MEAN
# #include <stdio.h>
#
# #ifndef __CYGWIN__
# #  ifdef __CYGWIN32__
# #    define __CYGWIN__ __CYGWIN32__
# #  endif
# #endif
#
# #ifdef __cplusplus
# extern "C" {
# #endif
# BOOL APIENTRY DllMain (HINSTANCE hInst, DWORD reason, LPVOID reserved);
# #ifdef __cplusplus
# }
# #endif
#
# #ifdef __CYGWIN__
# #include <cygwin/cygwin_dll.h>
# DECLARE_CYGWIN_DLL( DllMain );
# #endif
# HINSTANCE __hDllInstance_base;
#
# BOOL APIENTRY
# DllMain (HINSTANCE hInst, DWORD reason, LPVOID reserved)
# {
#   __hDllInstance_base = hInst;
#   return TRUE;
# }
# /* ltdll.c ends here */
])# _LT_AC_FILE_LTDLL_C


# _LT_AC_TAGVAR(VARNAME, [TAGNAME])
# ---------------------------------
AC_DEFUN([_LT_AC_TAGVAR], [ifelse([$2], [], [$1], [$1_$2])])


# old names
AC_DEFUN([AM_PROG_LIBTOOL],   [AC_PROG_LIBTOOL])
AC_DEFUN([AM_ENABLE_SHARED],  [AC_ENABLE_SHARED($@)])
AC_DEFUN([AM_ENABLE_STATIC],  [AC_ENABLE_STATIC($@)])
AC_DEFUN([AM_DISABLE_SHARED], [AC_DISABLE_SHARED($@)])
AC_DEFUN([AM_DISABLE_STATIC], [AC_DISABLE_STATIC($@)])
AC_DEFUN([AM_PROG_LD],        [AC_PROG_LD])
AC_DEFUN([AM_PROG_NM],        [AC_PROG_NM])

# This is just to silence aclocal about the macro not being used
ifelse([AC_DISABLE_FAST_INSTALL])

AC_DEFUN([LT_AC_PROG_GCJ],
[AC_CHECK_TOOL(GCJ, gcj, no)
  test "x${GCJFLAGS+set}" = xset || GCJFLAGS="-g -O2"
  AC_SUBST(GCJFLAGS)
])

AC_DEFUN([LT_AC_PROG_RC],
[AC_CHECK_TOOL(RC, windres, no)
])

# NOTE: This macro has been submitted for inclusion into   #
#  GNU Autoconf as AC_PROG_SED.  When it is available in   #
#  a released version of Autoconf we should remove this    #
#  macro and use it instead.                               #
# LT_AC_PROG_SED
# --------------
# Check for a fully-functional sed program, that truncates
# as few characters as possible.  Prefer GNU sed if found.
AC_DEFUN([LT_AC_PROG_SED],
[AC_MSG_CHECKING([for a sed that does not truncate output])
AC_CACHE_VAL(lt_cv_path_SED,
[# Loop through the user's path and test for sed and gsed.
# Then use that list of sed's as ones to test for truncation.
as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
for as_dir in $PATH
do
  IFS=$as_save_IFS
  test -z "$as_dir" && as_dir=.
  for lt_ac_prog in sed gsed; do
    for ac_exec_ext in '' $ac_executable_extensions; do
      if $as_executable_p "$as_dir/$lt_ac_prog$ac_exec_ext"; then
        lt_ac_sed_list="$lt_ac_sed_list $as_dir/$lt_ac_prog$ac_exec_ext"
      fi
    done
  done
done
lt_ac_max=0
lt_ac_count=0
# Add /usr/xpg4/bin/sed as it is typically found on Solaris
# along with /bin/sed that truncates output.
for lt_ac_sed in $lt_ac_sed_list /usr/xpg4/bin/sed; do
  test ! -f $lt_ac_sed && continue
  cat /dev/null > conftest.in
  lt_ac_count=0
  echo $ECHO_N "0123456789$ECHO_C" >conftest.in
  # Check for GNU sed and select it if it is found.
  if "$lt_ac_sed" --version 2>&1 < /dev/null | grep 'GNU' > /dev/null; then
    lt_cv_path_SED=$lt_ac_sed
    break
  fi
  while true; do
    cat conftest.in conftest.in >conftest.tmp
    mv conftest.tmp conftest.in
    cp conftest.in conftest.nl
    echo >>conftest.nl
    $lt_ac_sed -e 's/a$//' < conftest.nl >conftest.out || break
    cmp -s conftest.out conftest.nl || break
    # 10000 chars as input seems more than enough
    test $lt_ac_count -gt 10 && break
    lt_ac_count=`expr $lt_ac_count + 1`
    if test $lt_ac_count -gt $lt_ac_max; then
      lt_ac_max=$lt_ac_count
      lt_cv_path_SED=$lt_ac_sed
    fi
  done
done
])
SED=$lt_cv_path_SED
AC_MSG_RESULT([$SED])
])

# -*- mode: m4 -*-
# Starlink M4 macros for autoconf
# original starconf.m4, installed by starconf 1.3, rnum=1003000
# DO NOT EDIT: it may be overwritten when starconf is next run

#  Copyright:
#     Copyright (C) 2003-2005 Council for the Central Laboratory of the
#     Research Councils
#
#  Licence:
#     This program is free software; you can redistribute it and/or
#     modify it under the terms of the GNU General Public Licence as
#     published by the Free Software Foundation; either version 2 of
#     the Licence, or (at your option) any later version.
#
#     This program is distributed in the hope that it will be
#     useful,but WITHOUT ANY WARRANTY; without even the implied
#     warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
#     PURPOSE. See the GNU General Public Licence for more details.
#
#     You should have received a copy of the GNU General Public Licence
#     along with this program; if not, write to the Free Software
#     Foundation, Inc., 51 Franklin Street,Fifth Floor, Boston, MA
#     02110-1301, USA

# STAR_DEFAULTS(options='')
# -------------------------
# Defaults for Starlink configure.ac files.  The optional OPTIONS
# argument holds a space-separated list of option keywords, of which
# the only ones at present are `per-package-dirs', which causes
# applications and help to be installed in a package-specific
# directory, and 'docs-only', which indicates that the component contains
# only documentation.
#
# Certain features of this macro are documented in SSN/78, in particular
#   - Sets STARLINK
#   - Sets AM_FCFLAGS, AM_FFLAGS, AM_CFLAGS, AM_LDFLAGS to appropriate values
#   - Sets PACKAGE_VERSION_{MAJOR,MINOR,RELEASE,INTEGER}
# The behaviour of these should not be changed without changing the
# documentation, or without due consideration of the packages which use
# the earlier behaviour.  Everything else is, in principle, private
# (not that that's going to stop folk).
AC_DEFUN([STAR_DEFAULTS],
[##
m4_ifval([$1],
         [AC_FOREACH([Option], [$1],
                     [m4_case(Option,
                              [per-package-dirs], [_star_per_package_dirs=:],
                              [docs-only], [m4_define([_poss_STAR_RESTFP_FIX],
                                                      [])dnl
                                           _star_docs_only=:],
                              [AC_FATAL([$0: unrecognised option $1])])
                      ])],
         [])
m4_ifdef([_poss_STAR_RESTFP_FIX],
         [],
         [m4_define([_poss_STAR_RESTFP_FIX], [_STAR_RESTFP_FIX])])

m4_define([per_dir_PREFIX],   [m4_ifdef([OVERRIDE_PREFIX],
                                        [OVERRIDE_PREFIX],
                                        [/stardev/git/starlink/star])])
m4_define([per_dir_STARLINK], [m4_ifdef([OVERRIDE_STARLINK],
                                        [OVERRIDE_STARLINK],
                                        [/stardev/git/starlink/star])])

test -n "$_star_per_package_dirs" || _star_per_package_dirs=false
test -n "$_star_docs_only"        || _star_docs_only=false


# Ensure that STARLINK has a value, defaulting to
# /stardev/git/starlink/star.  Note that this directory may be
# different from /star, and reflects the value of
# STARCONF_DEFAULT_STARLINK that the `starconf' package was configured
# with before its installation. 
#
# We use $STARLINK as the location of any other Starlink tools we need
# to use during the building of our packages, and for the location of
# any manifests we need to check.  It is permissable for it to be
# different from $(prefix): this is partly because we have no way of
# enforcing that the two be the same, since the user can set
# prefix=xxx on the `make install' command line, and partly so that it
# is possible to make a test version of a new package, using tools
# from an old installation, but installing in a new place.
#
# However, we install software in /stardev/git/starlink/star by
# default.  This is so even if $STARLINK and STARCONF_DEFAULT_STARLINK
# are different, because in this case we are planning to use a
# previous installation in $STARLINK or $STARCONF_DEFAULT_STARLINK,
# but install the newly built tool elsewhere. 
#
# In most cases, including the most important case where we are
# building the tree from scratch, in a checked out directory,
# STARLINK, STARCONF_DEFAULT_STARLINK and STARCONF_DEFAULT_PREFIX will
# all be the same.  That's OK because a separate aspect of the build
# process, respecting the various dependencies expresses in source
# directories, ensures that we don't use (and install) any Starlink
# tools in one component before that component has been build and
# installed. 

AC_PREFIX_DEFAULT(per_dir_PREFIX)dnl

test -n "$STARLINK" || STARLINK=per_dir_STARLINK

# Handle the --with-starlink option.  If --with-starlink is present
# with no argument (the default), we do nothing as this simply
# indicates that this is part of a Starlink tree.  If it has an
# argument, then this overrides the location of the Starlink tree.
# Option --without-starlink or --with-starlink=no indicates that this
# is being built _not_ as part of a Starlink build (that is, it's
# being distributed as something other than a Starlink package).  In
# this case, the variable STARLINK is unset.
AC_ARG_WITH(starlink,
            AS_HELP_STRING([--with-starlink],
                           [Starlink tree to use (default ${STARLINK:=per_dir_STARLINK})]),
            [if test -z "$withval" -o "$withval" = yes; then
                 : nothing needs to be done
             elif test "X$withval" = Xno; then
                 unset STARLINK
             elif test -d "$withval"; then
                 STARLINK="$withval"
             else
                 AC_MSG_WARN([--with-starlink given nonexistent directory; ignored: using default $STARLINK instead])
             fi])
if test -n "$STARLINK"; then
    AC_MSG_NOTICE([Starlink tree located at $STARLINK])
else
    AC_MSG_NOTICE([Not being built as part of the Starlink tree])
fi

# Handle --without-stardocs.  Don't build and install documentation.
# Default is --with-stardocs.
_star_build_docs=:
AC_ARG_WITH(stardocs,
            AS_HELP_STRING([--without-stardocs],
                           [Do not install built documentation (default --with)]),
            [if test -z "$withval"; then
                 _star_build_docs=: # default
             elif test "X$withval" = Xno; then
                 _star_build_docs=false
             elif test "X$withval" = Xyes; then
                 _star_build_docs=:
             else
                 AC_MSG_WARN([bad arg to --with-stardocs: using yes])
                 _star_build_docs=:
             fi])

if $_star_docs_only; then
    if $_star_build_docs; then
        : OK
    else
        AC_MSG_WARN([Building without documentation in a docs-only directory])
    fi
fi

# Everything depends on where /star is.  Declare STARLINK as a
# `precious variable'.  Amongst other things, this will make
# ./configure squeal if the package is re-configured with an
# inconsistent value of this variable.
AC_ARG_VAR(STARLINK, [Location of a current Starlink tree (used if necessary)])dnl

# AC_SUBST the STARLINK variable.  Macro AC_ARG_VAR does this anyway,
# but automake doesn't know that (in 1.6 at least): however any
# variable that automake finds has been AC_SUBSTed, it includes in
# Makefile.in, and we need that.
AC_SUBST(STARLINK)

# Use the above information: $STARLINK indicates a preexisting
# Starlink tree.
#
# Avoid doing anything if $STARLINK was unset above.
#
# Add library search paths using STAR_LDFLAGS.  Do it this way, rather than
# by defining LIBS (which is also a non-user variable): (a) these are
# really options to the linker, rather than adjustments to the set of
# libraries, so this makes sense; also (b) adding them to LIBS is too
# late, since that adds -L _after_ any -l options found in *_LDADD.
if test -n "$STARLINK"; then
    STAR_CPPFLAGS="-I$STARLINK/include"
    STAR_FCFLAGS="-I$STARLINK/include"
    STAR_FFLAGS="-I$STARLINK/include"
    STAR_LDFLAGS="-L$STARLINK/lib"
else
    STAR_CPPFLAGS=
    STAR_FCFLAGS=
    STAR_FFLAGS=
    STAR_LDFLAGS=
fi
AC_SUBST(STAR_CPPFLAGS)
AC_SUBST(STAR_FCFLAGS)
AC_SUBST(STAR_FFLAGS)
AC_SUBST(STAR_LDFLAGS)


_poss_STAR_RESTFP_FIX

# Installation directory options (these are no longer handled
# by _STAR_EXTRADIR_COMMON).  There should be an entry here for each of
# Starlink's special installation locations.
AC_SUBST([stardocsdir],     ['${prefix}/docs'])dnl     documentation
AC_SUBST([staretcdir],      ['${prefix}/etc'])dnl
AC_SUBST([starexamplesdir], ['${prefix}/examples'])dnl
AC_SUBST([starfacsdir],     ['${prefix}/help'])dnl     facilities files
AC_SUBST([starhelpdir],     ['${prefix}/help'])dnl     other help files
AC_SUBST([starnewsdir],     ['${prefix}/news'])dnl

# Certain directories are affected by the $_star_per_package_dir variable;
# if it's true, then add the $PACKAGE_NAME to the directory.
# The directories currently adjusted by this are bin and help;
# there are others: see PWD's message of 2004-02-16
# <http://www.jiscmail.ac.uk/cgi-bin/wa.exe?A2=ind0402&L=stardev&T=0&F=&S=&P=5153>
if $_star_per_package_dirs; then
    bindir="$bindir/$PACKAGE_NAME"
    starhelpdir="$starhelpdir/$PACKAGE_NAME"
    staretcdir="$staretcdir/$PACKAGE_NAME"
    AC_MSG_NOTICE([[STAR_DEFAULTS] has option per-package-dirs:])
    AC_MSG_NOTICE([    bindir=$bindir starhelpdir=$starhelpdir staretcdir=$staretcdir])
    # Note that starfacsdir is unaffected by per-package-dirs -- facility
    # files must always be installed in .../help (this also facilitates
    # changing this installation location in future, to somewhere with a
    # more logical name than .../help).
fi


# Dependency declarations and checks.
# Everything is dependent on starconf, so we don't have to declare that 
# for each package separately.
# STAR_DEPENDENCIES_ATTRIBUTES is currently not used.
STAR_DEPENDENCIES_ATTRIBUTES=''
STAR_DEPENDENCIES_CHILDREN=''
AC_SUBST(STAR_DEPENDENCIES_ATTRIBUTES)
AC_SUBST(STAR_DEPENDENCIES_CHILDREN)

# List of documentation.  See [STAR_LATEX_DOCUMENTATION].
# STAR_DOCUMENTATION is a list of document codes,
STAR_DOCUMENTATION=
AC_SUBST([STAR_DOCUMENTATION])

# Create a PACKAGE_VERSION_INTEGER variable, which contains the
# package's version number as an integer major*1e6+minor*1e3+release.
eval [`echo $VERSION | sed -e 's/\([0-9]*\)[^0-9]*\([0-9]*\)[^0-9]*\([0-9]*\).*/PACKAGE_VERSION_MAJOR=\1; PACKAGE_VERSION_MINOR=\2; PACKAGE_VERSION_RELEASE=\3;/'`]
test -n "$PACKAGE_VERSION_MAJOR"   || PACKAGE_VERSION_MAJOR=0
test -n "$PACKAGE_VERSION_MINOR"   || PACKAGE_VERSION_MINOR=0
test -n "$PACKAGE_VERSION_RELEASE" || PACKAGE_VERSION_RELEASE=0
PACKAGE_VERSION_INTEGER=`expr $PACKAGE_VERSION_MAJOR \* 1000000 + $PACKAGE_VERSION_MINOR \* 1000 + $PACKAGE_VERSION_RELEASE`
AC_SUBST(PACKAGE_VERSION_MAJOR)
AC_SUBST(PACKAGE_VERSION_MINOR)
AC_SUBST(PACKAGE_VERSION_RELEASE)
AC_SUBST(PACKAGE_VERSION_INTEGER)
dnl Don't put this into config.h -- subst a .h file if required.
dnl May change this in future
dnl AC_DEFINE_UNQUOTED([PACKAGE_VERSION_INTEGER], $PACKAGE_VERSION_INTEGER,
dnl                    [Integer version number, in the form major*1e6+minor*1e3+release])

# When we do dependency checking, using the dependencies declared in
# the package's configure.ac, we do so by looking at what tools have
# already been installed in the Starlink tree.  The tree in question
# is to be found under $STARLINK (see above), so we check that a
# package is installed by checking that its manifest can be found in
# $STARLINK/manifests.  We don't AC_SUBST this.
current_MANIFESTS=$STARLINK/manifests

# When we install manifests, however, they should go in the
# installation directory.  Allow this to be defaulted from the environment.
# In particular, if it is set to null in the environment, this will
# suppress the installation of manifests.
: ${STAR_MANIFEST_DIR='$(prefix)/manifests'}
AC_SUBST(STAR_MANIFEST_DIR)

# Each package updates the "starlink.version" file installed into the
# manifests directory. This tracks the last git sha1 checkin for
# the current code state by running the git show on the HEAD.
# Define GIT as the program to run, but allow it to be overridden 
# (most likely by ":" to avoid the overhead).
# Also requires that STAR_SOURCE_ROOT_DIR is defined to locate the
# head of the source tree.
: ${GIT='git'}
if test "${GIT}" = "git"; then
   AC_PATH_PROG(GIT, git)
fi
AC_SUBST(GIT)

: ${STAR_SOURCE_ROOT_DIR=''}
AC_SUBST(STAR_SOURCE_ROOT_DIR)

# Although PACKAGE_VERSION is a default output variable, it isn't
# added as a Makefile variable by default.  We need it below, however,
# so add it now.
AC_SUBST(PACKAGE_VERSION)

# Initialise state of predist/postdist flags (see STAR_PREDIST_SOURCES).
# The value of _star_predist_status must be inherited by any
# ./configure run in a subdirectory, so that we there avoid the predist
# test of starconf.status: in a pre-distribution state, this file must
# be present in the component directory (where we are running
# ./configure), but must not be present in any subdirectory.
_star_predist_status=unknown
PREDIST='#'  # safe default
AC_SUBST(PREDIST)

# pax and/or tar are used in some install targets.
# Note: value-if-not-found should be blank, so this can be tested for.
AC_PATH_PROG(PAX, pax)
AC_PATH_PROGS(TAR, [gnutar tar])

ALL_TARGET=all-am-normal

# Default $prefix.  This is done by the standard autoconf configure, but at
# a slightly later stage than this.  Doing it here, as part of STAR_[]DEFAULTS
# means that the defaulted value of $prefix can be used within the body of
# the configure.ac, for example to pass it to a ./configure in a subdirectory.
test "x$prefix" = xNONE && prefix=$ac_default_prefix
# Let make expand exec_prefix.
test "x$exec_prefix" = xNONE && exec_prefix='${prefix}'
])# STAR_DEFAULTS



# STAR_MESSGEN([msgfile-list])
# ----------------------------
#
# Handle generating message, error, and facility files.
#
# Declare that we will need to use the messgen utility.  This macro
# does not by itself cause the messgen rules to be included in the
# makefile -- that is done by automake, when it sees a
# 'include_MESSAGES' or 'noinst_MESSAGES' variable.
#
# The optional argument is a space-separated list of files, each of
# which has a set of message declarations in it, in the format
# prescribed by the messgen utility.  If this is present, then the
# named files are declared as pre-distribution files (the macro calls
# STAR_PREDIST_SOURCES on them), and so the resulting configure script
# should expect not to find them in an unpacked distribution.  This is
# useful as documentation or as a shortcut for calling the latter
# macro, but recall that it is the presence of the automake
# 'include_MESSAGES' variable which does the work.
#
# The macro may be called more than once if you have more than one
# .msg file in the directory.
#
# The files listed in the '_MESSAGES' variable will often have to be 
# declared as `BUILT_SOURCES'.  
#
# The macro also implicitly declares a `sourceset' dependency on the
# messgen package.
AC_DEFUN([STAR_MESSGEN],
   [#
    $_star_docs_only &&
        AC_MSG_ERROR([STAR[]_MESSGEN in docs-only directory])
    STAR_DECLARE_DEPENDENCIES([sourceset], [messgen])
    m4_ifval([$1], [STAR_PREDIST_SOURCES($1)])
    STAR_CHECK_PROGS(messgen)
])# STAR_MESSGEN


# STAR_PREDIST_SOURCES(source-files)
# ----------------------------------
#
# Give a (space-separated) list of files which should exist only in
# the pre-distribution (ie, repository checkout) state.  If one of
# these is found, then the substitution variable PREDIST is set to a
# blank.  We should find either all of the marker files or none of
# them; if only some of the marker files are found, this is probably
# an error of some type, so warn about it.  This means, by the way,
# that it is the presence or absence of the first marker file which
# determines whether we are in the predist or postdist state, with the
# rest providing consistency checks.
#
# The macro may be called more than once.  Multiple calls are
# equivalent to a single call with all the marker files in the list.
# Automake checks that the files listed here are not in the list of
# distributed files, and issues a warning if they are.
AC_DEFUN([STAR_PREDIST_SOURCES],
[m4_ifval([$1], [], [AC_FATAL([$0: called with no stamp file])])dnl
_star_tmp='$1'
for marker in $_star_tmp
do
    if test -f $marker; then
        _star_predist_marker_present=:
        AC_MSG_NOTICE([found predist marker file $marker])
    else
        _star_predist_marker_present=false
    fi
    case $_star_predist_status in
        unknown)
            if $_star_predist_marker_present; then
                # we do want to build sourceset files
                _star_predist_status=predist
                PREDIST=
                AC_MSG_NOTICE([in pre-distribution state])
            else
                _star_predist_status=postdist
                PREDIST='#'
                AC_MSG_NOTICE([in post-distribution state])
            fi
            ;;
        predist)
            if $_star_predist_marker_present; then
                : OK
            else
                AC_MSG_WARN([Building predist, but marker file $marker is not present])
            fi
            ;;
        postdist)
            if $_star_predist_marker_present; then
                AC_MSG_WARN([In postdistribution state, but predist marker file $marker is present])
            fi
            ;;
        *)
            AC_MSG_ERROR([impossible predist status $_star_predist_status])
            ;;
    esac
done
])# STAR_PREDIST_SOURCES


# STAR_CNF_COMPATIBLE_SYMBOLS
# ---------------------------
#
# Work out what is required to have the Fortran compiler produce
# library symbols which are compatible with those expected by the CNF
# package.  If you are building a library in which C code refers to
# Fortran libraries, then you should call this macro, which possibly
# adjusts the AM_FCFLAGS variable.  That is, if you include cnf.h, you
# should have this macro in the configure.ac.
#
# This macro deals with the following issue.  The cnf.h header
# includes a macro F77_EXTERNAL_NAME which mangles a C name into the
# corresponding name the Fortran compiler would generate; this
# generally means no more than appending a single underscore.  As the
# autoconf documentation for AC_FC_WRAPPERS points out, this is less
# general than it could be, as some Fortrans fold symbols to
# uppercase, and some (in particular g77) add two underscores to
# symbols which already contain one (thus mangling 'ab' to 'ab_', but
# 'a_b' to 'a_b__').  This behaviour would break the F77_EXTERNAL_NAME
# macro, which is used throughout the Starlink code in both cases,
# unless we compiled all the Starlink Fortran libraries in a mode which
# suppressed this second underscore.  Working out how to do that --
# if it's necessary at all -- is what this macro does.
#
# The more restricted interface of F77_EXTERNAL_NAME is, by the way,
# the reason why we cannot simply copy the FC_FUNC definition to the
# cnf.h file as F77_EXTERNAL_NAME: the latter macro is used for
# symbols both with and without an underscore.
#
# If we ever have to migrate the Starlink software to a Fortran which
# does more complicated name mangling, we'll almost certainly have to
# perform more serious surgery on cnf.h, using the results of
# AC_FC_WRAPPERS, along with similar surgery on the code which invokes
# it.
#
# This macro is designed to work with CNF, however it does _not_
# require the cnf.h headers to be installed, because it should remain
# callable at configuration time before _anything_ has been installed.
# In the test code below, we therefore emulate the definition of
# F77_EXTERNAL_NAME in cnf.h, which appends a single underscore.
# to the end of C symbols.
#
AC_DEFUN([STAR_CNF_COMPATIBLE_SYMBOLS],
   [$_star_docs_only &&
        AC_MSG_ERROR([STAR[]_CNF_COMPATIBLE_SYMBOLS in docs-only dir])
    AC_CACHE_CHECK([how to make Fortran and C play nicely],
       [star_cv_cnf_compatible_symbols],
       [AC_REQUIRE([AC_PROG_FC])dnl
        AC_REQUIRE([AC_PROG_CC])dnl
        AC_LANG_PUSH([C])
        AC_LANG_CONFTEST([AC_LANG_SOURCE([
void funcone_() { return; }
void func_two_() { return; }
])])
        if (eval $ac_compile) 2>&5
        then
            mv conftest.$ac_objext c-conftest.$ac_objext
        else
            AC_MSG_ERROR([cannot compile a C program!])
        fi
        AC_LANG_POP(C)
        AC_LANG_PUSH([Fortran])
        AC_LANG_CONFTEST([AC_LANG_SOURCE([
      PROGRAM conftest
      CALL funcone
      CALL func_two
      END
])])
        star_cv_cnf_compatible_symbols=cantlink
        # The only Fortran we (need to) handle at present is
        # g77, which has a -fno-second-underscore option for
        # simplifying the mangling here.  Other Fortrans we've
        # used do only the single-underscore mangling.
        for opt in "" "-fno-second-underscore"
        do
            if $FC $FCFLAGS $opt -o conftest conftest.f c-conftest.$ac_objext 2>&5
            then
                star_cv_cnf_compatible_symbols=$opt
                break
            fi
        done
        AC_LANG_POP([Fortran])
        rm -f conftest* c-conftest*
])
    if test "$star_cv_cnf_compatible_symbols" = cantlink
    then
        AC_MSG_ERROR([cannot work out how])
    else
        STAR_FCFLAGS="$STAR_FCFLAGS $star_cv_cnf_compatible_symbols"
        STAR_FFLAGS="$STAR_FFLAGS $star_cv_cnf_compatible_symbols"
    fi
])# STAR_CNF_COMPATIBLE_SYMBOLS


# STAR_CNF_F2C_COMPATIBLE
# -----------------------
#
# Work out if the compiler is using 'f2c' compatible calling conventions.
#
# The `f2c' calling conventions, used by GNU Fortran compilers, require
# functions that return type REAL to actually return the C type 'double'
# (there is also special handling of COMPLEX returns, but that's not supported
# by CNF). When operating in 'non-f2c' mode such functions return the expected
# C type 'float'.
#
# The effect of this macro is subsitute the variable REAL_FUNCTION_TYPE
# to either float or double as required.
#
# This function is not infallable and will usually return float for GNU
# compilers, as the calling convention seems to not matter on 32-bit platforms
# for the test in use. A stronger test would be to attempt calling a intrinsic
# function, which is supposed to fail. Non-GNU compilers should always
# return float. However, this test is used as it is all that is required.
#
AC_DEFUN([STAR_CNF_F2C_COMPATIBLE],
   [$_star_docs_only &&
        AC_MSG_ERROR([STAR[]_CNF_F2C_SYMBOLS in docs-only dir])
    AC_CACHE_CHECK([if $FC is in strict f2c compatible mode],
       [star_cv_cnf_f2c_compatible],
       [AC_REQUIRE([AC_PROG_FC])dnl
        if test "$ac_cv_fc_compiler_gnu" = yes; then
           AC_REQUIRE([AC_PROG_CC])dnl
           AC_LANG_PUSH([C])
           AC_LANG_CONFTEST([AC_LANG_SOURCE([
float fred_() {
   return 1.0f;
}
])])
           if (eval $ac_compile) 2>&5
           then
               mv conftest.$ac_objext c-conftest.$ac_objext
           else
               AC_MSG_ERROR([cannot compile a C function!])
           fi
           AC_LANG_POP(C)
           AC_LANG_PUSH([Fortran])
           AC_LANG_CONFTEST([AC_LANG_SOURCE([
      PROGRAM F2CTEST
      REAL FRED
      REAL R
      R = FRED()
      IF ( R .NE. 0.0 ) THEN
         WRITE(*,*) 'no'
      ELSE
         WRITE(*,*) 'yes'
      ENDIF
      END
])])
           star_cv_cnf_f2c_compatible=yes
           $FC $FCFLAGS $opt -o conftest conftest.f c-conftest.$ac_objext 2>&5
           if test -r conftest
           then
              star_cv_cnf_f2c_compatible=`eval conftest | sed 's/\ //g'` > /dev/null
           else
              AC_MSG_ERROR([failed to link program]) 
           fi
           AC_LANG_POP([Fortran])
           rm -f conftest* c-conftest*
      else
         # Not a GNU compiler.
         star_cv_cnf_f2c_compatible=no
      fi
])
    if test "$star_cv_cnf_f2c_compatible" = "yes"
    then
        AC_SUBST(REAL_FUNCTION_TYPE, double)
    else
        AC_SUBST(REAL_FUNCTION_TYPE, float)
    fi
])# STAR_CNF_F2C_COMPATIBLE

# STAR_CNF_BLANK_COMMON
# ---------------------
# Define the global symbol used to access the Fortran blank common block.
# Usually under UNIX this is _BLNK__, but gfortran uses __BLNK__, so we
# need to check for that. Gfortran is just detected by being a GNU compiler
# and having "Fortran (GCC) 4.x[x].x[x]" as part of its --version output.
#
# The effect of this macro is to substitute BLANK_COMMON_SYMBOL with
# the expected value.
#
AC_DEFUN([STAR_CNF_BLANK_COMMON],
   [AC_CACHE_CHECK([symbol used for blank common in Fortran],
       [star_cv_blank_common_symbol],
       [AC_REQUIRE([AC_PROG_FC])
       star_cv_blank_common_symbol=_BLNK__
       if test "$ac_cv_fc_compiler_gnu" = yes; then
            if "$FC" --version 2>&1 < /dev/null | grep 'GNU Fortran.*[[4-9]]\.[[0-9]][[0-9]]*\.[[0-9]][[0-9]]*' > /dev/null; then
                star_cv_blank_common_symbol=__BLNK__
            fi
       fi])
    AC_SUBST([BLANK_COMMON_SYMBOL], $star_cv_blank_common_symbol )
])# STAR_CNF_BLANK_COMMON

# STAR_PRM_COMPATIBLE_SYMBOLS
# ---------------------------
#
#  See if any special flags are required to support PRM and the use of the
#  PRM_PAR constants. If a typeless BOZ descriptor is available (usually 'X)
#  then this macro will have no effect, however, if there's no typeless BOZ
#  support any special Fortran compiler flags that are required when using
#  PRM_PAR will be defined as part of the STAR_FCFLAGS and STAR_FFLAGS
#  variables.
#
#  In fact this macro is only currently used for the gfortran and Solaris f95
#  compilers. Gfortran has no typeless BOZ support, so requires that the
#  -fno-range-check flag is set so that assigments to integers can silently
#  overflow (BOZ constants are replaced with their plain integer and floating
#  point equivalents). The Solaris f95 compiler doesn't allow assignments to
#  LOGICAL parameters, so we need to use the -f77 flag.
#
#  In general this macro should be used by all packages that include PRM_PAR,
#  all monoliths are assumed to use this by default. 
#
AC_DEFUN([STAR_PRM_COMPATIBLE_SYMBOLS],
   [$_star_docs_only &&
        AC_MSG_ERROR([STAR[]_PRM_COMPATIBLE_SYMBOLS in docs-only dir])
    AC_CACHE_CHECK([how to make compiler accept PRM constants],
       [star_cv_prm_compatible_symbols],
       [star_cv_prm_compatible_symbols="nocheck"
        AC_MSG_NOTICE([ ])
        AC_FC_HAVE_TYPELESS_BOZ 2>&5
        if test $ac_cv_fc_have_typeless_boz = no; then
           AC_FC_HAVE_OLD_TYPELESS_BOZ 2>&5
           if test $ac_cv_fc_have_old_typeless_boz = no; then
              #  Test if -f77 works. Note need to clear the cached variables
              #  for these tests.
              unset ac_cv_fc_have_typeless_boz
              unset ac_cv_fc_have_old_typeless_boz
              old_FCFLAGS="$FCFLAGS"
              FCFLAGS="-f77 $FCFLAGS"
              AC_FC_HAVE_TYPELESS_BOZ 2>&5
              if test $ac_cv_fc_have_typeless_boz = no; then
                 AC_FC_HAVE_OLD_TYPELESS_BOZ 2>&5
                 if test $ac_cv_fc_have_old_typeless_boz = no; then
                    star_cv_prm_compatible_symbols="nocheck"
                 else
                    star_cv_prm_compatible_symbols="-f77"
                 fi
              else
                 star_cv_prm_compatible_symbols="-f77"
              fi
              FCFLAGS="$old_FCFLAGS"
              if test "$star_cv_prm_compatible_symbols" = "nocheck"; then
                 #  Test if "-fno-range-check" works.
                 AC_REQUIRE([AC_PROG_FC])dnl
                 AC_LANG_PUSH([Fortran])
                 AC_LANG_CONFTEST([AC_LANG_SOURCE([
      PROGRAM conftest
      INTEGER*2 VAL__BADUW
      PARAMETER ( VAL__BADUW = 65535 )
      BYTE VAL__BADUB
      PARAMETER ( VAL__BADUB = 255 )
      END
])])
                 if $FC -c $FCFLAGS -fno-range-check -o conftest conftest.f 2>&5
                 then
                    star_cv_prm_compatible_symbols="-fno-range-check"
                 fi              
                 AC_LANG_POP([Fortran])
                 rm -f conftest.f
              fi
           else
              star_cv_prm_compatible_symbols=""
           fi
         else
            star_cv_prm_compatible_symbols=""
         fi])
         if test "$star_cv_prm_compatible_symbols" = "nocheck"; then
            AC_MSG_ERROR([cannot work out how])
         else
            STAR_FCFLAGS="$STAR_FCFLAGS $star_cv_prm_compatible_symbols"
            STAR_FFLAGS="$STAR_FFLAGS $star_cv_prm_compatible_symbols"
         fi
])# STAR_PRM_COMPATIBLE_SYMBOLS

# STAR_CNF_TRAIL_TYPE
# -------------------
#
# Work out what type to use for the trailing lengths of character strings
# passed from Fortran to C. See the "TRAIL" descriptions in SUN/209.
#
# For most compilers the maximum length of a string is limited to a 32bit
# unsigned int, but for others, this can be a 64bit unsigned long. Currently
# the only compilers with 64bit strings are 64bit Intel fortran and
# Solaris studio12 with -m64.
#
# The test is only performed for 64bit compilers, all others are assumed
# to use 32bit lengths. Various attempts to trap this issue permanently 
# using a test program have failed (especially for the Intel compiler), so the
# actual test is to check for a known 64 bit compiler first and then try a
# program that has had some success. Note no GNU compilers seem to have this
# problem so they are never tested.
#
# The side-effect of this macro is to substitute TRAIL_TYPE with
# the derived value and define TRAIL_TYPE. See "f77.h" in CNF.
#
AC_DEFUN([STAR_CNF_TRAIL_TYPE],
   [AC_CHECK_SIZEOF(void*)dnl
    AC_FC_HAVE_PERCENTLOC dnl
    AC_CACHE_CHECK([type used for Fortran string lengths],
       [star_cv_cnf_trail_type],
       [if test "$ac_cv_sizeof_voidp" = 8 -a "$ac_cv_fc_compiler_gnu" = no; then
           if "$FC" -V 2>&1 < /dev/null | grep 'Intel.*64' > /dev/null; then
              star_cv_cnf_trail_type=long
           elif "$FC" -V 2>&1 < /dev/null | grep 'Sun.*Fortran' > /dev/null; then
              star_cv_cnf_trail_type=long
           else
              AC_REQUIRE([AC_PROG_FC])dnl
              AC_LANG_PUSH([Fortran])
              if test "$ac_cv_fc_have_percentloc" = yes; then
                 FORTRAN_GETLOC='%loc'
              else 
                 FORTRAN_GETLOC='loc'
              fi
              AC_LANG_CONFTEST([AC_LANG_SOURCE([
      program conftest

C  checks passing 4 byte character string lengths on 64bit compiler.

      integer*8 ip1, ip2
      integer*4 l1, l2
      integer dummy1, dummy2
      real dummy3, dummy4
      double precision dummy5, dummy6

      character str1*(1024)
      character str2*(2048)

      ip1 = $FORTRAN_GETLOC (str1)
      ip2 = $FORTRAN_GETLOC (str2)

      l1 = 1024
      l2 = 2048

      call report( dummy1, dummy2, %val(ip1), dummy3, dummy4,
     :             %val(ip2), dummy5, dummy6, 
     :             %val(l1), %val(l2) )

      end

      subroutine report( dummy1, dummy2, str1, dummy3, dummy4,
     :                   str2, dummy5, dummy6 )
      integer dummy1, dummy2
      real dummy3, dummy4
      double precision dummy5, dummy6

      character*(*) str1
      character*(*) str2

      if ( [len(str1)] .eq. 1024 .and. [len(str2)] .eq. 2048 ) then
         print *, 'int'
      else
         print *, 'long'
      endif
      end
])])
              star_cv_cnf_trail_type=int
              $FC $FCFLAGS $opt -o conftest conftest.f 2>&5
              if test -r conftest
              then
                 star_cv_cnf_trail_type=`eval conftest | sed 's/\ //g'` > /dev/null
              else
                 AC_MSG_ERROR([failed to link program]) 
              fi
              rm -f conftest*
              AC_LANG_POP([Fortran])
           fi
        else
dnl  sizeof(void *) != 8 or GNU so no problems.
           star_cv_cnf_trail_type=int
        fi
])
    AC_SUBST([TRAIL_TYPE], $star_cv_cnf_trail_type )
    AC_DEFINE_UNQUOTED([TRAIL_TYPE], $star_cv_cnf_trail_type, 
                       [Type of Fortran CNF TRAIL argument] )
])# STAR_CNF_TRAIL_TYPE

# STAR_PATH_TCLTK([minversion=0], [options=''])
# ---------------------------------------------
#
# Finds a tclsh and wish, and the associated libraries.  Sets output variable
# TCL_CFLAGS to the C compiler flags necessary to compile with Tcl, TCL_LIBS
# to the required library flags, and TCLSH to the full path of the tclsh
# executable, TCL_PREFIX to the installation root and TCL_LD_SEARCH_FLAGS
# to the default search path for loading the shareable library; if Tk is  
# requested, it similarly sets TK_CFLAGS, TK_LIBS and WISH.  Define the 
# cpp variable TCL_MISSING to 1 if Tcl is not available.  Similar to 
# macro AC_PATH_XTRA.
#
# If argument MINVERSION is present, it specifies the minimum Tcl/Tk
# version number required.
#
# The macro searches first in the path, and
# then in a selection of platform-specific standard locations.  The
# configure option --with-tcl allows you to provide a path to a tclsh
# binary, which is put at the head of the list of locations to search.
# Option --without-tcl suppresses the search, and results in no
# variables being substituted.
#
# If the argument OPTIONS is present, it is a space-separated list of
# the words 'tk' or 'itcl'.  If one or both of these is present, then
# the macro will find a Tcl location which also has Tk or itcl
# installed (note that the itcl test doesn't do anything at present).
AC_DEFUN([STAR_PATH_TCLTK],
    [_star_use_tcl=:
     AC_ARG_WITH([tcl],
                 AS_HELP_STRING([--with-tcl],
                                [give path to tclsh (dir which contains binary)]),
                 [if test "X$withval" = Xno; then
                      _star_use_tcl=false
                  elif test "X$withval" = Xyes; then
                      _star_use_tcl=:
                  else
                      _star_use_tcl=:
                      _star_try_tcldir=$withval
                  fi])
     if $_star_use_tcl; then
         _star_searchfor=Tcl
         if expr "x m4_ifval([$2], [$2], []) " : 'x.* tk ' >/dev/null; then
             search_tk=:
             _star_searchfor="$_star_searchfor/Tk"
         else
             search_tk=false
         fi
         if expr "x m4_ifval([$2], [$2], []) " : 'x.* itcl ' >/dev/null; then
             search_itcl=:
             _star_searchfor="$_star_searchfor/itcl"
             echo "Searching for itcl does nothing so far!"
         else
             search_itcl=false
         fi
         AC_MSG_CHECKING([where to find $_star_searchfor m4_ifval([$1], [$1+], [(any version)])])
         AC_CACHE_VAL([star_cv_settcldir],
             [star_cv_settcldir=unknown
              reqversint=`echo m4_ifval([$1], [$1], 0.0)-0-0 | [sed 's/\([0-9]*\)[^0-9]*\([0-9]*\)[^0-9]*\([0-9]*\).*/10000 \1* 100 \2*+ \3+p/']|dc`
              tclsources=`echo $PATH | sed "s/$PATH_SEPARATOR/ /g"`
              stdsources='
dnl  Search in /usr and /usr/local at least
/usr/bin
/usr/local/bin
dnl  /opt/local and /sw are the default installation locations for OpenDarwin
dnl  and Fink on OSX
/opt/local/bin
/sw/bin'
              for d in $_star_try_tcldir $STARCONF_DEFAULT_STARLINK/bin $tclsources $stdsources
              do
                  locok=:
                  if test -d $d; then
                      tcldir=`cd $d/..; pwd`
                      test -f $d/tclsh -a -f $tcldir/include/tcl.h || locok=false
                  else
                      locok=false
                  fi
                  if $locok && $search_tk; then
                      test -f $d/wish -a -f $tcldir/include/tk.h || locok=false
                  fi
                  if $locok && $search_itcl; then
                      test -f $tcldir/lib/libitcl.aXXX || locok=false
                  fi
                  if $locok; then
                       if test ! -f $tcldir/lib/tclConfig.sh; then
                           echo "$tcldir/lib/tclConfig.sh unexpectedly missing"
                           break
                       fi
                       if $search_tk && test ! -f $tcldir/lib/tkConfig.sh; then
                           echo "$tcldir/lib/tkConfig.sh unexpectedly missing"
                           break
                       fi
                       rm -f conftest.results
                       # Run in a subshell, to isolate settings in tclConfig.sh
                       # Send output to conftest.results, and return
                       # 0 if all is ok
                       (
    . $tcldir/lib/tclConfig.sh
    if $search_tk; then
        . $tcldir/lib/tkConfig.sh
    fi
    tclversint=`[echo $TCL_VERSION$TCL_PATCH_LEVEL-0-0 | sed 's/\([0-9]*\)[^0-9]*\([0-9]*\)[^0-9]*\([0-9]*\).*/10000 \1* 100 \2*+ \3+p/'|dc]`
    if test $tclversint -gt $reqversint; then
        # New enough version.

        # Dereference the tclsh and wish links -- the "->" _is_ standard,
        # mandated by POSIX.
        lslink=`ls -l $tcldir/bin/tclsh`
        tclsh_loc=`expr "x$lslink" : "x.*-> *\(.*\)"`
        if test -n "$tclsh_loc" -a -x "$tclsh_loc"; then
           : OK
        elif test -x "$tcldir/bin/tclsh"; then
            # Odd: either .../bin/tclsh isn't a link, or it doesn't point to an
            # executable.  But .../bin/tclsh is OK, so use that.
            tclsh_loc="$tcldir/bin/tclsh"
        else
            # This really shouldn't happen, since we checked above that
            # $d/tclsh was executable.  Still, it clearly has happened,
            # so don't go mad.
            echo "Warning: found Tcl libraries, but not tclsh!" >&2
            tclsh_loc=
        fi

        res="_star_tcldir=$tcldir;"

        # Make the TCL version number available.
        res="$res TCL_VERSION=\"$TCL_VERSION\";"

        # Export the TCL_PREFIX value.
        res="$res TCL_PREFIX=\"$TCL_PREFIX\";"

        # Export the TCL_LD_SEARCH_FLAGS value (need LIB_RUNTIME_DIR
        # which is part of the symbol).
        res="$res LIB_RUNTIME_DIR=\"$TCL_PREFIX/lib\";"
        res="$res TCL_LD_SEARCH_FLAGS=\"$TCL_LD_SEARCH_FLAGS\";"

        # These envs include $TCL_DBGX -- expand this out.
        eval "I=\"$TCL_INCLUDE_SPEC\"; L=\"$TCL_LIB_SPEC\""
        res="$res TCL_CFLAGS=\"$I\"; TCL_LIBS=\"$L\"; TCLSH=\"$tclsh_loc\";"

        if $search_tk; then
            # Same for wish
            lslink=`ls -l $tcldir/bin/wish`
            wish_loc=`expr "x$lslink" : "x.*-> *\(.*\)"`
            if test -n "$wish_loc" -a -x "$wish_loc"; then
                : OK
            elif test -x "$tcldir/bin/wish"; then
                wish_loc="$tcldir/bin/wish"
            else
                echo "Warning: found Tk libraries, but not wish!" >&2
                wish_loc=
            fi
            # These envs potentially include $TK_DBGX -- expand this out.
            eval "I=\"$TK_XINCLUDES\"; L=\"$TK_LIB_SPEC\""
            res="$res TK_CFLAGS=\"$I\"; TK_LIBS=\"$L\"; WISH=\"$wish_loc\";"
        fi

        # similarly for $search_itcl

        echo $res >conftest.results
        status=0
    else
        msg="$tcldir: found Tcl-$TCL_VERSION$TCL_PATCH_LEVEL"
        if $search_tk; then
            msg="$msg, Tk-$TK_VERSION$TK_PATCH_LEVEL"
        fi
        echo "$msg: older than required" >&2
        status=1
    fi
    exit $status
                       )
                       teststat=$?
                       if test $teststat = 0; then
                           star_cv_settcldir=`cat conftest.results`
                       fi
                       if test "$star_cv_settcldir" != unknown; then
                           break
                       fi
                  fi # $locok
              done])

        if test "$star_cv_settcldir" = unknown; then
            AC_MSG_RESULT(unknown)
        else
            eval $star_cv_settcldir
            AC_MSG_RESULT($_star_tcldir)
        fi
    else # $_star_use_tcl
        AC_MSG_WARN(Compiling without Tcl/Tk)
    fi # $_star_use_tcl

    if $_star_use_tcl && test "$star_cv_settcldir" != unknown; then
        :
    else
        AC_DEFINE(TCL_MISSING, 1,
                  [Define to 1 if no Tcl/Tk libraries can be found])
    fi

    AC_SUBST(TCL_VERSION)

    AC_SUBST(TCL_PREFIX)

    AC_SUBST(TCL_LD_SEARCH_FLAGS)
    AC_SUBST(TCL_CFLAGS)
    AC_SUBST(TCL_LIBS)
    AC_SUBST(TCLSH)

    AC_SUBST(TK_CFLAGS)
    AC_SUBST(TK_LIBS)
    AC_SUBST(WISH)

    # add itcl variables here

])# STAR_PATH_TCLTK


# STAR_LATEX_DOCUMENTATION(documentcode, [targets])
# -------------------------------------------------
# Generate the standard makefile targets to handle LaTeX documentation
# source.  The parameter documentcode should be something like
# `sun123' -- it should not include any .tex extension.
#
# The second, optional, argument gives an explicit list of the targets
# which are build.  If this is _not_ specified, then a standard list
# is used (.tex, .ps and .tar_htx) and corresponding rules added to
# the generated makefile.  If it is specified, it must be non-null,
# and its value is a list of files which are to be added to the
# distribution, and no extra Makefile rules are added.  Thus if users need
# anything complicated done, they should use this second argument and
# provide rules for satisfying the given targets.
#
# In the latter case, the .tex -> htx_tar rule is still emitted, so
# you can use it, but it requires the substitution variable
# @STAR[]2HTML@, and so if you _do_ use it, you will have to make that
# available, either through [STAR_CHECK_PROGS(star2html)] or otherwise.
AC_DEFUN([STAR_LATEX_DOCUMENTATION],
   [m4_ifval([$1], [], [AC_FATAL([$0: called with no documentcode])])dnl
    m4_if(m4_bregexp([$1], [^ *\([a-z][a-z]*[0-9]*/? *\)*$]),
          [0],
          [],
          [AC_FATAL([$0: bad doccode in $1 -- must be eg sun123 or sun123/])])
    STAR_DOCUMENTATION="$STAR_DOCUMENTATION m4_bpatsubst([$1],[/])"
    m4_ifval([$2],
       [dnl non-empty second argument -- just add to variable
        m4_if(m4_bregexp([$1], [/]), -1,
              [],
              [AC_FATAL([$0: do not mix non-null second argument and .../ syntax])])
        if $_star_build_docs; then
            STAR@&t@_LATEX_DOCUMENTATION="$2"
        fi
        ],
       [dnl second arg empty -- use defaults
        if $_star_build_docs; then
            AC_FOREACH([DocCode], [$1],
               [m4_if(m4_bregexp(DocCode,[/]), -1,
                      [STAR@&t@_LATEX_DOCUMENTATION="$STAR@&t@_LATEX_DOCUMENTATION DocCode.tex DocCode.ps DocCode.htx_tar"
],
                      [m4_define([_T], m4_bpatsubst(DocCode,[/]))dnl
                       STAR_LATEX_DOCUMENTATION_[]_STAR_UPCASE(_T)="_T.tex _T.ps _T.htx_tar"
                       AC_SUBST(STAR_LATEX_DOCUMENTATION_[]_STAR_UPCASE(_T))])])
        fi
        STAR_DECLARE_DEPENDENCIES([sourceset], [star2html])
        STAR_CHECK_PROGS([star2html])
       ])
    if $_star_build_docs; then
        : ${LATEX2DVI='$$LATEX "\\batchmode\\input $$[]1" && $$LATEX "\\batchmode\\input $$[]1"'}
        AC_SUBST(LATEX2DVI)
    else
        AC_MSG_WARN([not installing docs $1])
    fi
    AC_SUBST([STAR@&t@_LATEX_DOCUMENTATION])dnl
])# STAR_LATEX_DOCUMENTATION

# STAR_XML_DOCUMENTATION(documentcode, [targets])
# -----------------------------------------------
# Generate the standard makefile targets to handle XML documentation
# source.  The parameter documentcode should be something like
# `sun123' -- it should not include any .xml extension.  For each of the
# documentcodes which does not end with a slash, append
# <documentcode>.{texml_tar,htx_tar,ps} to STAR_XML_DOCUMENTATION;
# for each which does end with a slash, define instead the
# variable STAR_XML_DOCUMENTATION_<documentcode>.  In either case,
# append the documentcode to STAR_DOCUMENTATION
#
# The second, optional, argument gives an explicit list of the targets
# which are build.  If this is _not_ specified, then a standard list
# is used (.texml_tar, .ps and .htx_tar) and corresponding rules added to
# the generated makefile.  If it is specified, it must be non-null,
# and its value is a list of files which are to be added to the
# distribution, and no extra Makefile rules are added.  Thus if users need
# anything complicated done, they should use this second argument and
# provide rules for satisfying the given targets.
#
# In the latter case, the .tex -> htx_tar rule is still emitted, so
# you can use it, but it requires the substitution variables JADE, SGMLNORM,
# and SGMLKIT_HOME.  This is rather inconvenient, and it is fortunate that
# you almost certainly won't need to use this.
AC_DEFUN([STAR_XML_DOCUMENTATION],
   [m4_ifval([$1], [], [AC_FATAL([$0: called with no documentcode])])dnl
    m4_if(m4_bregexp([$1], [^ *\([a-z][a-z]*[0-9]*/? *\)*$]),
          [0],
          [],
          [AC_FATAL([$0: bad doccode in $1 -- must be eg sun123 or sun123/])])
    STAR_DOCUMENTATION="$STAR_DOCUMENTATION m4_bpatsubst([$1],[/])"
    m4_ifval([$2],
       [dnl non-empty second argument -- just add to variable
        m4_if(m4_bregexp([$1], [/]), -1,
              [],
              [AC_FATAL([$0: do not mix non-null second argument and .../ syntax])])
        if $_star_build_docs; then
            STAR@&t@_XML_DOCUMENTATION="$2"
        fi
        ],
       [dnl second arg empty -- use defaults
        if $_star_build_docs; then
            do_the_build=  # blank if we're to go ahead, string expl. otherwise
            AC_PATH_PROGS(JADE, [openjade jade], NOJADE)
            AC_PATH_PROGS(SGMLNORM, [osgmlnorm sgmlnorm], NOSGMLNORM)
            STAR_CHECK_PROGS([sgml2docs])
            if test "$JADE" = NOJADE -o "$SGMLNORM" = NOSGMLNORM -o "$SGML2DOCS" = "sgml2docs"; then
                if $_star_docs_only; then
                    # Building documentation is all we're supposed to do,
                    # and we can't, so suppress further building.
                    do_the_build=\
"This docs-only component requires Jade, sgmlnorm and sgml2docs.  
        All I could find were:
        $JADE for Jade, 
        $SGMLNORM for sgmlnorm and 
        $SGML2DOCS for sgml2docs (requires full path).
        Your system may have a way to install Jade and sgmlnorm as a package,
        sgml2docs is part of the SGMLKIT package."
                else
                    AC_MSG_WARN([can't find (open)jade + (o)sgmlnorm + sgml2docs -- skipping XML documentation $1])
                fi
            else
                # Test Jade version
                AC_MSG_CHECKING([version of $JADE (need 1.3.2 or better)])
                $JADE -v </dev/null >conftest.version 2>&1
                JADEVERS=[`sed -n '/:I:.*[Jj]ade.*version/{
    s/.*:I://
    s/[^0-9][^0-9]*/ /gp
}' conftest.version`]
                # The following converts space-separated integers to a single
                # one.  It's perhaps a leeettle funkier than necessary...
                VERSINT=[`echo "[Ss[z0<a]x]sa $JADEVERS 0 0 0 lax Ls100* Ls+100* Ls+p" | dc`]
                if test $VERSINT -ge 10302; then
                  AC_MSG_RESULT([ok])
                  AC_FOREACH([DocCode], [$1],
                   [m4_if(m4_bregexp(DocCode,[/]), -1,
                          [STAR@&t@_XML_DOCUMENTATION="$STAR@&t@_XML_DOCUMENTATION DocCode.texml_tar DocCode.htx_tar DocCode.ps DocCode.pdf"
],
                          [m4_define([_T], m4_bpatsubst(DocCode,[/]))dnl
                           STAR_XML_DOCUMENTATION_[]_STAR_UPCASE(_T)="_T.texml_tar _T.htx_tar _T.ps _T.pdf"
                           AC_SUBST(STAR_XML_DOCUMENTATION_[]_STAR_UPCASE(_T))])])
                else
                    AC_MSG_RESULT([too old])
                    do_the_build="Your openjade is version $JADEVERS; need 1.3.2 or better"
                fi
                SGMLKIT_HOME=$prefix/lib/sgmlkit
                AC_SUBST(SGMLKIT_HOME)
            fi
            STAR_SUPPRESS_BUILD_IF(test -n "$do_the_build", [$do_the_build])
        fi
        STAR_DECLARE_DEPENDENCIES([sourceset], [sgmlkit])
       ])
    if $_star_build_docs; then
        : ${LATEX2DVI='$$LATEX "\\batchmode\\input $$[]1" && $$LATEX "\\batchmode\\input $$[]1"'}
        AC_SUBST(LATEX2DVI)
    else
        AC_MSG_WARN([not installing docs $1])
    fi
    AC_SUBST([STAR@&t@_XML_DOCUMENTATION])dnl
])# STAR_XML_DOCUMENTATION
            


# STAR_CHECK_PROGS(progs-to-check-for, [component=''])
# --------------------------------------------------
#
# For each of the programs in PROGS-TO-CHECK-FOR, define a variable
# whose name is the upcased version of the program name, and whose
# value is the full path to that program, or the expected installation
# location of that program if no absolute path can be found.  Because
# of this default behaviour, this macro should _only_ be used for
# locating Starlink programs such as messgen or alink, and not as a
# general replacement for AC_CHECK_PROG.  Any characters in the
# program outside of the set of alphanumerics and underscores are
# normalised to underscores.
#
# The optional second argument gives the name of the component containing
# the program in question.  Some packages install their binaries in
# package-specific directories, and this argument allows this macro to
# look there as well.
#
# For example:
#     STAR_CHECK_PROGS(messgen)
# would define the variable MESSGEN to have the full path to the
# messgen application, and 
#     STAR_CHECK_PROGS(prolat, sst)
# would define the variable PROLAT to have the path to the prolat
# application within the sst component.
#
# Calls AC_SUBST and AC_ARG_VAR on the generated variable name.  This
# macro does _not_ automatically declare a configure dependency on any
# component specified in the second argument.  These dependencies should
# be kept to an absolute minimum, and therefore any such dependencies
# must be declared obviously and explicitly, with rationale.
#
# The behaviour described below, for the result when the required program
# is not found, is not final, and may change.  The documentation below is
# contradictory, and should be regarded merely as a rather confused
# discussion of the issues.  The current behaviour is that when the progam
# is not found, the variable is defined to be the program's name without
# any path at all.
#
# This is the analogue of AC_CHECK_PROG, except that: (1) the variable
# name defaults to the program name, (2) the variable value if the
# program is not found is the path to the anticipated installation
# location of the program, so that the macro does not fail in this
# case.  This is useful for locating Starlink programs, as it means we
# can use this macro to produce absolute paths to programs, even
# before they have been installed (in this case we are presumably
# doing a top-level configure of the Starlink tree, and the Makefile
# will ensure that the required files are installed before the current
# package actually uses it.  NB: (2) is not true at present.
#
# The current value of the PATH variable is augmented by the location
# of the binary installation directory, using the current default
# value of the prefix (not ideal, since this may in principle change
# when the component being configured is installed, but it's the best
# we can do at configure time); and by the $STARLINK/bin directory.
#
# The default, if the program isn't in the augmented path, is the path
# to the starconf-finder program if that's available, and the bare
# program-name otherwise.  Is this the best default?  Would just 
# program-name be better?  The program may not be in the augmented
# path for two reasons: (1) we are doing the global configuration done
# during bootstrapping, and noting has been installed yet; or (2) the
# program is one of those installed in a subdirectory of the
# `bindir'.  In case (2), there's not a lot we can do, short of
# grubbing round manifest files at some point, but the
# starconf-finder, which is the eventual default, knows about this
# case, and could take care of it.
#
# No, I've changed my mind again.  If the program isn't found, then
# simply have the AC_PATH_PROG default to bare ProgramName.  This is
# probably adequate, and if so probably more robust than relying on
# more and more layers of indirection.  We probably will need to
# revisit this.  Again.
AC_DEFUN([STAR_CHECK_PROGS],
         [eval default_bindir=`echo $bindir | sed 's,\${exec_prefix},$ac_default_prefix,'`
          AC_FOREACH([ProgramName], [$1],
                     [m4_define([star_prog],
                                _STAR_UPCASE(m4_bpatsubst(ProgramName,
                                                          [[^0-9a-zA-Z_]], 
                                                          [_])))
                      AC_PATH_PROG(star_prog,
                                   ProgramName,
                                   ProgramName,
[$STARLINK/Perl/bin:]dnl
[$STARLINK/starjava/bin:]dnl
[$STARLINK/bin:]m4_ifval([$2],[$STARLINK/bin/$2:],)dnl
[$default_bindir:]m4_ifval([$2],[$default_bindir/$2:],)dnl
[$PATH])
                      AC_ARG_VAR(star_prog,
                                 [Location of the ]ProgramName[ application])])
])# STAR_CHECK_PROGS


# STAR_SPECIAL_INSTALL_COMMAND(cmd)
# ---------------------------------
# Declare a special install command.  Note that we do not examine the
# actual command here -- that is done by automake.  All we do is find
# a way of copying a directory tree, preserving symlinks, as used by
# the install targets in automake/lib/am/install.am.  Try 'cp -R' and
# variants, then pax, and if both fail, collapse.
dnl Link test is `test -h': more portable than -L, according to autoconf notes.
dnl `cp --no-dereference' is GNU cp: -P gives a compatibility warning.
dnl Include broken link in test: some cp fail to copy these (OSX 10.2, Sol9).
dnl Option -f is probably a good plan, but no failures spotted so far.
dnl In pax, `-p e' fails with broken links; `-p p' is OK.
AC_DEFUN([STAR_SPECIAL_INSTALL_COMMAND],
   [AC_REQUIRE([AC_PROG_LN_S])dnl
    AC_PATH_PROG(CP, cp)dnl
    AC_PATH_PROG(PAX, pax)
    AC_CACHE_CHECK([how to do a recursive directory copy],
                   [star_cv_cp_r],
                   [rm -Rf conftest*
                    mkdir conftest-d1 conftest-d2
                    mkdir conftest-d1/d
                    date >conftest-d1/d/f
                    (cd conftest-d1/d; $LN_S f l; $LN_S x broken)
                    if test ! -h conftest-d1/d/l; then
                        # We don't have links!  So plain cp -R will do
                        star_cv_cp_r="$CP -R"
                    else
                        star_cv_cp_r=
                        for try in "$CP -R --no-dereference -p -f" "$CP -R -P -p -f" "$CP -R -P -p" "$CP -R -p" "${PAX-false} -r -w -p p"
                        do
                            rm -Rf conftest-d2/*
                            if (cd conftest-d1; $try . ../conftest-d2 2>/dev/null); then
                                if test -h conftest-d2/d/l -a -h conftest-d2/d/broken; then
                                    star_cv_cp_r="$try"
                                    break
                                fi
                            fi
                        done
                    fi
                    rm -Rf conftest*])
    if test -z "$star_cv_cp_r"; then
        AC_MSG_ERROR([unable to find working cp or pax])
    fi
    AC_SUBST(CP_RECURSIVE, $star_cv_cp_r)dnl
])# STAR_SPECIAL_INSTALL_COMMAND
    

# STAR_MONOLITHS
# --------------
# Declare that we will be creating monoliths.  This does whatever
# configuration is necessary to handle these.
#
# Note that the declarations done in the Makefile.am, declaring the
# name of the monolith and the names and source files of the tasks,
# are slightly redundant inasmuch as some of that information could be
# implied.  However, this is required to be explicit for clarity and
# consistency, and so accomodate the (currently unexploited)
# possibility that the tasks and .ifl files longer have the
# one-task-per-file relationship they have now.
AC_DEFUN([STAR_MONOLITHS],
         [$_star_docs_only &&
             AC_MSG_ERROR([STAR[]_MONOLITHS in docs-only directory])
          dnl Installation in monoliths.am uses $(LN_S)
          AC_REQUIRE([AC_PROG_LN_S])dnl

          # To build monoliths, we need both compifl to build the .ifc
          # files (in the parsecon component), and alink
          # to link the monoliths (in dtask).  Both are now part of
          # the pcs component.
          STAR_DECLARE_DEPENDENCIES(build, [pcs])

          # So try to find alink and compifl.
          STAR_CHECK_PROGS([compifl alink])

          # When we're building monoliths, we will almost certainly be
          # using Fortran, and so we might as well include this,
          # partly in case the user forgets, but also because this is
          # reasonably part of the default setup required for monoliths.
          STAR_CNF_COMPATIBLE_SYMBOLS
          STAR_PRM_COMPATIBLE_SYMBOLS
])# STAR_MONOLITHS


# STAR_HELP_FILES(helpfiles)
# --------------------------
# Declare a list of files to be installed into the Starlink help
# directory.  This can be used both internally and in user
# configure.ac files.
AC_DEFUN([STAR_HELP_FILES],
	 [_STAR_EXTRADIR_COMMON([help], [$1])])


# STAR_ETC_FILES(etcfiles)
# ------------------------
# Declare a list of files to be installed into the Starlink etc
# directory.  This can be used both internally and in user
# configure.ac files.
AC_DEFUN([STAR_ETC_FILES],
         [_STAR_EXTRADIR_COMMON([etc], [$1])])


# STAR_DOCS_FILES(docfiles)
# -------------------------
# Declare a list of files to be installed into the Starlink
# documentation directory.  This can be used both internally and in
# user configure.ac files.
AC_DEFUN([STAR_DOCS_FILES],
         [_STAR_EXTRADIR_COMMON([docs], [$1])])


# STAR_EXAMPLES_FILES(examplesfiles)
# ----------------------------------
# Declare a list of files to be installed into the Starlink
# examples directory.  This can be used both internally and in
# user configure.ac files.
AC_DEFUN([STAR_EXAMPLES_FILES],
         [_STAR_EXTRADIR_COMMON([examples], [$1])])


# STAR_DECLARE_DEPENDENCIES(type, deplist, option='')
# ---------------------------------------------------
#
# Declare dependencies of this component.  The TYPE is one of
# `sourceset', `build', `link', `use', `test' or `configure', and the
# DEPLIST is a space separated list of component names, which this
# component depends on in the given way.
#
# -- Sourceset dependencies are those components which must be
# installed in order to build the complete set of sources, either for
# building or for distribution.  This includes documentation, so it
# would include star2html as well as messgen.
#
# -- Build dependencies are those which are required in order to build
# this component.  This typically means include files, but if part of
# the component is an executable file (such as compifl within the
# parsecon component), then that's a build dependence also (but see
# the discussion of `option', below).  You may not have two components
# which have a build dependency on each other, since that would mean
# that each would have to be built before the other, which is
# impossible.
#
# -- Link dependencies are those required to link against the
# libraries in a component.  That means all the libraries that this
# component's libraries use.  These are not necessarily build
# dependencies, since if you are building a library, any called
# libraries don't have to be present in order to build this library;
# you can have two components which have mutual link dependencies.  If
# you are building an application, however, then all its link
# dependencies will actually be build dependencies and should be
# declared as such.  In other words, the distinction between build and
# link dependencies is important only for library components.
#
# -- Use dependencies are those which are required in order for the
# component to be used by something else, after it has been built and
# installed.  For example a library which called another application
# as part of its functionality would have only a use dependency on the
# component which contained that application.  If no use dependencies
# are declared, we take the use dependencies to be the same as the
# link dependencies.
#
# -- Test dependencies are those which are required in order to run
# any regression tests which come with the component.  It's generally
# a good idea to avoid making this a larger set than the use
# dependencies, but sometimes this is unavoidable.  If no test
# dependencies are declared, we take the test dependencies to be the
# same as the use dependencies.
#
# -- Configure dependencies are those which must be satisfied before
# this component can be successfully configured.  In this case, we
# also check that the corresponding manifest files have been installed
# in current_MANIFESTS, and if not exit with a message, and the suggestion
# that the user runs 'make configure-deps'.
#
# The point of this is that different dependencies are required at
# different times.  The set of dependencies in the master makefile is
# composed of all the `sourceset' and `build' dependencies, but not
# `link' or `use' dependencies, and since the core Starlink libraries
# are closely interdependent, the set of `build' dependencies needs to
# be kept as small as possible in order to avoid circularities (that
# is, A depending on B, which depends, possibly indirectly, on A).
#
# All these relationships are transitive: if A has a build dependency
# on B, and B has one on C, then A has a build dependency on C.  You
# can augment this by using the final `option' argument: if, in
# component A's declaration element you say
# STAR_DECLARE_DEPENDENCIES(build, B, link), then you declare that A
# has a build-time dependency on B, but that (presumably because you
# are building an application within a component which is mostly
# libraries) you need to link against B, so component A has a
# dependency on all of B's _link_ dependencies, not just its build
# dependencies.  This is (I believe) the only case where this `option'
# attribute is useful, though it is legal for each of the dependency types.
#
# You need only declare direct dependencies.  If package A depends on
# package B, which depends in turn on package C, then package A need
# not declare a dependency on C.
#
# The macro may be called more than once.  The results of this macro
# are expressed in the file component.xml in the component directory.
AC_DEFUN([STAR_DECLARE_DEPENDENCIES],
 [m4_ifval([$1], [], [AC_FATAL([$0: no type given])])dnl
  m4_if(m4_bregexp([$1], 
                   [^\(sourceset\|build\|link\|use\|test\|configure\)$]),
        [0],
        [],
        [AC_FATAL([$0: unrecognised dependency type: $1])])dnl
  m4_ifval([$2], [], [AC_FATAL([$0: no deplist given])])dnl
  for _star_tmp in $2
  do
    STAR_DEPENDENCIES_CHILDREN="$STAR_DEPENDENCIES_CHILDREN<[$1]m4_ifval([$3], [ option='$3'], [])>$_star_tmp</$1>"
  done
  m4_if([$1], [configure], [# check that configure-deps ran...
  for _star_tmp in $2
  do
    echo "$as_me:$LINENO: checking for configure-deps/$_star_tmp" >&5
    echo $ECHO_N "checking for configure-deps/$_star_tmp... $ECHO_C" >&6
    if test -f $current_MANIFESTS/$_star_tmp; then
      echo "$as_me:$LINENO: result: ok" >&5
      echo "${ECHO_T}ok" >&6
    else
      echo "$as_me:$LINENO: result: not found!" >&5
      echo "${ECHO_T}not found" >&6
      echo "*** This package has a configure dependency on $_star_tmp" >&6
      echo "    but that component doesn't appear to be installed." >&6
      echo "    (I can't find $current_MANIFESTS/$_star_tmp:" >&6
      echo "    have you forgotten to run 'make configure-deps'?)" >&6
      echo "    Giving up!" >&6
      exit 1
    fi
  done
])dnl
])# STAR_DECLARE_DEPENDENCIES


# STAR_PLATFORM_SOURCES(target-file-list, platform-list)
# ------------------------------------------------------
#
# Generate the given target-file for each of the files in the list
# TARGET-FILE-LIST, by selecting the appropriate element of the
# PLATFORM-LIST based on the value of [AC_CANONICAL_BUILD].  Both
# lists are space-separated lists.
#
# For each of the platforms, <p>, in platform-list, there should be a
# file `<target-file><p>'.  There should always be a file
# `<target-file>default', and if none of the platform-list strings
# matches, this is the file which is used.  If the `default' file is
# listed in the `platform-list', then it is matched in the normal run
# of things; if it is not listed, it still matches, but a warning is
# issued.
#
# If you wish no match _not_ to be an error -- perhaps because there
# is a platform-dependent file which is redundant on unlisted platforms
# -- then end the platform-list with `NONE'.  In this case, if no file
# matches, then no link is made, with no error or warning.
#
# This macro uses the results of ./config.guess to determine the
# current platform.  That returns a triple consisting of
# cpu-vendor-os, such as `i686-pc-linux-gnu' (OS=linux-gnu),
# `sparc-sun-solaris2.9', or `alphaev6-dec-osf5.1'
#
# The extensions <p> in platform-list should all have the form
# `cpu_vendor[_os]', where each of the components `cpu', `vendor' and
# `os' may be blank.  If not blank, they are matched as a prefix of
# the corresponding part of the config.guess value.  Thus
# `_sun_solaris' would match `sparc-sun-solaris2.9' but not
# `sparc-sun-sunos', and `_sun' would match both.  For a <target-file>
# file foo.c, this would result in `ln -s foo.c_sun foo.c'
#
# Calls AC_LIBSOURCE for each of the implied platform-specific files.
#
AC_DEFUN([STAR_PLATFORM_SOURCES],
         [
$_star_docs_only && AC_MSG_ERROR([STAR_[]PLATFORM_SOURCES in docs-only dir])
AC_REQUIRE([AC_CANONICAL_BUILD])dnl
m4_ifval([$1], [], [AC_FATAL([$0: no target-file-list given])])dnl
m4_ifval([$2], [], [AC_FATAL([$0: no platform-list given])])dnl
AC_FOREACH([TargetFile], [$1],
  [AC_FOREACH([Ext], [$2], 
    [m4_if(Ext, [NONE], , [AC_LIBSOURCE(TargetFile[]Ext)])])])dnl
AC_MSG_CHECKING([platform-specific source for file(s) $1])
_star_tmp=
for platform in $2
do
    if test $platform = NONE; then
        # Special case -- no file required
        _star_tmp=NONE
        break;
    fi
    if test $platform = default; then
        _star_tmp=default
        break;
    fi
    if expr $build : `echo $platform | sed 's/_/.*-/g'` >/dev/null; then
        _star_tmp=$platform
        break;
    fi
done
if test -z "$_star_tmp"; then
    # Use default, but it wasn't listed in the platform-list
    # (though it should have been)
    AC_MSG_WARN([build platform $build does not match any of ($2): using `default'])
    _star_tmp=default
fi    
if test $_star_tmp = NONE; then
    AC_MSG_RESULT([none required])
else
    AC_MSG_RESULT([using $_star_tmp])
    for _t in $1
    do
        if test -f $srcdir/$_t$_star_tmp; then
            (cd $srcdir; rm -f $_t; cp -p $_t$_star_tmp $_t)
        else
            AC_MSG_WARN([platform $_star_tmp matched, but no file $_t$_star_tmp found])
        fi
    done
fi
])# STAR_PLATFORM_SOURCES


# STAR_INITIALISE_FORTRAN
# -----------------------
#
# Define a macro which can be used in a C main program to initialise the
# Fortran RTL, including, for example, doing whatever work is required so that
# the Fortran getarg() function works.  This defines the macro
# STAR_INITIALISE_FORTRAN(argc,argv).  The implementation necessarily uses
# functions which are specific to the Fortran implementation, and the body of
# this macro is basically a switch to determine the compiler and thus the
# appropriate compiler-specific magic.  If no implementation is available,
# then the macro should expand to nothing.
#
# Note that the Starlink functions wrapping getarg() are robust against
# getarg() failing because this information is not available.  This function
# is nonetheless necessary because some platforms have link problems otherwise
# (specifically OSX, on which the most readily available compiler is g77,
# cannot link properly if the getarg() function is referenced by a library,
# but there is a C main function, so that the Fortran main function's call of
# f_setarg is omitted).  Thus it is generally harmless to leave this function
# unimplemented on those platforms which do not have these link problems, and
# it is harmless that the test below is extremely compiler specific (though we
# would probably have to add implementations for any other compilers used on
# OSX).  It's also generally harmless not to call the defined function, or
# invoke this macro, if your application doesn't have the link problems which
# makeit necessary, though of course calling it will make getarg() work where
# it otherwise wouldn't, which may be an advantage.
#
# All was well until g95 and gfortran, these are "gnu" compilers, but use
# different semantics. In the case of g95 the calling the startup code is not
# optional (docs say that heap initialisation relies on the startup call).
#
# The test for g95 relies on the output from `g95 --version' containing the
# string "G95". Gfortran requires "GNU Fortran (GCC) 4+.x[x].x[x]".  Note that
# this whole area probably needs rethinking as g95 also has a g95_runtime_stop()
# function, that should be called.
#
# At gfortran 4.6 the call sequence stopped allowing a NULL argv, so a dummy
# version had to be added. The argv[0] value is always de-referenced in an
# an attempt to get the program name.
#
# Intel Fortran needs the for_rtl_init_ function, there is also a
# for_rtl_finish_ to run during closedown. The intel compiler signature
# is to have "IFORT" in the --version string.
#
# Under Solaris and the studio compilers the argc and argv values are no
# longer automatically shared, so we test for "Sun Fortran" and have a 
# code section that copies the given argc and argv directly to the global
# variable __xargc and __xargv, this may need fixing from time to time.
# Doesn't seem to be a function for doing this job.
#
AC_DEFUN([STAR_INITIALISE_FORTRAN],
   [AC_CACHE_CHECK([how to initialise the Fortran RTL],
       [star_cv_initialise_fortran],
       [AC_REQUIRE([AC_PROG_FC])
       if test "$ac_cv_fc_compiler_gnu" = yes; then
            if "$FC" --version 2>&1 < /dev/null | grep 'G95' > /dev/null; then
                star_cv_initialise_fortran=g95-start
            elif "$FC" --version 2>&1 < /dev/null | grep 'GNU Fortran.*[[4-9]]\.[[0-9]][[0-9]]*\.[[0-9]][[0-9]]*' > /dev/null; then
                star_cv_initialise_fortran=gfortran-setarg
            else
                star_cv_initialise_fortran=g77-setarg
            fi
        else
            if "$FC" --version 2>&1 < /dev/null | grep 'IFORT' > /dev/null; then
                star_cv_initialise_fortran=ifort-setarg
            elif "$FC" -V 2>&1 < /dev/null | grep 'Sun Fortran' > /dev/null; then
                star_cv_initialise_fortran=sunstudio-setarg
            else
                star_cv_initialise_fortran=
            fi
        fi])
    AH_TEMPLATE([STAR_INITIALISE@&t@_FORTRAN],
       [Define to a function call which will initialise the Fortran RTL])
    case "$star_cv_initialise_fortran" in
      g77-setarg)
        AC_DEFINE([STAR_INITIALISE@&t@_FORTRAN(argc,argv)],
                  [{extern void f_setarg(int,char**); f_setarg(argc, argv);}])
        ;;
      g95-start)
        AC_DEFINE([STAR_INITIALISE@&t@_FORTRAN(argc,argv)],
                  [{extern void g95_runtime_start(int,char**); g95_runtime_start(argc, argv);}])
        ;;
      gfortran-setarg)
        AC_DEFINE([STAR_INITIALISE@&t@_FORTRAN(argc,argv)],
                  [{extern void _gfortran_set_args(int,char**); if (argv == NULL) {static char *sc_dummy[[]]={NULL};_gfortran_set_args(0,sc_dummy);} else {_gfortran_set_args(argc,argv);}}])
        ;;
      ifort-setarg)
        AC_DEFINE([STAR_INITIALISE@&t@_FORTRAN(argc,argv)],
                  [{extern void for_rtl_init_(int*,char**); for_rtl_init_(&argc, argv);}])
        ;;
      sunstudio-setarg)
        AC_DEFINE([STAR_INITIALISE@&t@_FORTRAN(argc,argv)],
                  [{extern int __xargc; extern char **__xargv;__xargc = argc;__xargv = argv;}])
        ;;
      *) 
        AC_DEFINE([STAR_INITIALISE@&t@_FORTRAN(argc,argv)],[])
        ;;
    esac
dnl    AC_DEFINE_UNQUOTED([STAR_INITIALISE@&t@_FORTRAN(argc,argv)],
dnl                       $star_cv_initialise_fortran)
])# STAR_INITIALISE_FORTRAN


# STAR_SUPPRESS_BUILD_IF(test, message)
# -------------------------------------
# Call once at the end of the configure script.
#
# If the given shell test evaluates to true, then suppress the build,
# without having ./configure fail.  The test is any command which
# returns true if the build should be suppressed, and may be shell
# commands `true' or `false', or might be a more complicated test,
# such as `test -n "$SOMEENV"'.
#
# The macro communicates with the generated Makefile.in by creating a file
# STAR_SUPPRESS_BUILD if the test evaluates to true.  The file contains
# the text of the explanation.
AC_DEFUN([STAR_SUPPRESS_BUILD_IF],
   [m4_ifval([$1], [], [AC_FATAL([$0: needs two arguments])])dnl
    m4_ifval([$2], [], [AC_FATAL([$0: needs two arguments])])dnl
    rm -f STAR_SUPPRESS_BUILD
    if [$1]; then
        AC_MSG_WARN([Build inhibited:
        $2])
        echo "$2" >STAR_SUPPRESS_BUILD
        ALL_TARGET=all-am-suppress
    else
        ALL_TARGET=all-am-normal
    fi
    AC_SUBST(ALL_TARGET)
])# STAR_SUPPRESS_BUILD_IF


# starconf internal macros


# _STAR_UPCASE(string)
# --------------------
# Expands to STRING with all letters translated to uppercase.
AC_DEFUN([_STAR_UPCASE],
         [m4_translit([$1], [a-z], [A-Z])])


# _STAR_EXTRADIR_COMMON(dir-type, file-list)
# ------------------------------------------
#
# Common handler for STAR_HELP_FILES, etc.  DIR-TYPE is one of
#
#    help, etc, docs, examples
#
# and `FILE-LIST' is a list of files to be installed in
# the directory STAR_[DIR-TYPE]_DIR.  This works by defining and
# AC_SUBSTing the variables `starX_DATA for X=dir-type (eg, `stardocs_DATA').
#
# This is now obsolete -- components should use star<dir-type>_DATA in
# the Makefile.am file instead.  Don't use AC_[]DIAGNOSE([obsolete],...),
# since those warnings aren't turned on by default.
AC_DEFUN([_STAR_EXTRADIR_COMMON],
   [AC_FATAL([Macro STAR_]_STAR_UPCASE($1)[_FILES($2) is obsolete -- use star$1_DATA in Makefile.am instead])
    AC_FATAL([For STAR@&t@_LATEX_DOCUMENTATION, use stardocs_DATA=@STAR@&t@_LATEX_DOCUMENTATION@ instead])]
)# _STAR_EXTRADIR_COMMON


# _STAR_RESTFP_FIX
# ----------------
# Determines if we need to make any library fixes to get things to link 
# properly.  In fact, there's only a problem on OSX/Darwin, since the
# GCC installation which provides g77 and the (system) GCC which provides
# gcc can generate slightly incompatible object code.  The following test
# is therefore pretty specific to OSX/Darwin.
#
# If there are any libraries that need to be added to the path, this adds
# them to variables <x>_FCLINK_MAGIC.  Compare AC_FC_LIBRARY_LDFLAGS.
#
# See the thread: http://lists.apple.com/mhonarc/fortran-dev/msg00768.html
AC_DEFUN([_STAR_RESTFP_FIX],
   [AC_CACHE_CHECK([whether we need any library fixups],
       [star_cv_restfp_fixup],
       [AC_REQUIRE([AC_CANONICAL_BUILD])
        AC_REQUIRE([AC_PROG_CC])
        AC_REQUIRE([AC_PROG_FC])
        if expr $build_os : 'darwin7' >/dev/null; then
dnl Only affects OSX/Darwin
            # Following uses undocumented (but probably fairly stable)
            # autoconf internal variable.
            if test "$ac_cv_fc_compiler_gnu" = yes; then
dnl The problem only affects g77/gcc, so we know we're dealing with these below
                AC_LANG_PUSH(C)
                rm -f conftest*
                star_cv_restfp_fixup=unknown
                AC_LANG_CONFTEST(AC_LANG_PROGRAM([], restFP()))
                { AC_TRY_COMMAND($CC -o conftest.x -S conftest.c)
                  test $ac_status = 0
                } &&
                sed 's/_restFP/restFP/g' conftest.x>conftest.s &&
                { AC_TRY_COMMAND($CC -c -o conftest.$ac_objext conftest.s)
                  test $ac_status = 0
                } || star_cv_restfp_fixup=broken
                AC_LANG_POP(C)
                if test $star_cv_restfp_fixup = broken; then
                    AC_MSG_WARN([unable to assemble restFP test])
                else
                    # Link this with the C compiler
                    AC_TRY_COMMAND($CC -o conftest conftest.$ac_objext)
                    _s_cstatus=$ac_status
                    # Link this with the Fortran compiler
                    AC_TRY_COMMAND($FC -o conftest conftest.$ac_objext)
                    if test $_s_cstatus = 0 -a $ac_status = 0; then
                        # both compilers can compile it
                        star_cv_restfp_fixup=no
                    elif test $_s_cstatus != 0 -a $ac_status != 0; then
                        # neither compiler can compile it
                        star_cv_restfp_fixup=no
                    elif test $_s_cstatus = 0; then
                        # The C compiler can, but the Fortran cannot
                        star_cv_restfp_fixup=yes
                    else
                        # The C compiler can't compile, but the Fortran can.
                        # Haven't heard of this case!  Don't know what to do.
                        star_cv_restfp_fixup=broken
                    fi
                fi
                # Link with -lcc_dynamic.
                # See http://www.astro.gla.ac.uk/users/norman/note/2004/restFP/
                if test $star_cv_restfp_fixup = yes; then
                    AC_TRY_COMMAND($FC -o conftest conftest.$ac_objext -lcc_dynamic)
                    if test $ac_status = 0; then
                        star_cv_restfp_fixup=cc_dynamic
                    fi
                fi
                if test $star_cv_restfp_fixup = yes; then
                    # ooops
                    AC_MSG_WARN([unable to solve restFP problem])
                    star_cv_restfp_fixup=broken
                fi
                rm -f conftest*
            elif test -z "$FC"; then
                # not g77, and indeed no Fortran at all
                star_cv_restfp_fixup=nofortran
            else
                # There is a Fortran, but it's not g77, so either there's no
                # problem, or it's a mixed-compiler problem that's harder
                # than we know how to deal with.  But presumably the user
                # has worked this out.
                star_cv_restfp_fixup=no
            fi
        else # !Darwin
            star_cv_restfp_fixup=no
        fi
        ])
   C_FC_FCLINK_MAGIC=
   C_FC_PPFC_FCLINK_MAGIC=
   case $star_cv_restfp_fixup in
     cc_dynamic)
       # Add the required libraries to C_FC_... variables, which are
       # generated in the required places by (our) automake.
       C_FC_FCLINK_MAGIC="-lcc_dynamic"
       C_FC_PPFC_FCLINK_MAGIC="-lcc_dynamic"
       ;;
     nofortran)
       AC_MSG_NOTICE([No Fortran in path, so presumably no g77/gcc library problems])
       ;;
     *) ;;
   esac
   AC_SUBST(C_FC_FCLINK_MAGIC)
   AC_SUBST(C_FC_PPFC_FCLINK_MAGIC)
])# _STAR_RESTFP_FIX


# STAR_LARGEFILE_SUPPORT
# ----------------------
#
# Set C macros for compiling C routines that want to make use of large file 
# support. This is a joining of AC_SYS_LARGEFILE and AC_FUNC_FSEEKO
# so defines the macros _FILE_OFFSET_BITS, _LARGEFILE_SOURCE and _LARGE_FILES,
# along with HAVE_FSEEKO. To use large file support you need to use fseeko and
# ftello when HAVE_FSEEKO is defined (and use off_t for offsets) and compile
# all C code with the other defines. 
#
# This function also gathers the values of _FILE_OFFSET_BITS, _LARGEFILE_SOURCE
# and _LARGE_FILES and sets the STAR_LARGEFILE_CFLAGS variable (this in useful
# for passing to packages which are not directly part of the starconf system).
#
AC_DEFUN([STAR_LARGEFILE_SUPPORT],
[dnl Enable autoconf largefile support.
AC_SYS_LARGEFILE
AC_FUNC_FSEEKO

# Gather state into a single variable for passing to other packages.
STAR_LARGEFILE_CFLAGS=
if test "$ac_cv_sys_file_offset_bits" != "no"; then
   STAR_LARGEFILE_CFLAGS="-D_FILE_OFFSET_BITS=$ac_cv_sys_file_offset_bits"
fi

if test "$ac_cv_sys_large_files" != "no"; then
   STAR_LARGEFILE_CFLAGS="-D_LARGE_FILES_=$ac_cv_sys_large_files $STAR_LARGEFILE_CFLAGS"
fi

if test "$ac_cv_sys_largefile_source" != "no"; then
   STAR_LARGEFILE_CFLAGS="-D_LARGEFILE_SOURCE=$ac_cv_sys_largefile_source $STAR_LARGEFILE_CFLAGS"
fi
])# STAR_LARGEFILE_SUPPORT


# Obsolete macros
# ===============

# STAR_HAVE_FC_OPEN_READONLY
# ---------------------------
#
# Tests if the Fortran compiler supports the READONLY option on the
# OPEN command.  If it does, it defines HAVE_FC_OPEN_READONLY to 1.
AC_DEFUN([STAR_HAVE_FC_OPEN_READONLY],
   [AC_FATAL([Macro STAR_HAVE_FC_OPEN_READONLY is obsolete; use AC_FC_OPEN_SPECIFIERS(readonly) instead])])


# STAR_FC_LIBRARY_LDFLAGS
# -----------------------
#
# This was once a wrapper for AC_[]FC_LIBRARY_LDFLAGS which added
# functionality.  That functionality is now incorporated into STAR_[]DEFAULTS,
# using the helper macro _STAR_[]RESTFP_FIXUP.  Configure.ac files should use
# use AC_[]FC_LIBRARY_LDFLAGS instead.
AC_DEFUN([STAR_FC_LIBRARY_LDFLAGS],
   [AC_FATAL([Macro STAR_FC_LIBRARY_LDFLAGS is obsolete: if necessary, use standard AC_FC_LIBRARY_LDFLAGS instead])])


# end of starconf macros

# Copyright (C) 2002, 2003, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_AUTOMAKE_VERSION(VERSION)
# ----------------------------
# Automake X.Y traces this macro to ensure aclocal.m4 has been
# generated from the m4 files accompanying Automake X.Y.
AC_DEFUN([AM_AUTOMAKE_VERSION], [am__api_version="1.9"])

# AM_SET_CURRENT_AUTOMAKE_VERSION
# -------------------------------
# Call AM_AUTOMAKE_VERSION so it can be traced.
# This function is AC_REQUIREd by AC_INIT_AUTOMAKE.
AC_DEFUN([AM_SET_CURRENT_AUTOMAKE_VERSION],
	 [AM_AUTOMAKE_VERSION([1.9.6-starlink])])

# AM_AUX_DIR_EXPAND                                         -*- Autoconf -*-

# Copyright (C) 2001, 2003, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# For projects using AC_CONFIG_AUX_DIR([foo]), Autoconf sets
# $ac_aux_dir to `$srcdir/foo'.  In other projects, it is set to
# `$srcdir', `$srcdir/..', or `$srcdir/../..'.
#
# Of course, Automake must honor this variable whenever it calls a
# tool from the auxiliary directory.  The problem is that $srcdir (and
# therefore $ac_aux_dir as well) can be either absolute or relative,
# depending on how configure is run.  This is pretty annoying, since
# it makes $ac_aux_dir quite unusable in subdirectories: in the top
# source directory, any form will work fine, but in subdirectories a
# relative path needs to be adjusted first.
#
# $ac_aux_dir/missing
#    fails when called from a subdirectory if $ac_aux_dir is relative
# $top_srcdir/$ac_aux_dir/missing
#    fails if $ac_aux_dir is absolute,
#    fails when called from a subdirectory in a VPATH build with
#          a relative $ac_aux_dir
#
# The reason of the latter failure is that $top_srcdir and $ac_aux_dir
# are both prefixed by $srcdir.  In an in-source build this is usually
# harmless because $srcdir is `.', but things will broke when you
# start a VPATH build or use an absolute $srcdir.
#
# So we could use something similar to $top_srcdir/$ac_aux_dir/missing,
# iff we strip the leading $srcdir from $ac_aux_dir.  That would be:
#   am_aux_dir='\$(top_srcdir)/'`expr "$ac_aux_dir" : "$srcdir//*\(.*\)"`
# and then we would define $MISSING as
#   MISSING="\${SHELL} $am_aux_dir/missing"
# This will work as long as MISSING is not called from configure, because
# unfortunately $(top_srcdir) has no meaning in configure.
# However there are other variables, like CC, which are often used in
# configure, and could therefore not use this "fixed" $ac_aux_dir.
#
# Another solution, used here, is to always expand $ac_aux_dir to an
# absolute PATH.  The drawback is that using absolute paths prevent a
# configured tree to be moved without reconfiguration.

AC_DEFUN([AM_AUX_DIR_EXPAND],
[dnl Rely on autoconf to set up CDPATH properly.
AC_PREREQ([2.50])dnl
# expand $ac_aux_dir to an absolute path
am_aux_dir=`cd $ac_aux_dir && pwd`
])

# AM_CONDITIONAL                                            -*- Autoconf -*-

# Copyright (C) 1997, 2000, 2001, 2003, 2004, 2005
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 7

# AM_CONDITIONAL(NAME, SHELL-CONDITION)
# -------------------------------------
# Define a conditional.
AC_DEFUN([AM_CONDITIONAL],
[AC_PREREQ(2.52)dnl
 ifelse([$1], [TRUE],  [AC_FATAL([$0: invalid condition: $1])],
	[$1], [FALSE], [AC_FATAL([$0: invalid condition: $1])])dnl
AC_SUBST([$1_TRUE])
AC_SUBST([$1_FALSE])
if $2; then
  $1_TRUE=
  $1_FALSE='#'
else
  $1_TRUE='#'
  $1_FALSE=
fi
AC_CONFIG_COMMANDS_PRE(
[if test -z "${$1_TRUE}" && test -z "${$1_FALSE}"; then
  AC_MSG_ERROR([[conditional "$1" was never defined.
Usually this means the macro was only invoked conditionally.]])
fi])])


# Copyright (C) 1999, 2000, 2001, 2002, 2003, 2004, 2005
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 8

# There are a few dirty hacks below to avoid letting `AC_PROG_CC' be
# written in clear, in which case automake, when reading aclocal.m4,
# will think it sees a *use*, and therefore will trigger all it's
# C support machinery.  Also note that it means that autoscan, seeing
# CC etc. in the Makefile, will ask for an AC_PROG_CC use...


# _AM_DEPENDENCIES(NAME)
# ----------------------
# See how the compiler implements dependency checking.
# NAME is "CC", "CXX", "GCJ", or "OBJC".
# We try a few techniques and use that to set a single cache variable.
#
# We don't AC_REQUIRE the corresponding AC_PROG_CC since the latter was
# modified to invoke _AM_DEPENDENCIES(CC); we would have a circular
# dependency, and given that the user is not expected to run this macro,
# just rely on AC_PROG_CC.
AC_DEFUN([_AM_DEPENDENCIES],
[AC_REQUIRE([AM_SET_DEPDIR])dnl
AC_REQUIRE([AM_OUTPUT_DEPENDENCY_COMMANDS])dnl
AC_REQUIRE([AM_MAKE_INCLUDE])dnl
AC_REQUIRE([AM_DEP_TRACK])dnl

ifelse([$1], CC,   [depcc="$CC"   am_compiler_list=],
       [$1], CXX,  [depcc="$CXX"  am_compiler_list=],
       [$1], OBJC, [depcc="$OBJC" am_compiler_list='gcc3 gcc'],
       [$1], GCJ,  [depcc="$GCJ"  am_compiler_list='gcc3 gcc'],
                   [depcc="$$1"   am_compiler_list=])

AC_CACHE_CHECK([dependency style of $depcc],
               [am_cv_$1_dependencies_compiler_type],
[if test -z "$AMDEP_TRUE" && test -f "$am_depcomp"; then
  # We make a subdir and do the tests there.  Otherwise we can end up
  # making bogus files that we don't know about and never remove.  For
  # instance it was reported that on HP-UX the gcc test will end up
  # making a dummy file named `D' -- because `-MD' means `put the output
  # in D'.
  mkdir conftest.dir
  # Copy depcomp to subdir because otherwise we won't find it if we're
  # using a relative directory.
  cp "$am_depcomp" conftest.dir
  cd conftest.dir
  # We will build objects and dependencies in a subdirectory because
  # it helps to detect inapplicable dependency modes.  For instance
  # both Tru64's cc and ICC support -MD to output dependencies as a
  # side effect of compilation, but ICC will put the dependencies in
  # the current directory while Tru64 will put them in the object
  # directory.
  mkdir sub

  am_cv_$1_dependencies_compiler_type=none
  if test "$am_compiler_list" = ""; then
     am_compiler_list=`sed -n ['s/^#*\([a-zA-Z0-9]*\))$/\1/p'] < ./depcomp`
  fi
  for depmode in $am_compiler_list; do
    # Setup a source with many dependencies, because some compilers
    # like to wrap large dependency lists on column 80 (with \), and
    # we should not choose a depcomp mode which is confused by this.
    #
    # We need to recreate these files for each test, as the compiler may
    # overwrite some of them when testing with obscure command lines.
    # This happens at least with the AIX C compiler.
    : > sub/conftest.c
    for i in 1 2 3 4 5 6; do
      echo '#include "conftst'$i'.h"' >> sub/conftest.c
      # Using `: > sub/conftst$i.h' creates only sub/conftst1.h with
      # Solaris 8's {/usr,}/bin/sh.
      touch sub/conftst$i.h
    done
    echo "${am__include} ${am__quote}sub/conftest.Po${am__quote}" > confmf

    case $depmode in
    nosideeffect)
      # after this tag, mechanisms are not by side-effect, so they'll
      # only be used when explicitly requested
      if test "x$enable_dependency_tracking" = xyes; then
	continue
      else
	break
      fi
      ;;
    none) break ;;
    esac
    # We check with `-c' and `-o' for the sake of the "dashmstdout"
    # mode.  It turns out that the SunPro C++ compiler does not properly
    # handle `-M -o', and we need to detect this.
    if depmode=$depmode \
       source=sub/conftest.c object=sub/conftest.${OBJEXT-o} \
       depfile=sub/conftest.Po tmpdepfile=sub/conftest.TPo \
       $SHELL ./depcomp $depcc -c -o sub/conftest.${OBJEXT-o} sub/conftest.c \
         >/dev/null 2>conftest.err &&
       grep sub/conftst6.h sub/conftest.Po > /dev/null 2>&1 &&
       grep sub/conftest.${OBJEXT-o} sub/conftest.Po > /dev/null 2>&1 &&
       ${MAKE-make} -s -f confmf > /dev/null 2>&1; then
      # icc doesn't choke on unknown options, it will just issue warnings
      # or remarks (even with -Werror).  So we grep stderr for any message
      # that says an option was ignored or not supported.
      # When given -MP, icc 7.0 and 7.1 complain thusly:
      #   icc: Command line warning: ignoring option '-M'; no argument required
      # The diagnosis changed in icc 8.0:
      #   icc: Command line remark: option '-MP' not supported
      if (grep 'ignoring option' conftest.err ||
          grep 'not supported' conftest.err) >/dev/null 2>&1; then :; else
        am_cv_$1_dependencies_compiler_type=$depmode
        break
      fi
    fi
  done

  cd ..
  rm -rf conftest.dir
else
  am_cv_$1_dependencies_compiler_type=none
fi
])
AC_SUBST([$1DEPMODE], [depmode=$am_cv_$1_dependencies_compiler_type])
AM_CONDITIONAL([am__fastdep$1], [
  test "x$enable_dependency_tracking" != xno \
  && test "$am_cv_$1_dependencies_compiler_type" = gcc3])
])


# AM_SET_DEPDIR
# -------------
# Choose a directory name for dependency files.
# This macro is AC_REQUIREd in _AM_DEPENDENCIES
AC_DEFUN([AM_SET_DEPDIR],
[AC_REQUIRE([AM_SET_LEADING_DOT])dnl
AC_SUBST([DEPDIR], ["${am__leading_dot}deps"])dnl
])


# AM_DEP_TRACK
# ------------
AC_DEFUN([AM_DEP_TRACK],
[AC_ARG_ENABLE(dependency-tracking,
[  --disable-dependency-tracking  speeds up one-time build
  --enable-dependency-tracking   do not reject slow dependency extractors])
if test "x$enable_dependency_tracking" != xno; then
  am_depcomp="$ac_aux_dir/depcomp"
  AMDEPBACKSLASH='\'
fi
AM_CONDITIONAL([AMDEP], [test "x$enable_dependency_tracking" != xno])
AC_SUBST([AMDEPBACKSLASH])
])

# Generate code to set up dependency tracking.              -*- Autoconf -*-

# Copyright (C) 1999, 2000, 2001, 2002, 2003, 2004, 2005
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

#serial 3

# _AM_OUTPUT_DEPENDENCY_COMMANDS
# ------------------------------
AC_DEFUN([_AM_OUTPUT_DEPENDENCY_COMMANDS],
[for mf in $CONFIG_FILES; do
  # Strip MF so we end up with the name of the file.
  mf=`echo "$mf" | sed -e 's/:.*$//'`
  # Check whether this is an Automake generated Makefile or not.
  # We used to match only the files named `Makefile.in', but
  # some people rename them; so instead we look at the file content.
  # Grep'ing the first line is not enough: some people post-process
  # each Makefile.in and add a new line on top of each file to say so.
  # So let's grep whole file.
  if grep '^#.*generated by automake' $mf > /dev/null 2>&1; then
    dirpart=`AS_DIRNAME("$mf")`
  else
    continue
  fi
  # Extract the definition of DEPDIR, am__include, and am__quote
  # from the Makefile without running `make'.
  DEPDIR=`sed -n 's/^DEPDIR = //p' < "$mf"`
  test -z "$DEPDIR" && continue
  am__include=`sed -n 's/^am__include = //p' < "$mf"`
  test -z "am__include" && continue
  am__quote=`sed -n 's/^am__quote = //p' < "$mf"`
  # When using ansi2knr, U may be empty or an underscore; expand it
  U=`sed -n 's/^U = //p' < "$mf"`
  # Find all dependency output files, they are included files with
  # $(DEPDIR) in their names.  We invoke sed twice because it is the
  # simplest approach to changing $(DEPDIR) to its actual value in the
  # expansion.
  for file in `sed -n "
    s/^$am__include $am__quote\(.*(DEPDIR).*\)$am__quote"'$/\1/p' <"$mf" | \
       sed -e 's/\$(DEPDIR)/'"$DEPDIR"'/g' -e 's/\$U/'"$U"'/g'`; do
    # Make sure the directory exists.
    test -f "$dirpart/$file" && continue
    fdir=`AS_DIRNAME(["$file"])`
    AS_MKDIR_P([$dirpart/$fdir])
    # echo "creating $dirpart/$file"
    echo '# dummy' > "$dirpart/$file"
  done
done
])# _AM_OUTPUT_DEPENDENCY_COMMANDS


# AM_OUTPUT_DEPENDENCY_COMMANDS
# -----------------------------
# This macro should only be invoked once -- use via AC_REQUIRE.
#
# This code is only required when automatic dependency tracking
# is enabled.  FIXME.  This creates each `.P' file that we will
# need in order to bootstrap the dependency handling code.
AC_DEFUN([AM_OUTPUT_DEPENDENCY_COMMANDS],
[AC_CONFIG_COMMANDS([depfiles],
     [test x"$AMDEP_TRUE" != x"" || _AM_OUTPUT_DEPENDENCY_COMMANDS],
     [AMDEP_TRUE="$AMDEP_TRUE" ac_aux_dir="$ac_aux_dir"])
])

# Do all the work for Automake.                             -*- Autoconf -*-

# Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 12

# This macro actually does too much.  Some checks are only needed if
# your package does certain things.  But this isn't really a big deal.

# AM_INIT_AUTOMAKE(PACKAGE, VERSION, [NO-DEFINE])
# AM_INIT_AUTOMAKE([OPTIONS])
# -----------------------------------------------
# The call with PACKAGE and VERSION arguments is the old style
# call (pre autoconf-2.50), which is being phased out.  PACKAGE
# and VERSION should now be passed to AC_INIT and removed from
# the call to AM_INIT_AUTOMAKE.
# We support both call styles for the transition.  After
# the next Automake release, Autoconf can make the AC_INIT
# arguments mandatory, and then we can depend on a new Autoconf
# release and drop the old call support.
AC_DEFUN([AM_INIT_AUTOMAKE],
[AC_PREREQ([2.58])dnl
dnl Autoconf wants to disallow AM_ names.  We explicitly allow
dnl the ones we care about.
m4_pattern_allow([^AM_[A-Z]+FLAGS$])dnl
AC_REQUIRE([AM_SET_CURRENT_AUTOMAKE_VERSION])dnl
AC_REQUIRE([AC_PROG_INSTALL])dnl
# test to see if srcdir already configured
if test "`cd $srcdir && pwd`" != "`pwd`" &&
   test -f $srcdir/config.status; then
  AC_MSG_ERROR([source directory already configured; run "make distclean" there first])
fi

# test whether we have cygpath
if test -z "$CYGPATH_W"; then
  if (cygpath --version) >/dev/null 2>/dev/null; then
    CYGPATH_W='cygpath -w'
  else
    CYGPATH_W=echo
  fi
fi
AC_SUBST([CYGPATH_W])

# Define the identity of the package.
dnl Distinguish between old-style and new-style calls.
m4_ifval([$2],
[m4_ifval([$3], [_AM_SET_OPTION([no-define])])dnl
 AC_SUBST([PACKAGE], [$1])dnl
 AC_SUBST([VERSION], [$2])],
[_AM_SET_OPTIONS([$1])dnl
 AC_SUBST([PACKAGE], ['AC_PACKAGE_TARNAME'])dnl
 AC_SUBST([VERSION], ['AC_PACKAGE_VERSION'])])dnl

_AM_IF_OPTION([no-define],,
[AC_DEFINE_UNQUOTED(PACKAGE, "$PACKAGE", [Name of package])
 AC_DEFINE_UNQUOTED(VERSION, "$VERSION", [Version number of package])])dnl

# Some tools Automake needs.
AC_REQUIRE([AM_SANITY_CHECK])dnl
AC_REQUIRE([AC_ARG_PROGRAM])dnl
AM_MISSING_PROG(ACLOCAL, aclocal-${am__api_version})
AM_MISSING_PROG(AUTOCONF, autoconf)
AM_MISSING_PROG(AUTOMAKE, automake-${am__api_version})
AM_MISSING_PROG(AUTOHEADER, autoheader)
AM_MISSING_PROG(MAKEINFO, makeinfo)
AM_PROG_INSTALL_SH
AM_PROG_INSTALL_STRIP
AC_REQUIRE([AM_PROG_MKDIR_P])dnl
# We need awk for the "check" target.  The system "awk" is bad on
# some platforms.
AC_REQUIRE([AC_PROG_AWK])dnl
AC_REQUIRE([AC_PROG_MAKE_SET])dnl
AC_REQUIRE([AM_SET_LEADING_DOT])dnl
_AM_IF_OPTION([tar-ustar], [_AM_PROG_TAR([ustar])],
              [_AM_IF_OPTION([tar-pax], [_AM_PROG_TAR([pax])],
	      		     [_AM_PROG_TAR([v7])])])
_AM_IF_OPTION([no-dependencies],,
[AC_PROVIDE_IFELSE([AC_PROG_CC],
                  [_AM_DEPENDENCIES(CC)],
                  [define([AC_PROG_CC],
                          defn([AC_PROG_CC])[_AM_DEPENDENCIES(CC)])])dnl
AC_PROVIDE_IFELSE([AC_PROG_CXX],
                  [_AM_DEPENDENCIES(CXX)],
                  [define([AC_PROG_CXX],
                          defn([AC_PROG_CXX])[_AM_DEPENDENCIES(CXX)])])dnl
])
])


# When config.status generates a header, we must update the stamp-h file.
# This file resides in the same directory as the config header
# that is generated.  The stamp files are numbered to have different names.

# Autoconf calls _AC_AM_CONFIG_HEADER_HOOK (when defined) in the
# loop where config.status creates the headers, so we can generate
# our stamp files there.
AC_DEFUN([_AC_AM_CONFIG_HEADER_HOOK],
[# Compute $1's index in $config_headers.
_am_stamp_count=1
for _am_header in $config_headers :; do
  case $_am_header in
    $1 | $1:* )
      break ;;
    * )
      _am_stamp_count=`expr $_am_stamp_count + 1` ;;
  esac
done
echo "timestamp for $1" >`AS_DIRNAME([$1])`/stamp-h[]$_am_stamp_count])

# Copyright (C) 2001, 2003, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_INSTALL_SH
# ------------------
# Define $install_sh.
AC_DEFUN([AM_PROG_INSTALL_SH],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
install_sh=${install_sh-"$am_aux_dir/install-sh"}
AC_SUBST(install_sh)])

# Copyright (C) 2003, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 2

# Check whether the underlying file-system supports filenames
# with a leading dot.  For instance MS-DOS doesn't.
AC_DEFUN([AM_SET_LEADING_DOT],
[rm -rf .tst 2>/dev/null
mkdir .tst 2>/dev/null
if test -d .tst; then
  am__leading_dot=.
else
  am__leading_dot=_
fi
rmdir .tst 2>/dev/null
AC_SUBST([am__leading_dot])])

# Check to see how 'make' treats includes.	            -*- Autoconf -*-

# Copyright (C) 2001, 2002, 2003, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 3

# AM_MAKE_INCLUDE()
# -----------------
# Check to see how make treats includes.
AC_DEFUN([AM_MAKE_INCLUDE],
[am_make=${MAKE-make}
cat > confinc << 'END'
am__doit:
	@echo done
.PHONY: am__doit
END
# If we don't find an include directive, just comment out the code.
AC_MSG_CHECKING([for style of include used by $am_make])
am__include="#"
am__quote=
_am_result=none
# First try GNU make style include.
echo "include confinc" > confmf
# We grep out `Entering directory' and `Leaving directory'
# messages which can occur if `w' ends up in MAKEFLAGS.
# In particular we don't look at `^make:' because GNU make might
# be invoked under some other name (usually "gmake"), in which
# case it prints its new name instead of `make'.
if test "`$am_make -s -f confmf 2> /dev/null | grep -v 'ing directory'`" = "done"; then
   am__include=include
   am__quote=
   _am_result=GNU
fi
# Now try BSD make style include.
if test "$am__include" = "#"; then
   echo '.include "confinc"' > confmf
   if test "`$am_make -s -f confmf 2> /dev/null`" = "done"; then
      am__include=.include
      am__quote="\""
      _am_result=BSD
   fi
fi
AC_SUBST([am__include])
AC_SUBST([am__quote])
AC_MSG_RESULT([$_am_result])
rm -f confinc confmf
])

# Fake the existence of programs that GNU maintainers use.  -*- Autoconf -*-

# Copyright (C) 1997, 1999, 2000, 2001, 2003, 2005
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 4

# AM_MISSING_PROG(NAME, PROGRAM)
# ------------------------------
AC_DEFUN([AM_MISSING_PROG],
[AC_REQUIRE([AM_MISSING_HAS_RUN])
$1=${$1-"${am_missing_run}$2"}
AC_SUBST($1)])


# AM_MISSING_HAS_RUN
# ------------------
# Define MISSING if not defined so far and test if it supports --run.
# If it does, set am_missing_run to use it, otherwise, to nothing.
AC_DEFUN([AM_MISSING_HAS_RUN],
[AC_REQUIRE([AM_AUX_DIR_EXPAND])dnl
test x"${MISSING+set}" = xset || MISSING="\${SHELL} $am_aux_dir/missing"
# Use eval to expand $SHELL
if eval "$MISSING --run true"; then
  am_missing_run="$MISSING --run "
else
  am_missing_run=
  AC_MSG_WARN([`missing' script is too old or missing])
fi
])

# Copyright (C) 2003, 2004, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_MKDIR_P
# ---------------
# Check whether `mkdir -p' is supported, fallback to mkinstalldirs otherwise.
#
# Automake 1.8 used `mkdir -m 0755 -p --' to ensure that directories
# created by `make install' are always world readable, even if the
# installer happens to have an overly restrictive umask (e.g. 077).
# This was a mistake.  There are at least two reasons why we must not
# use `-m 0755':
#   - it causes special bits like SGID to be ignored,
#   - it may be too restrictive (some setups expect 775 directories).
#
# Do not use -m 0755 and let people choose whatever they expect by
# setting umask.
#
# We cannot accept any implementation of `mkdir' that recognizes `-p'.
# Some implementations (such as Solaris 8's) are not thread-safe: if a
# parallel make tries to run `mkdir -p a/b' and `mkdir -p a/c'
# concurrently, both version can detect that a/ is missing, but only
# one can create it and the other will error out.  Consequently we
# restrict ourselves to GNU make (using the --version option ensures
# this.)
AC_DEFUN([AM_PROG_MKDIR_P],
[if mkdir -p --version . >/dev/null 2>&1 && test ! -d ./--version; then
  # We used to keeping the `.' as first argument, in order to
  # allow $(mkdir_p) to be used without argument.  As in
  #   $(mkdir_p) $(somedir)
  # where $(somedir) is conditionally defined.  However this is wrong
  # for two reasons:
  #  1. if the package is installed by a user who cannot write `.'
  #     make install will fail,
  #  2. the above comment should most certainly read
  #     $(mkdir_p) $(DESTDIR)$(somedir)
  #     so it does not work when $(somedir) is undefined and
  #     $(DESTDIR) is not.
  #  To support the latter case, we have to write
  #     test -z "$(somedir)" || $(mkdir_p) $(DESTDIR)$(somedir),
  #  so the `.' trick is pointless.
  mkdir_p='mkdir -p --'
else
  # On NextStep and OpenStep, the `mkdir' command does not
  # recognize any option.  It will interpret all options as
  # directories to create, and then abort because `.' already
  # exists.
  for d in ./-p ./--version;
  do
    test -d $d && rmdir $d
  done
  # $(mkinstalldirs) is defined by Automake if mkinstalldirs exists.
  if test -f "$ac_aux_dir/mkinstalldirs"; then
    mkdir_p='$(mkinstalldirs)'
  else
    mkdir_p='$(install_sh) -d'
  fi
fi
AC_SUBST([mkdir_p])])

# Helper functions for option handling.                     -*- Autoconf -*-

# Copyright (C) 2001, 2002, 2003, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 3

# _AM_MANGLE_OPTION(NAME)
# -----------------------
AC_DEFUN([_AM_MANGLE_OPTION],
[[_AM_OPTION_]m4_bpatsubst($1, [[^a-zA-Z0-9_]], [_])])

# _AM_SET_OPTION(NAME)
# ------------------------------
# Set option NAME.  Presently that only means defining a flag for this option.
AC_DEFUN([_AM_SET_OPTION],
[m4_define(_AM_MANGLE_OPTION([$1]), 1)])

# _AM_SET_OPTIONS(OPTIONS)
# ----------------------------------
# OPTIONS is a space-separated list of Automake options.
AC_DEFUN([_AM_SET_OPTIONS],
[AC_FOREACH([_AM_Option], [$1], [_AM_SET_OPTION(_AM_Option)])])

# _AM_IF_OPTION(OPTION, IF-SET, [IF-NOT-SET])
# -------------------------------------------
# Execute IF-SET if OPTION is set, IF-NOT-SET otherwise.
AC_DEFUN([_AM_IF_OPTION],
[m4_ifset(_AM_MANGLE_OPTION([$1]), [$2], [$3])])

# Check to make sure that the build environment is sane.    -*- Autoconf -*-

# Copyright (C) 1996, 1997, 2000, 2001, 2003, 2005
# Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 4

# AM_SANITY_CHECK
# ---------------
AC_DEFUN([AM_SANITY_CHECK],
[AC_MSG_CHECKING([whether build environment is sane])
# Just in case
sleep 1
echo timestamp > conftest.file
# Do `set' in a subshell so we don't clobber the current shell's
# arguments.  Must try -L first in case configure is actually a
# symlink; some systems play weird games with the mod time of symlinks
# (eg FreeBSD returns the mod time of the symlink's containing
# directory).
if (
   set X `ls -Lt $srcdir/configure conftest.file 2> /dev/null`
   if test "$[*]" = "X"; then
      # -L didn't work.
      set X `ls -t $srcdir/configure conftest.file`
   fi
   rm -f conftest.file
   if test "$[*]" != "X $srcdir/configure conftest.file" \
      && test "$[*]" != "X conftest.file $srcdir/configure"; then

      # If neither matched, then we have a broken ls.  This can happen
      # if, for instance, CONFIG_SHELL is bash and it inherits a
      # broken ls alias from the environment.  This has actually
      # happened.  Such a system could not be considered "sane".
      AC_MSG_ERROR([ls -t appears to fail.  Make sure there is not a broken
alias in your environment])
   fi

   test "$[2]" = conftest.file
   )
then
   # Ok.
   :
else
   AC_MSG_ERROR([newly created file is older than distributed files!
Check your system clock])
fi
AC_MSG_RESULT(yes)])

# Copyright (C) 2001, 2003, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# AM_PROG_INSTALL_STRIP
# ---------------------
# One issue with vendor `install' (even GNU) is that you can't
# specify the program used to strip binaries.  This is especially
# annoying in cross-compiling environments, where the build's strip
# is unlikely to handle the host's binaries.
# Fortunately install-sh will honor a STRIPPROG variable, so we
# always use install-sh in `make install-strip', and initialize
# STRIPPROG with the value of the STRIP variable (set by the user).
AC_DEFUN([AM_PROG_INSTALL_STRIP],
[AC_REQUIRE([AM_PROG_INSTALL_SH])dnl
# Installed binaries are usually stripped using `strip' when the user
# run `make install-strip'.  However `strip' might not be the right
# tool to use in cross-compilation environments, therefore Automake
# will honor the `STRIP' environment variable to overrule this program.
dnl Don't test for $cross_compiling = yes, because it might be `maybe'.
if test "$cross_compiling" != no; then
  AC_CHECK_TOOL([STRIP], [strip], :)
fi
INSTALL_STRIP_PROGRAM="\${SHELL} \$(install_sh) -c -s"
AC_SUBST([INSTALL_STRIP_PROGRAM])])

# Check how to create a tarball.                            -*- Autoconf -*-

# Copyright (C) 2004, 2005  Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# serial 2

# _AM_PROG_TAR(FORMAT)
# --------------------
# Check how to create a tarball in format FORMAT.
# FORMAT should be one of `v7', `ustar', or `pax'.
#
# Substitute a variable $(am__tar) that is a command
# writing to stdout a FORMAT-tarball containing the directory
# $tardir.
#     tardir=directory && $(am__tar) > result.tar
#
# Substitute a variable $(am__untar) that extract such
# a tarball read from stdin.
#     $(am__untar) < result.tar
AC_DEFUN([_AM_PROG_TAR],
[# Always define AMTAR for backward compatibility.
AM_MISSING_PROG([AMTAR], [tar])
m4_if([$1], [v7],
     [am__tar='${AMTAR} chof - "$$tardir"'; am__untar='${AMTAR} xf -'],
     [m4_case([$1], [ustar],, [pax],,
              [m4_fatal([Unknown tar format])])
AC_MSG_CHECKING([how to create a $1 tar archive])
# Loop over all known methods to create a tar archive until one works.
_am_tools='gnutar m4_if([$1], [ustar], [plaintar]) pax cpio none'
_am_tools=${am_cv_prog_tar_$1-$_am_tools}
# Do not fold the above two line into one, because Tru64 sh and
# Solaris sh will not grok spaces in the rhs of `-'.
for _am_tool in $_am_tools
do
  case $_am_tool in
  gnutar)
    for _am_tar in tar gnutar gtar;
    do
      AM_RUN_LOG([$_am_tar --version]) && break
    done
    am__tar="$_am_tar --format=m4_if([$1], [pax], [posix], [$1]) -chf - "'"$$tardir"'
    am__tar_="$_am_tar --format=m4_if([$1], [pax], [posix], [$1]) -chf - "'"$tardir"'
    am__untar="$_am_tar -xf -"
    ;;
  plaintar)
    # Must skip GNU tar: if it does not support --format= it doesn't create
    # ustar tarball either.
    (tar --version) >/dev/null 2>&1 && continue
    am__tar='tar chf - "$$tardir"'
    am__tar_='tar chf - "$tardir"'
    am__untar='tar xf -'
    ;;
  pax)
    am__tar='pax -L -x $1 -w "$$tardir"'
    am__tar_='pax -L -x $1 -w "$tardir"'
    am__untar='pax -r'
    ;;
  cpio)
    am__tar='find "$$tardir" -print | cpio -o -H $1 -L'
    am__tar_='find "$tardir" -print | cpio -o -H $1 -L'
    am__untar='cpio -i -H $1 -d'
    ;;
  none)
    am__tar=false
    am__tar_=false
    am__untar=false
    ;;
  esac

  # If the value was cached, stop now.  We just wanted to have am__tar
  # and am__untar set.
  test -n "${am_cv_prog_tar_$1}" && break

  # tar/untar a dummy directory, and stop if the command works
  rm -rf conftest.dir
  mkdir conftest.dir
  echo GrepMe > conftest.dir/file
  AM_RUN_LOG([tardir=conftest.dir && eval $am__tar_ >conftest.tar])
  rm -rf conftest.dir
  if test -s conftest.tar; then
    AM_RUN_LOG([$am__untar <conftest.tar])
    grep GrepMe conftest.dir/file >/dev/null 2>&1 && break
  fi
done
rm -rf conftest.dir

AC_CACHE_VAL([am_cv_prog_tar_$1], [am_cv_prog_tar_$1=$_am_tool])
AC_MSG_RESULT([$am_cv_prog_tar_$1])])
AC_SUBST([am__tar])
AC_SUBST([am__untar])
]) # _AM_PROG_TAR

m4_include([acinclude.m4])
