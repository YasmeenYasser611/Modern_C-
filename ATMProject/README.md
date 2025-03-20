# 🏦 ATM Simulation System

## 📌 Project Overview

This project is a Modern C++-based ATM simulation system designed for secure user authentication, transactions, and account management. It follows OOP principles and is structured with UML design patterns.

## 📂 Project Structure

```
ATM_Project/
│── build/                # Compiled binaries and CMake build files
│── inc/                  # Header files
│   ├── Account.h
│   ├── ATM.h
│   ├── CentralBank.h
│   ├── Transaction.h
│   ├── Utils.h
│── srs/                  # Source files
│   ├── Account.cpp
│   ├── ATM.cpp
│   ├── CentralBank.cpp
│   ├── main.cpp
│   ├── Transaction.cpp
│   ├── Utils.cpp
│── transactions_123.txt   # Transaction logs
│── CMakeLists.txt         # CMake build configuration
│── README.md              # Project documentation
```

## 🛠️ Features

✔️ **User Authentication** (PIN-based login with hashed PINs for security)  
✔️ **Account Management** (Create, lock, unlock, and manage accounts)  
✔️ **Deposit & Withdraw** (Secure transactions with validation)  
✔️ **Transaction History** (Tracks deposits, withdrawals, and timestamps)  
✔️ **Security Features** (Locks account after 3 failed login attempts)  

## 🏗️ Class Descriptions

### 🔹 Account Class
Handles individual user accounts and transactions.
```cpp
class Account {
private:
    std::string accNumber;
    int pin;
    double balance;
    std::vector<Transaction> transactions;
    int failedAttempts = 0;
    bool locked = false;
    std::string pinHash;

public:
    Account(std::string_view accNumber, int pin, double initBalance);
    void logTransaction(const Transaction& transaction);
    bool authenticate(int pinNumber);
    std::string getAccountNumber() const;
    bool deposit(double amount);
    bool withdraw(double amount);
    void showTransactionHistory() const;
    void sortTransactionByAmount();
    void displayBalance() const;
    void resetFailedAttempts();
    bool isLocked() const;
};
```

### 🔹 ATM Class
Manages user authentication and transactions.
```cpp
class ATM : public CentralBank {
private:
    std::vector<std::shared_ptr<Account>> accounts;

public:
    void addAccount(std::string_view accNumber, int pin, double initialBalance);
    std::shared_ptr<Account> authenticate(std::string_view accNumber, int pinNum);
};
```

### 🔹 CentralBank Class
Oversees multiple ATMs in the system.
```cpp
class CentralBank {
protected:
    std::string bankName;
    std::vector<std::shared_ptr<ATM>> atms;

public:
    CentralBank();
    CentralBank(std::string_view name);
    void addATM(std::shared_ptr<ATM> atm);
    void listATMs() const;
};
```

### 🔹 Transaction Class
Stores transaction details (deposit, withdrawal).
```cpp
class Transaction {
public:
    std::string type;
    double amount;
    std::string timeStamp;

    Transaction(std::string_view type, double amount);
};
```

### 🔹 Utility Functions
Provides helper functions, including timestamping.
```cpp
std::string getCurrentTime();
```

## 🔧 Build

### 1️⃣ Build the project using CMake:
```sh
cmake -S . -B build
cmake --build build
```

### 2️⃣ Run the executable:
```sh
./build/atm
```

## 📜 UML Diagrams

### Class Diagram
![Class Diagram](ClassDaigram.png)

### Sequence Diagrams
![Sequence Diagram 1](SequenceDiagram_1.png)  

![Sequence Diagram 2](SequenceDiagram_2.png)  

![Sequence Diagram 3](SequenceDiagram_3.png)  
