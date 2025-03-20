#ifndef ATM_H
#define ATM_H

#include <vector>        // For containers (to save accounts and transactions)
#include <memory>        // For smart pointers (shared_ptr)
#include "Account.h"
#include "CentralBank.h"  // Include the parent class

class ATM : public CentralBank{  // Inherit from CentralBank
private:
    std::vector<std::shared_ptr<Account>> accounts; // List of accounts in the ATM

public:
    void addAccount(std::string_view accNumber, int pin, double initialBalance); // Function to add an account
    std::shared_ptr<Account> authenticate(std::string_view accNumber, int pinNum); // Function to authenticate users
};

#endif // ATM_H

