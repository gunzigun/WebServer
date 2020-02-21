#!/bin/sh

#在liunx脚本中可用set -x就可有详细的日志输出.免的老是要echo了
#set -x是开启，set +x是关闭
set -x

SOURCE_DIR=`pwd`

#${file:-my.file.txt} ：file为空时，返回my.file.txt
#${file:+my.file.txt} ：file不空时，返回my.file.txt
BUILD_DIR=${BUILD_DIR:-../build}
BUILD_TYPE=${BUILD_TYPE:-Debug}

mkdir -p $BUILD_DIR/$BUILD_TYPE \
    && cd $BUILD_DIR/$BUILD_TYPE \
    && cmake \
            -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
            $SOURCE_DIR \
    && make $*