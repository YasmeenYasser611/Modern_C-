#pragma once
#include "Book.hpp"
#include "User.hpp"
#include <vector>

class Library
{
    private:
        std::vector<Book> books; //composition now librory without books if library distroid the books will distroid automatic too
        std::vector<User*> users; //library has an user = strong aggregation , if library deleted from memory , the user may be exist or not , there is user without library , but no library without users. ---aggregation always uses pointer.
		
    
    public:
        void addBook(const Book& book);
        void addUser(User* user);
        void displayBooks() const;
        void displayUsers() const;
        ~Library();
};

