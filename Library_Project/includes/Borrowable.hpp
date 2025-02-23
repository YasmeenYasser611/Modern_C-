/*

File:LIbrary items which can be borrowed like Books

*/

#pragma once
#include <string>

class Borrowable  //abstract class 
{
    public: 
    	 //virtual to make the one who inhert me must implement this 3 functions
        virtual void borrowItem() = 0;
        virtual void returnItem() = 0;
        virtual ~Borrowable() {};
};

