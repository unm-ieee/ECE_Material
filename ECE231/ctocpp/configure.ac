dnl Process this file with autoconf to produce a configure script.

AC-PREREQ(2.57)
AC_INIT(ctocpp, 1.3.0, webmaster@scriptet.com)
AM_INIT_AUTOMAKE
VERSION=1.3.0
AC_SUBST(VERSION)


dnl default module directory

c2cppdir="$bindir/c2cpp"
AC_ARG_WITH(c2cppdir,
[  --with-c2cppdir=DIR    Ctocpp py scripts installed in directory DIR],
c2cppdir="$withval")

dnl get rid of ${prefix}

if test "$c2cppdir" = '${prefix}/c2cpp'; then
  if test "$prefix" = 'NONE'; then
   bindir=/usr/local/bin/c2cpp
  else
   bindir=$prefix/c2cpp
  fi
fi

AC_PATH_PROG(PYTHON, python)


AC_OUTPUT

