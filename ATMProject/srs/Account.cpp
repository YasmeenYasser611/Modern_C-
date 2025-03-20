#include "Account.h"
#include <iostream>
#include <algorithm>     // For sorting
#include <fstream>
#include <openssl/sha.h>
#include <sstream>  // Required for std::ostringstream
#include <iomanip>  // Required for setw() and setfill()


std::string hashPIN(int pin) {
    std::ostringstream oss;
    oss << pin;
    std::string pinStr = oss.str();

    unsigned char hash[SHA256_DIGEST_LENGTH];
    SHA256(reinterpret_cast<const unsigned char*>(pinStr.c_str()), pinStr.length(), hash);

    std::ostringstream hashStr;
    for (int i = 0; i < SHA256_DIGEST_LENGTH; i++) {
        hashStr << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(hash[i]);
    }
    return hashStr.str();
}


// Function to log transactions into a file
void Account::logTransaction(const Transaction& transaction) {
    std::ofstream file("transactions_" + getAccountNumber() + ".txt", std::ios::app);
    if (file) {
        file << transaction.type << " " 
             << transaction.amount << " "
             << transaction.timeStamp << "\n";  // Write timestamp to file
    }
}

// Constructor: Initialize account details using initialization list

Account::Account(std::string_view accNumber, int pin, double initBalance)
    : accNumber(accNumber), pinHash(hashPIN(pin)), balance(initBalance) {}

// Authenticate user with PIN and implement login security
bool Account::authenticate(int pinNumber) {
    if (locked) {
        std::cout << "Account is locked due to multiple failed attempts.\n";
        return false;
    }

    if (pinHash == hashPIN(pinNumber)) {
        std::cout << "Login successful.\n";
        resetFailedAttempts();
        return true;
    } else {
        failedAttempts++;
        std::cout << "Incorrect PIN. Attempts left: " << (3 - failedAttempts) << "\n";

        if (failedAttempts >= 3) {
            locked = true;
            std::cout << "Account locked due to multiple failed login attempts.\n";
        }
        return false;
    }
}


// Reset failed attempts after a successful login
void Account::resetFailedAttempts() {
    failedAttempts = 0;
}

// Check if the account is locked
bool Account::isLocked() const {
    return locked;
}

// Return account number
std::string Account::getAccountNumber() const {
    return accNumber;
}

// Deposit function to add money to account
bool Account::deposit(double amount) {
    if (amount <= 0) {
        std::cout << "Invalid deposit amount.\n";
        return false;
    }
    balance += amount;
    Transaction transaction("Deposit", amount); 
    logTransaction(transaction);  // Log transaction to file
    return true;
}

// Withdraw function to deduct money from account
bool Account::withdraw(double amount) {
    if (amount > balance) {
        std::cout << "Insufficient balance.\n";
        return false;
    }
    balance -= amount;
    Transaction transaction("Withdraw", amount); // Transaction records timestamp automatically
    logTransaction(transaction);  // Save transaction to file
    return true;
}

// Function to display transaction history
void Account::showTransactionHistory() const {
    std::ifstream file("transactions_" + getAccountNumber() + ".txt");
    std::string line;
    if (file) {
        while (std::getline(file, line)) {
            std::cout << line << "\n";
        }
    } else {
        std::cout << "No transactions found.\n";
    }
}

// Function to sort transactions by amount in ascending order
void Account::sortTransactionByAmount() {
    std::sort(transactions.begin(), transactions.end(),
              [](const Transaction& a, const Transaction& b) {
                  return a.amount < b.amount; // Sort transactions in ascending order
              });

    std::cout << "Transactions sorted in ascending order by amount.\n";
}

// Display the current balance of the account
void Account::displayBalance() const {
    std::cout << "Current Balance: " << balance << " $\n";
}
