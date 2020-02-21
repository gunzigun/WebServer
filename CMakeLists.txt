cmake_minimum_required(VERSION 2.8)

#定义项目名称
project(WebServer CXX)

#设置debug模式，如果没有这一行将不能调试设断电
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

#设置变量
set(CXX_FLAGS
    -g
    -Wall
    -std=c++11
    -D_PTHREADS
    -Wno-unused-parameter
)

#设置编译器
set(CMAKE_CXX_COMPILER "g++")
#设置debug模式下的编译参数
set(CMAKE_CXX_FLAGS_DEBUG "-O0")
#设置release模式下的编译参数
set(CMAKE_CXX_FLAGS_RELEASE "-O0")

#字符串参数替换
string(REPLACE ";" " " CMAKE_CXX_FLAGS "${CXX_FLAGS}")
#字符转大写
string(TOUPPER ${CMAKE_BUILD_TYPE} BUILD_TYPE)
#消息打印
message(STATUS "CXX_FLAGS = " ${CMAKE_CXX_FLAGS} " " ${CMAKE_CXX_FLAGS_${BUILD_TYPE}})

#在子目录下执行CMakeLists.txt
add_subdirectory(WebServer)
