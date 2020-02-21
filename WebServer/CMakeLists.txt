set(SRCS
    Channel.cpp
    Epoll.cpp
    EventLoop.cpp
    EventLoopThread.cpp
    EventLoopThreadPool.cpp
    HttpData.cpp
    Main.cpp
    Server.cpp
    #ThreadPool.cpp
    Timer.cpp
    Util.cpp
)

# 添加包含目录
include_directories(${PROJECT_SOURCE_DIR}/base)

# 构建可执行文件WebServer
add_executable(WebServer ${SRCS})
#将库文件连接到目标，默认的是动态库优先
#如果要链接静态库需要指明实际的文件
target_link_libraries(WebServer libserver_base)

add_subdirectory(base)
add_subdirectory(tests)
