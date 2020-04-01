# How to generate the code?

## Requirements
You need to have a binary version of WrapC tool and be able to execute it from the library folder.

Before to regenerate the generated code, remove the folder `generated_wrapper`. If you are using geant, just run `geant clean` in other 
case remove it manually.

## Using Automated scripts
Automated scripts will run wrapc with pre and post processing scripts and compiling the C glue code
needed for the library.

### Windows
```
generator.bat
```
### Linux
```
./generator.sh
```

## Using WrapC with geant
$LIB_PATH is the path to the library folder where you checkout the wrap_libgit2 library.

### Wrap libgit2 library

Go to the $LIB_PATH/library

```
    geant wrap_c  -- Wrap C libgit2 library and generate the code under the folder generated_wrapper
```

### Compile the C library
 ```
    geant compile -- Build the C library, in this case generate the eif_libgit2.lib
  ```

***
 
## Using WrapC without geant
  
$LIB_PATH is the path to the library folder where you checkout the wrap_libgit2 library.
At the moment the tool require --output-dir and --full-header to be full paths.
  
### Wrap libgit2 library

  ```
    wrap_c --verbose --output-dir=$LIB_PATH/library/generated_wrapper --full-header=$LIB_PATH/library/C/include/git2.h --config=$LIB_PATH/library/config.xml
  ```


### Compile the C library
```
  cd generated_wrapper\c\src
  finish_freezing -library
```

  
