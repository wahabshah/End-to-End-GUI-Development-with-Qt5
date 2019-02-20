platform_path = unknown
compiler_path = unknown
processor_path = unknown
build_path = unknown

PLATFORM_WIN {
    platform_path= windows
}
PLATFORM_OSX {
    processor_path= osx
}
PLATFORM_LINUX {
    platform_path= linux
}

COMPILER_GCC {
    compiler_path= gcc
}
COMPILER_MSVC2017 {
    compiler_path = msvc2017
}
COMPILER_CLANG {
    compiler_path = clang
}

PROCESSOR_x64 {
    processor_path= x64
}
PROCESSOR_x86_64 {
   processor_path= x86_64
}

BUILD_DEBUG {
    build_path= debug
}
BUILD_RELEASE {
    build_path= release
}

DESTINATION_PATH = $$platform_path/$$compiler_path/$$processor_path/$$build_path
message(Dest path: $${DESTINATION_PATH})