cmake_minimum_required(VERSION 3.10)

project(ATM_Project)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenSSL REQUIRED)  


# Add include directories
include_directories(inc)

# Add source files
add_executable(atm 
    srs/main.cpp
    srs/Transaction.cpp 
    srs/Account.cpp 
    srs/ATM.cpp 
    srs/Utils.cpp
    srs/CentralBank.cpp

)
target_link_libraries(atm PRIVATE OpenSSL::Crypto)
