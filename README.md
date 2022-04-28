# C++ Template
C++ Template Project
Use this as a template to start creating C++ projects from scratch!

## Tech Stack
* Visual Studio Code
* CMake

## Usage
Use `generate_projects` to create a project inside `build` subdirectory that will be created.
```/bin/bash
bash -c generate_projects.sh
```
Depending on the type of project, you can build them accordingly:
### Visual Studio
```cmd
msbuild ./build/app.sln /p:Configuration=Release
```
### Make
```/bin/bash
cd ./build
make
```