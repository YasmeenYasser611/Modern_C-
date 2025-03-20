#include "Transaction.h"

// Constructor for Transaction that initializes the type, amount, and timestamp
Transaction::Transaction(std::string_view type, double amount)
    : type(type), amount(amount), timeStamp(getCurrentTime()) {}

