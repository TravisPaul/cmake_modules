## Usage

Add as a git submodule:
```shell
  git submodule add git://github.com/TravisPaul/cmake_modules
```

Add the following to CMakeLists.txt:
```cmake
set(CMAKE_MODULE_PATH
    ${CMAKE_SOURCE_DIR}/cmake_modules ${CMAKE_MODULE_PATH})
```

Then use the find_package command to find the libraries:
```cmake
find_package(Fcgi)
find_package(Sds)
find_package(lua)
```
