/*
user class
*/

#pragma once
#include <string>
#include <iostream>

class User 
{
    protected: //so teacher and student when inhert could see this 
        std::string userName;
        int userId;
    
    public:
        User(std::string userName, int userId); 
        virtual void displayUserInfo() const = 0; //getter //virtual for the dynamic binding , when i use pointer from user class not call the parent virtion call the teacher or student virsion 
        virtual ~User() {};
};

