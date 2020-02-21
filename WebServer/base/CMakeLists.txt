set(LIB_SRC
    AsyncLogging.cpp
    CountDownLatch.cpp
    FileUtil.cpp
    LogFile.cpp
    Logging.cpp
    LogStream.cpp
    Thread.cpp
)

#指定的源文件生成链接文件，然后添加到工程中去
add_library(libserver_base ${LIB_SRC})
#生成此静态库需要依赖的库
target_link_libraries(libserver_base pthread rt)

#修改静态库的输出名字为server_serverbase
set_target_properties(libserver_base PROPERTIES OUTPUT_NAME "server_base")

add_subdirectory(tests)
