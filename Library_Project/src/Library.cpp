#include "../includes/Library.hpp"
#include <iostream>

void Library::addBook(const Book& book)
{
    books.push_back(book);
}

void Library::addUser(User* user)
{
    users.push_back(user);
}

void Library::displayBooks() const
{
    std::cout << "Library Books:\n";
    for (const auto& book : books)
    {
        book.displayBookInfo();
    }
}

void Library::displayUsers() const
{
    std::cout << "Library Users:\n";
    for (const auto& user : users)
    {
        user->displayUserInfo();
    }
}

Library::~Library()
{
//we need to delete the users because the will nor destroy automatically , this is strong aggregation not composition 
    for (auto user : users)
    {
        delete user;
    }
}

