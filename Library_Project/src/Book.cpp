#include "../includes/Book.hpp"

Book::Book(std::string bookName, int bookId, std::string bookAuthor)
{
    this->BookName = bookName;
    this->BookId = bookId;
    this->BookAuthor = bookAuthor;
    this->isAvailable = true;
}

void Book::displayBookInfo() const
{
    std::cout << "Book ID: " << BookId << " , ";
    std::cout << "Book Name: " << BookName << " , ";
    std::cout << "Book Author: " << BookAuthor << " , ";
    std::cout << "Book Availability: " << (isAvailable ? "YES" : "NO") << std::endl;
}

bool Book::checkAvailability() const 
{
    return isAvailable;
}

void Book::borrowItem()
{
//we should create counter there is how many virtions we should first check the vistions counter
    isAvailable = false;
}

void Book::returnItem()
{
    isAvailable = true;
}

