/*

BOOK Class will inherit from Borrowable class

*/


#pragma once
#include "Borrowable.hpp"
#include <string>
#include <iostream>

class Book : public Borrowable 
{
    private:
        std::string BookName;
        int BookId;
        std::string BookAuthor;
        bool isAvailable;
    
    public:
        Book();
        Book(std::string bookName, int bookId, std::string bookAuthor);

        void displayBookInfo() const; //geter
        bool checkAvailability() const; //check if book exist or not in lib

	//to donor convert the class to virtual class we must implement the parent virtual function 
        void borrowItem() override;
        void returnItem() override;

        ~Book() {};
};

