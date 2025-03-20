#include "CentralBank.h"
#include <iostream>

#include "ATM.h"


CentralBank::CentralBank() : bankName("Default Bank") {} // Default constructor

CentralBank::CentralBank(std::string_view name) : bankName(name) {}

// Function to add a new ATM to the system
void CentralBank::addATM(std::shared_ptr<ATM> atm) {
    atms.push_back(atm);
    std::cout << "New ATM added to the system. Total ATMs: " << atms.size() << "\n";
}

// Function to list all available ATMs
void CentralBank::listATMs() const {
    std::cout << "Available ATMs: " << atms.size() << "\n";
}

