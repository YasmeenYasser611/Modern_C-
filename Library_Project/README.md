# 📚 Library Management System  

## 📖 Overview  
This project is a **Library Management System** that allows users to manage books and library members (students & teachers). It uses **Object-Oriented Programming (OOP) concepts** such as **inheritance, polymorphism, composition, and aggregation** to model a real-world library system.  

---

## 🛠 Features
✅ Add books to the library 📚  
✅ Add users (Students & Teachers) 👩‍🎓👨‍🏫  
✅ Display book details and check availability 🔍  
✅ Borrow and return books 🏷  
✅ Memory management with proper cleanup 🗑  

---

## 📂 Project Structure
```
LibrarySystem/
├── includes/
│   ├── Book.hpp
│   ├── Borrowable.hpp
│   ├── Library.hpp
│   ├── Student.hpp
│   ├── Teacher.hpp
│   └── User.hpp
├── src/
│   ├── Book.cpp
│   ├── Borrowable.cpp
│   ├── Library.cpp
│   ├── Student.cpp
│   ├── Teacher.cpp
│   └── User.cpp
├── main.cpp
└── README.md
```

- **`includes/`** → Header files for all classes  
- **`src/`** → Source files implementing the class functionalities  
- **`main.cpp`** → Entry point of the program  
- **`README.md`** → Documentation  

---

## 🛠 Technologies Used
- **C++** (Object-Oriented Programming)  
- **STL (Standard Template Library)** (for `std::vector`)  
- **Memory Management** (dynamic allocation and deallocation)  

---

## 🏛️ Class Overview
| Class       | Description |
|------------|------------|
| **`Borrowable`** | Abstract class for borrowable items |
| **`Book`** | Represents a book in the library |
| **`User`** | Base class for all users (students & teachers) |
| **`Student`** | Represents a student (inherits `User`) |
| **`Teacher`** | Represents a teacher (inherits `User`) |
| **`Library`** | Manages books and users |

---

## 🚀 How to Compile & Run
### **🔧 Compilation**
Run the following command in the terminal to compile the project:  
```sh
g++ -o LibrarySystem src/*.cpp -Iincludes
```

### **▶️ Running the Program**
After compiling, run the program with:  
```sh
./LibrarySystem
```

---

## 📝 Example Output
```
Library Books: 
Book ID: 123 , Book Name: C++ Book , Book Author: Yasmeen , Availability: YES
Book ID: 456 , Book Name: Linux Book , Book Author: Yasser , Availability: YES
Book ID: 789 , Book Name: Android Book , Book Author: Mohamed , Availability: YES

Library Users:
Student Id: 100 , Student Name: Ahmed
Teacher Id: 250 , Teacher Name: Ali
```

---

## 📌 Notes
- The **`Borrowable`** class is abstract and forces derived classes to implement `borrowItem()` and `returnItem()`.  
- The **`Library`** class uses **composition** for books (they are destroyed with the library) and **aggregation** for users (users can exist outside the library).  
- Proper **memory management** is implemented by deleting dynamically allocated users in the `Library` destructor.  

---


