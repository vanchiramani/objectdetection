#!/bin/bash
cmake ../../../ \
-DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
-DCMAKE_BUILD_TYPE=Release \
-DANDROID_ABI="armeabi-v7a" \
-DANDROID_STL=gnustl_static \
-DCMAKE_BUILD_TYPE=Release \
-DANDROID_NATIVE_API_LEVEL=android-21  \
-DANDROID_TOOLCHAIN=gcc \
-DMNN_BUILD_FOR_ANDROID_COMMAND=true \
-DMNN_DEBUG=false \
-DNATIVE_LIBRARY_OUTPUT=. $1 $2 $3

make -j4
