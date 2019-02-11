# cm-lib

* As this is a library project, we do not need to load the default GUI module, so we exclude it using the QT variable. 
* The TARGET variable is the name we wish to give our binary output (for example, cm-lib.dll). It is optional and will default to the project name if not provided, but we’ll be explicit. 
* Next, rather than having a TEMPLATE of app as we saw in our scratchpad application, this time we use lib to give us a library. 
* We add c++14 features via the CONFIG variable.
* The cm-lib_global.h file is a helpful little bit of preprocessor boilerplate we can use to export our shared library symbols, and you’ll see that put to use soon. We use the CMLIB_LIBRARY flag in the DEFINES variable to trigger this export.
* Finally, we have slightly rewritten the SOURCES and HEADERS variable lists to account for the new file locations after we moved things around a bit
* We add the source folder (which is where all of our code will live) to the INCLUDEPATH so that the path is searched when we use #include statements.

# Build

```sh
cd cm
mkdir build
cd build
qmake ..
```