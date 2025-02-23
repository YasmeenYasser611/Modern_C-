#include "includes/Library.hpp"
#include "includes/Student.hpp"
#include "includes/Teacher.hpp"

int main()
{
    Library lib;
    lib.addBook(Book("C++ Book", 123, "Yasmeen"));
    lib.addBook(Book("Linux Book", 456, "Yasser"));
    lib.addBook(Book("Android Book", 789, "Mohamed"));
    
    lib.addUser(new Student("Ahmed", 100));
    lib.addUser(new Teacher("Ali", 250));
    
    lib.displayBooks();
    lib.displayUsers();

    return 0;
}

