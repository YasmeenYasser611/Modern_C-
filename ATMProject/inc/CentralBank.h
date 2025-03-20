#ifndef CENTRAL_BANK_H
#define CENTRAL_BANK_H

#include <vector>
#include <memory>
#include <string>       
#include <string_view>  

//If you include ATM.h inside CentralBank.h, and ATM.h also includes CentralBank.h, you create a circular dependency.
class ATM;  

class CentralBank {
protected:
    std::string bankName;
    std::vector<std::shared_ptr<ATM>> atms; // Store multiple ATMs

public:
     CentralBank();  // Default constructor
     CentralBank(std::string_view name); 
    // Function to add a new ATM to the system
    void addATM(std::shared_ptr<ATM> atm);

    // Display all available ATMs
    void listATMs() const;
};

#endif // CENTRAL_BANK_H

