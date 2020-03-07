---
description: 基本知识
---

# CMake



```text
#Debug/Release
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

#添加文件
include_directories(include)
source_group(src)
#添加定义
add_definitions(-DWHATFUCK=$ENV{LOGNAME})
#添加选项
option(WHAT "Just a profile" ON)
if(WHAT STREQUAL "ON")
endif()
#添加子cmake工程,指定build中目录的名字为bin
add_subdirectory(src bin)
#执行命令
if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    execute_process(COMMAND pwd COMMAND tr -d '\d' OUTPUT_VARIABLE OPERATING_SYSTEM)
endif()
add_custom_target(upload COMMAND upload.py "${CMAKE_CURRENT_BINARY_DIR}/poseidon" DEPENDS ${CMAKE_PROJECT_NAME})
#处理名称占用问题
project(hello)
set(LIB_SRC hello.c)
set(APP_SRC main.c)
add_library(libhello SHARED ${LIB_SRC})  #默认静态库
set_target_properties(libhello PROPERTIES OUTPUT_NAME "hello")
add_executable(hello ${APP_SRC})
target_link_libraries(hello libhello)

#XP平台动态库
#define LIBHELLO_API __declspec(dllexport)
LIBHELLO_API void hello(const char* name);
#添加find_package搜索目录
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/src")
#编译器检查
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -march=i686")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x -march=i686")
endif()
#Boost
set(BOOST_ROOT C:/boost_1_65_0)
set(BOOST_LIBRARY_DIR C:/boost_1_65_0/stage/lib)
set(Boost_INCLUDE_DIR C:/boost_1_65_0)
#用于将当前目录下的所有源文件的名字保存在变量 DIR_SRCS 中
#aux_source_directory(. DIR_SRCS)
set(Boost_USE_STATIC_LIBS       ON)     #only find static libs
set(Boost_USE_MULTITHREADED     ON)
#set(Boost_USE_STATIC_RUNTIME    ON)
find_package(Boost REQUIRED COMPONENTS
        system filesystem date_time thread chrono program_options
        log_setup log)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIR})
    link_directories(${Boost_LIBRARYDIR})
    target_link_libraries(cpp_test ${Boost_LIBRARIES} ws2_32 wsock32)
endif()
# 使用debug信息查看程序去哪里寻找共享文件库
LD_DEBUG=libs ./test -v
# 我已经安装了libevent为什么还是提示找不到libevent-1.4.so.2哪？ 链接
# 安装共享库后要注意共享库路径设置问题, 如下:
#    1) 如果共享库文件安装到了/lib或/usr/lib目录下, 那么需执行一下ldconfig命令
    ldconfig命令的用途, 主要是在默认搜寻目录(/lib和/usr/lib)以及动态库配置文件/etc/ld.so.conf内所列的目录下, 搜索出可共享的动态链接库(格式如lib*.so*), 进而创建出动态装入程序(ld.so)所需的连接和缓存文件. 缓存文件默认为/etc/ld.so.cache, 此文件保存已排好序的动态链接库名字列表. 
    2) 如果共享库文件安装到了/usr/local/lib(很多开源的共享库都会安装到该目录下)或其它"非/lib或/usr/lib"目录下, 那么在执行ldconfig命令前, 还要把新共享库目录加入到共享库配置文件/etc/ld.so.conf中, 如下:
    # cat /etc/ld.so.conf  
    # include ld.so.conf.d/*.conf  
配置完后执行以下ldconfig命令
    3) 如果共享库文件安装到了其它"非/lib或/usr/lib" 目录下,  但是又不想在/etc/ld.so.conf中加路径(或者是没有权限加路径). 那可以export一个全局变量LD_LIBRARY_PATH, 然后运行程序的时候就会去这个目录中找共享库.
     LD_LIBRARY_PATH的意思是告诉loader在哪些目录中可以找到共享库. 可以设置多个搜索目录, 这些目录之间用冒号分隔开. 比如安装了一个mysql到/usr/local/mysql目录下, 其中有一大堆库文件在/usr/local/mysql/lib下面, 则可以在.bashrc或.bash_profile或shell里加入以下语句即可:
export LD_LIBRARY_PATH=/usr/local/mysql/lib:$LD_LIBRARY_PATH
一般来讲这只是一种临时的解决方案, 在没有权限或临时需要的时候使用.
# windows Glib--->>
include_directories ("D:/cygwin64/usr/include/glib-2.0")
include_directories("D:/cygwin64/lib/glib-2.0/include")
LINK_DIRECTORIES("D:/cygwin64/usr/x86_64-w64-mingw32/sys-root/mingw/lib")
LINK_DIRECTORIES("D:/cygwin64/usr/x86_64-w64-mingw32/sys-root/mingw/bin")
LINK_DIRECTORIES("D:/cygwin64/usr/i686-w64-mingw32/sys-root/mingw/bin")
LINK_DIRECTORIES("D:/cygwin64/usr/i686-w64-mingw32/sys-root/mingw/lib")
LINK_DIRECTORIES("D:/cygwin64/lib")
FIND_LIBRARY(RUNTIME_LIB glib-2.0 )
LINK_LIBRARIES(glib-2.0 gobject-2.0 gthread-2.0 gmodule-2.0)
ADD_DEFINITIONS(`pkg-config --cflags --libs glib-2.0`)
target_link_libraries(cpp_test glib-2.0)
# linux Glib--->>
include_directories(/usr/include/glib-2.0)
include_directories(/usr/lib/x86_64-linux-gun/glib-2.0/include)
link_directories(/usr/lib/x86_64-linux-gun)
target_link_libraries(${CMAKE_PROJECT_NAME} glib-2.0 gthread-2.0 gobject-2.0 gmodule-2.0)nd
```

### find\_package与CMake如何查找链接库详解

> 还是CSDN查找吧 [http://www.yeolar.com/note/2014/12/16/cmake-how-to-find-libraries/\#id18](http://www.yeolar.com/note/2014/12/16/cmake-how-to-find-libraries/#id18)



