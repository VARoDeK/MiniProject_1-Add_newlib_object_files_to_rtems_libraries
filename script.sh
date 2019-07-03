#! /bin/sh

PATH_TO_NEWLIB_SPARC="/home/varodek/development/newlib/b-sparc-rtems5-newlib/sparc-rtems5"
PATH_TO_5_BIN_SPARC="/home/varodek/development/rtems/5/sparc-rtems5"

ar r ${PATH_TO_5_BIN_SPARC}/lib/leon3/libc.a ${PATH_TO_NEWLIB_SPARC}/leon3/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/leon3/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/leon3/gr712rc/libc.a ${PATH_TO_NEWLIB_SPARC}/leon3/gr712rc/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/leon3/gr712rc/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/libc.a  ${PATH_TO_NEWLIB_SPARC}/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/leon3v7/libc.a ${PATH_TO_NEWLIB_SPARC}/leon3v7/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/leon3v7/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/leon3v7/gr712rc/libc.a ${PATH_TO_NEWLIB_SPARC}/leon3v7/gr712rc/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/leon3v7/gr712rc/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/v8/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/v8/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/v8/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/leon/libc.a ${PATH_TO_NEWLIB_SPARC}/leon/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/leon/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/leon/at697f/libc.a ${PATH_TO_NEWLIB_SPARC}/leon/at697f/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/leon/at697f/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/leon/ut699/libc.a ${PATH_TO_NEWLIB_SPARC}/leon/ut699/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/leon/ut699/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/leon3/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3/gr712rc/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/leon3/gr712rc/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3/gr712rc/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3v7/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/leon3v7/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3v7/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3v7/gr712rc/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/leon3v7/gr712rc/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/leon3v7/gr712rc/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/v8/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/v8/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/v8/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/leon/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/leon/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/leon/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/leon/at697f/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/leon/at697f/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/leon/at697f/libc.a

ar r ${PATH_TO_5_BIN_SPARC}/lib/soft/leon/ut699/libc.a ${PATH_TO_NEWLIB_SPARC}/soft/leon/ut699/newlib/libc/search/lib_a-ndbm.o
ranlib ${PATH_TO_5_BIN_SPARC}/lib/soft/leon/ut699/libc.a
