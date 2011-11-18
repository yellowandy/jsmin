dnl $Id$
dnl config.m4 for extension jsmin

PHP_ARG_ENABLE(jsmin, whether to enable jsmin support,
[  --enable-jsmin           Enable jsmin support])

if test "$PHP_JSMIN" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-jsmin -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/jsmin.h"  # you most likely want to change this
  dnl if test -r $PHP_JSMIN/$SEARCH_FOR; then # path given as parameter
  dnl   JSMIN_DIR=$PHP_JSMIN
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for jsmin files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       JSMIN_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$JSMIN_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the jsmin distribution])
  dnl fi

  dnl # --with-jsmin -> add include path
  dnl PHP_ADD_INCLUDE($JSMIN_DIR/include)

  dnl # --with-jsmin -> check for lib and symbol presence
  dnl LIBNAME=jsmin # you may want to change this
  dnl LIBSYMBOL=jsmin # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $JSMIN_DIR/lib, JSMIN_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_JSMINLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong jsmin lib version or lib not found])
  dnl ],[
  dnl   -L$JSMIN_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(JSMIN_SHARED_LIBADD)

  PHP_NEW_EXTENSION(jsmin, jsmin.c jsminify.c, $ext_shared)
fi
