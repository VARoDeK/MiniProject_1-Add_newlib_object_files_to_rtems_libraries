# MiniProject 1
## _(Add newlib object files to rtems libraries)_

---

## Introduction

I got an opportunity to be a [GSoC 2019 Student](https://summerofcode.withgoogle.com/projects/#6480553270837248).

My project POSIX Compliance, required to port [ndbm](http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/ndbm.h.html) header to newlib.

---

## Blocker/Problem for which the Script was made.

Please first have a look at my project sandboxing, it will be easy for me to explain then. [Click Here](https://github.com/VARoDeK/MyNotes/blob/master/RTEMS/project_sandboxing.md).

* I ported `ndbm.h` in `~/development/newlib/newlib-cygwin/newlib/libc/include`.
* I ported `ndbm.c` in `~/development/newlib/newlib-cygwin/newlib/libc/search`and made entry in `Makefile.am`.

Then I compiled newlib for sparc-rtems5, using these [steps](https://github.com/VARoDeK/MyNotes/blob/master/Newlib/CompileForVariousArchitectures/newlib_compile_for_sparc.md).

Here, it is generating `lib_a-ndbm.o`, and I am able to track function symbols using `nm` command.

---

I created patch of ndbm port   `0001-port-ndbm.patch`.

I placed it inside `~/development/rtems/rsb/rtems/patches`.


Then I made the entry in `~/development/rtems/rsb/rtems/config/tools/rtems-gcc-fb371a33fa6-newlib-5c2a3661c.cfg`.

_(after exploring, i found its the configuration file used by RSB builder for newlib)_.



And build the Toolchain again . [Refer](https://github.com/VARoDeK/MyNotes/blob/master/RTEMS/InstallOnHost/install_sparc_for_testing_mode.md)

`../source-builder/sb-set-builder --prefix=/home/varodek/development/rtems/5 5/rtems-sparc`


I checked inside `~/development/rtems/5`
But I was not able to find function-symbols for ndbm.

Later found out, that `lib_a-ndbm.o` is not present, hence 'undefined reference' error was coming up, while running `make -j 2` in `~/development/rtems/kernel/erc32`.

---

## Method I found

I can pick all the `lib_a-ndbm.o` files from `~development/newlib/b-sparc-rtems5-newlib` and add them to `~/development/rtems/5/` using `ar r` and `ranib`.

---
