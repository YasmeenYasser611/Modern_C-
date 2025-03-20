#ifndef TRANSACTION_H
#define TRANSACTION_H

#include <string_view>   // Lightweight string library
#include "Utils.h" // Include utility functions (like getCurrentTime())

class Transaction {
public:
    std::string type;   // Transaction type (Deposit/Withdraw)
    double amount;      // Amount involved in the transaction
    std::string timeStamp; // Timestamp of the transaction

    Transaction(std::string_view type, double amount);
};

#endif // TRANSACTION_H

