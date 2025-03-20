#include "ATM.h"
#include <iostream>

void ATM::addAccount(std::string_view accNumber, int pin, double initialBalance) {
    accounts.emplace_back(std::make_shared<Account>(accNumber, pin, initialBalance)); // Add new account to list
}

std::shared_ptr<Account> ATM::authenticate(std::string_view accNumber, int pinNum) {
    for (const auto& acc : accounts) {
        if (acc->authenticate(pinNum) && acc->getAccountNumber() == accNumber) { // Check both PIN and account number
            std::cout << "Authentication successful.\n";
            return acc;
        }
    }
    std::cout << "Authentication failed.\n";
    return nullptr;
}

