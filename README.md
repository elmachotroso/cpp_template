# C++ Template (cpp_template)

Author: Andrei Victor  
https://github.com/elmachotroso/cpp_template

A C++ Project Template using CMake and GTest.  
Create new C++ project as a starting point.

## Tech Stack
* Visual Studio Code
* CMake
* GoogleTest (GTest)

## Usage
This framework relies on five use cases with each has its corresponding helper shell scripts to execute.
* Generate Project/Solution
* Build Project/Solution
* Run Test Suites/Cases
* Run Application Binary
* Clean Application Binary
  
### Generate Project/Solution
Use `generate_projects` to create a project inside `build` subdirectory that will be created.

>**WARNING:** The first step of `generate_projects` is to delete the `build` folder tree.

This will run CMake to generate the project for both `Debug` and `Release` configurations.

#### MacOS / Linux
```/bin/bash
./generate_projects.sh
```

#### Windows
```cmd
generate_projects.bat
```

### Build Project/Solution
You can use either `build_release` or `build_debug` to start compiling and linking the projects.  
This will affect both application and Google Test.

#### MacOS / Linux
```/bin/bash
./build_debug.sh
./build_release.sh
```

#### Windows
```cmd
build_debug.bat
build_release.bat
```

### Run Test Suites/Cases
You can use either `test_release` or `test_debug` to run the executable of GoogleTest for this project.

#### MacOS / Linux
```/bin/bash
./test_debug.sh
./test_release.sh
```

#### Windows
```cmd
test_debug.bat
test_release.bat
```

### Run Application Binary
You can use either `run_release` or `run_debug` to run the application binary of this project.

#### MacOS / Linux
```/bin/bash
./run_debug.sh
./run_release.sh
```

#### Windows
```cmd
run_debug.bat
run_release.bat
```

### Clean Application Binary
You can use either `clean_release` or `clean_debug` to clean the application binary of this project.
>**NOTE:** This does not clean the `build` folder. `generate_projects` does the cleaning for `build`.

#### MacOS / Linux
```/bin/bash
./clean_debug.sh
./clean_release.sh
```

#### Windows
```cmd
clean_debug.bat
clean_release.bat
```

## Other Notes
This framework has been tested for:
* `C++20`
* `MacOS` using `make`
* `Windows` using `Visual Studio 2019`