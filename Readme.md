# Wrap_libgit2 
`Wrap_libgit2` is an Eiffel binding of [libgit2](https://libgit2.org/) C library
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

`libgit2` is a portable, pure C implementation of the Git core methods provided as a re-entrant linkable library with a solid API, 
allowing you to write native speed custom Git applications in any language which supports C bindings.

## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [libgit2 v1.0.0](https://github.com/libgit2/libgit2/releases).

### Status
The binding is work in progress.
Tested on Linux and Windows 64 bits.

### Download and Install

[Guide to linking libgit2](https://libgit2.org/docs/guides/build-and-link/) on various platforms

#### Linux

On Linux to install version 1.0.0 you will need to do the following. 

	$ mkdir build
	$ cd build
	$ cmake ..
	$ sudo cmake --build . --target install

Rebuild the ldconfig cache using
 
 	sudo ldconfig 
 
Optionally you can use [vckpg](https://github.com/Microsoft/vcpkg), a C++ Library Manager for Windows, Linux, and MacOS.
```
	./vcpkg install libgit2:x64-linux
```
Windows

Using vcpkg (https://github.com/microsoft/vcpkg) tool, you can install libgit2 library

```
	vcpkg install libgit2:x64-windows
```

Then copy the `git2.lib` to %LIBRARY_PATH%wrap_library/library/C/lib
Be sure to have the `git2.dll` on the PATH.


## Examples 

* [Git Init](./examples/init) 		`shows how to initialize a new repo`
* [Git Status](./examples/status)	`shows how to use the status APIs` 
* [Git Add](./examples/add)		`shows how to modify the index`
* [Git Checkout](./examples/checkout)	`shows how to perform checkouts`.
* [Git Describe](./examples/describe)	`shows how to describe commits`.
* [Git ls-files](./examples/ls_files)	`shows how to view all files currently in the index.`
* [Git push](./examples/push)		`shows how to git push <remote> <branch>`
* [Git ls_remote](./examples/ls_remote)	`shows how to list remote references.`
* [Git clone](./examples/cloe)	`shows how to list perform clones.`


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_libgit2.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_libgit2.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 




