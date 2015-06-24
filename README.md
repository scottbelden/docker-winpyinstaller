docker-winpyinstaller
=====================

This is intended to use docker to create a windows executable of a python
script. Therefore, you can develop a script on a non Windows environment,
package it up into a single executable, and then move that executable to a
Windows environment where it can be run.

## Building the image

To build the image, simply do the following:

```sh
./build/build.sh
```

This will install wine, Windows python, pywin32, pyinstaller, as well as the
Windows compiler for Python so that scripts requiring compiled dependencies can
be built.

## Building the Windows executable

To build the executable, simply do the following:

```sh
./run.sh /path/to/source /path/to/script.py
```

If your script has dependencies, they should be defined in a requirements.txt
in the source folder.
