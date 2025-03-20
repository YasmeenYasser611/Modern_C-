#ifndef ACCOUNT_H
#define ACCOUNT_H

#include <string>
#include <vector>
#include "Transaction.h"

class Account {
private:
    std::string accNumber;  // Unique account number
    int pin;                // PIN for authentication
    double balance;         // Account balance
    std::vector<Transaction> transactions; // List of transactions
    int failedAttempts = 0;  // Track failed login attempts
    bool locked = false;     // Lock status of the account
    std::string pinHash;  // Store the hashed PIN
    
public:
    Account(std::string_view accNumber, int pin, double initBalance); // Constructor using initialization list

    void logTransaction(const Transaction& transaction);
    bool authenticate(int pinNumber) ; // Function to verify PIN
    std::string getAccountNumber() const;   // Getter for account number
    bool deposit(double amount);            // Function to deposit money
    bool withdraw(double amount);           // Function to withdraw money
    void showTransactionHistory() const;    // Function to display transaction history
    void sortTransactionByAmount();         // Function to sort transactions by amount
    void displayBalance() const;            // Function to display current balance
    void resetFailedAttempts();  // To reset after a successful login
    bool isLocked() const;       // Check if the account is locked
};

#endif // ACCOUNT_H



