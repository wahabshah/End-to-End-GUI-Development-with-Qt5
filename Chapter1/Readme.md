
# scratchpad.pro 

Our project (.pro) files are parsed by a utility called qmake, which in turn generates Makefiles that drive the building of the application

* `TEMPLATE` TEMPLATE tells qmake what type of project this is. 
>> In our case, it’s an executable application that is represented by app. Other values we are interested in are lib for building library binaries and subdirs for multi project solutions
* `QT` flag specifies the Qt modules we want to use. Core and GUI are included by default
* `CONFIG` flag allows you to add project configuration and compiler options
* `SOURCES` flag is a list of all the *.cpp source files we want to include in the project
* `RESOURCES` flag is a list of all the `resource collection` files (*.qrc) included in the project
>> Resource collection files are used for managing application resources such as images and fonts, but most crucially for us, our QML files

# main.cpp

All we are doing here is instantiating a Qt GUI application object and asking it to load our main.qml file.

We asked Qt to load the `qrc:/main.qml` file. This essentially breaks down as “look for the file in a qrc file with a prefix of / and a name of main.qml”.
Now here in our qrc file, we have created a qresource element with a prefix property of /. Inside this element, we have a collection of resources (albeit only one of them) that has the name main.qml.

Think of qrc files as a portable filesystem. Note that the resource files are located relative to the .qrc file that references them. In this case, our main.qml file is in the same folder as our qml.qrc file

# main.qml

The import lines are similar to #include statements in C++, though rather than including a single header file, they import a whole module. In this case, we want the base QtQuick module to give us access to all the core QML types and also the QtQuick window module to give us access to the Window component. Modules are versioned and generally, you will want to use the latest version for the release of Qt you are using.


# Build

1. Install Xserver on windows
2. Compile and link

    ```sh
    mkdir build
    cd build
    qmake ..
    ```

    ```
    g++ -c -pipe -O2 -std=gnu++1y -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_GUI_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -I../../Chapter1 -I. -I/opt/Qt5.10.1/5.10.1/gcc_64/include -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtQuick -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtGui -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtQml -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtNetwork -I/opt/Qt5.10.1/5.10.1/gcc_64/include/QtCore -I. -isystem /usr/include/libdrm -I/opt/Qt5.10.1/5.10.1/gcc_64/mkspecs/linux-g++ -o main.o ../main.cpp
    g++ -Wl,-O1 -Wl,-rpath,/opt/Qt5.10.1/5.10.1/gcc_64/lib -o scratchpad main.o qrc_qml.o   -L/opt/Qt5.10.1/5.10.1/gcc_64/lib -lQt5Quick -lQt5Gui -lQt5Qml -lQt5Network -lQt5Core -lGL -lpthread
    ```
3. Run the program

    ```sh
    ./scratchpad
    ```