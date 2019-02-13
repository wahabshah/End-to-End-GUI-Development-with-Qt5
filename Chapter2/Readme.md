# cm-lib

* As this is a library project, we do not need to load the default GUI module, so we exclude it using the QT variable. 
* The TARGET variable is the name we wish to give our binary output (for example, cm-lib.dll). It is optional and will default to the project name if not provided, but we’ll be explicit. 
* Next, rather than having a TEMPLATE of app as we saw in our scratchpad application, this time we use lib to give us a library. 
* We add c++14 features via the CONFIG variable.
* The cm-lib_global.h file is a helpful little bit of preprocessor boilerplate we can use to export our shared library symbols, and you’ll see that put to use soon. We use the CMLIB_LIBRARY flag in the DEFINES variable to trigger this export.
* Finally, we have slightly rewritten the SOURCES and HEADERS variable lists to account for the new file locations after we moved things around a bit
* We add the source folder (which is where all of our code will live) to the INCLUDEPATH so that the path is searched when we use #include statements.


To load a QML from main.cpp, the following is the scheme:- 
>>qrc:<prefix><filename>
We previously had a `/` prefix and a `views/main.qml` relative filename. This gave us `qrc:/views/main.qml`.

A prefix of `/` isn’t terribly descriptive. As you add more and more QML files, it’s really helpful to organize them into blocks with meaningful prefixes. Having unstructured resource blocks also makes the Projects pane ugly and more difficult to navigate, as you just saw when you had to drill down through views.qrc > / > views. So, the first step is to rename the prefix from / to /views.

However, with a prefix of `/views` and a relative filename of `views/main.qml`, our URL is now `qrc:/views/views/main.qml`.

This is worse than it was before, and we still have a deep folder structure in views.qrc. Fortunately, we can add an alias for our file to make both of these problems go away. You can use the alias of a resource in place of the relative path, so if we assign an alias of main.qml, we can replace views/main.qml with simply main.qml, giving us `qrc:/views/main.qml`.


Project MESSAGE: PLATFORM_WIN
Project MESSAGE: COMPILER_MSVC2017
Project MESSAGE: PROCESSOR_x64
Project MESSAGE: BUILD_RELEASE

Dest path: windows/msvc2017/x64/release


# Build

```sh
cd cm
mkdir build
cd build
qmake ..
```