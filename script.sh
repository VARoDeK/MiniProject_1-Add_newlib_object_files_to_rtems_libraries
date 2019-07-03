#! /bin/sh

TARGET_LIBRARY=()
SOURCE_OBJFILE=()
#------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------
#define the libc.a files, which are to be updated
        TARGET_LIBRARY+=( "lib/leon3/libc.a" )                  #0
        TARGET_LIBRARY+=( "lib/leon3/gr712rc/libc.a" )          #1
        TARGET_LIBRARY+=( "lib/libc.a" )                        #2
        TARGET_LIBRARY+=( "lib/leon3v7/libc.a" )                #3
        TARGET_LIBRARY+=( "lib/leon3v7/gr712rc/libc.a" )        #4
        TARGET_LIBRARY+=( "lib/v8/libc.a" )                     #5
        TARGET_LIBRARY+=( "lib/leon/libc.a" )                   #6
        TARGET_LIBRARY+=( "lib/leon/at697f/libc.a" )            #7
        TARGET_LIBRARY+=( "lib/leon/ut699/libc.a" )             #8
        TARGET_LIBRARY+=( "lib/soft/leon3/libc.a" )             #9
        TARGET_LIBRARY+=( "lib/soft/leon3/gr712rc/libc.a" )     #10
        TARGET_LIBRARY+=( "lib/soft/libc.a" )                   #11
        TARGET_LIBRARY+=( "lib/soft/leon3v7/libc.a" )           #12
        TARGET_LIBRARY+=( "lib/soft/leon3v7/gr712rc/libc.a" )   #13
        TARGET_LIBRARY+=( "lib/soft/v8/libc.a" )                #14
        TARGET_LIBRARY+=( "lib/soft/leon/libc.a" )              #15
        TARGET_LIBRARY+=( "lib/soft/leon/at697f/libc.a" )       #16
        TARGET_LIBRARY+=( "lib/soft/leon/ut699/libc.a" )        #17
#------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------
#define the lib_a-ndbm.o files to be added
        SOURCE_OBJFILE+=( "leon3/newlib/libc/search/lib_a-ndbm.o" )                 #0
        SOURCE_OBJFILE+=( "leon3/gr712rc/newlib/libc/search/lib_a-ndbm.o" )         #1
        SOURCE_OBJFILE+=( "newlib/libc/search/lib_a-ndbm.o" )                       #2
        SOURCE_OBJFILE+=( "leon3v7/newlib/libc/search/lib_a-ndbm.o" )               #3
        SOURCE_OBJFILE+=( "leon3v7/gr712rc/newlib/libc/search/lib_a-ndbm.o" )       #4
        SOURCE_OBJFILE+=( "v8/newlib/libc/search/lib_a-ndbm.o" )                    #5
        SOURCE_OBJFILE+=( "leon/newlib/libc/search/lib_a-ndbm.o" )                  #6
        SOURCE_OBJFILE+=( "leon/at697f/newlib/libc/search/lib_a-ndbm.o" )           #7
        SOURCE_OBJFILE+=( "leon/ut699/newlib/libc/search/lib_a-ndbm.o" )            #8
        SOURCE_OBJFILE+=( "soft/leon3/newlib/libc/search/lib_a-ndbm.o" )            #9
        SOURCE_OBJFILE+=( "soft/leon3/gr712rc/newlib/libc/search/lib_a-ndbm.o" )    #10
        SOURCE_OBJFILE+=( "soft/newlib/libc/search/lib_a-ndbm.o" )                  #11
        SOURCE_OBJFILE+=( "soft/leon3v7/newlib/libc/search/lib_a-ndbm.o" )          #12
        SOURCE_OBJFILE+=( "soft/leon3v7/gr712rc/newlib/libc/search/lib_a-ndbm.o" )  #13
        SOURCE_OBJFILE+=( "soft/v8/newlib/libc/search/lib_a-ndbm.o" )               #14
        SOURCE_OBJFILE+=( "soft/leon/newlib/libc/search/lib_a-ndbm.o" )             #15
        SOURCE_OBJFILE+=( "soft/leon/at697f/newlib/libc/search/lib_a-ndbm.o" )      #16
        SOURCE_OBJFILE+=( "soft/leon/ut699/newlib/libc/search/lib_a-ndbm.o" )       #17
#------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------
#NOTE : THE TARGET_LIBRARY[i] SHOULD CORRESPOND TO SOURCE_OBJFILE[i], FOR ANY CONSTANT VALUE OF i.

PATH_TO_NEWLIB_SPARC="/home/varodek/development/newlib/b-sparc-rtems5-newlib/sparc-rtems5/"
PATH_TO_5_BIN_SPARC="/home/varodek/development/rtems/5/sparc-rtems5/"

NUMBER_OF_TARGETS=${#TARGET_LIBRARY[@]}
echo "${NUMBER_OF_TARGETS} Targets"
echo " "


for((i=0; i<${NUMBER_OF_TARGETS}; i++))
do
cmd="ar r ${PATH_TO_5_BIN_SPARC}${TARGET_LIBRARY[${i}]} ${PATH_TO_NEWLIB_SPARC}${SOURCE_OBJFILE[${i}]}"
echo "Run : ${cmd}"
$(${cmd})

cmd="ranlib ${PATH_TO_5_BIN_SPARC}${TARGET_LIBRARY[${i}]}"
echo "Run : ${cmd}"
$(${cmd})

echo " "
done
