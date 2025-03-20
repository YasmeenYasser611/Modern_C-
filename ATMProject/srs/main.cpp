#include "ATM.h"
#include <iostream>


int main() 
{
    CentralBank bank;
    std::shared_ptr<ATM> atm1 = std::make_shared<ATM>();
    
    bank.addATM(atm1);
    bank.listATMs();  // Show available ATMs at the start

    int choice;
    std::cout << "Welcome to the ATM System!\n";
    std::cout << "1. Sign Up\n2. Login\nChoose an option: ";
    std::cin >> choice;

    std::string accNum;
    int pinNum;
    double initBalance;
    std::shared_ptr<Account> account = nullptr;

    if (choice == 1) {  // Sign-Up
        std::cout << "Enter New Account Number: ";
        std::cin >> accNum;
        std::cout << "Enter New PIN: ";
        std::cin >> pinNum;
        std::cout << "Enter Initial Balance: ";
        std::cin >> initBalance;

        atm1->addAccount(accNum, pinNum, initBalance);  // Create account
        std::cout << "Account Created Successfully! Please log in.\n";
    }

    // Now, proceed with login
    int attempts = 0;
    while (attempts < 3) {
        std::cout << "Enter Account Number: ";
        std::cin >> accNum;
        std::cout << "Enter PIN: ";
        std::cin >> pinNum;

        account = atm1->authenticate(accNum, pinNum);
        if (account) {
            std::cout << "Login successful!\n";
            break;  // Exit loop if login is successful
        } else {
            attempts++;
            if (attempts == 3) {
                std::cout << "Too many failed attempts. Account is now locked.\n";
                return 0;  // Stop execution if account is locked
            }
        }
    }

    // User Actions
    int actionChoice;
    do {
        std::cout << "\nChoose an action:\n";
        std::cout << "1. Deposit\n2. Withdraw\n3. Check Balance\n4. View Transactions\n5. Sort Transactions\n6. Add New ATM\n7. Show Available ATMs\n8. Exit\n";
        std::cout << "Enter choice: ";
        std::cin >> actionChoice;

        double amount;
        switch (actionChoice) {
            case 1:
                std::cout << "Enter deposit amount: ";
                std::cin >> amount;
                account->deposit(amount);
                break;
            case 2:
                std::cout << "Enter withdrawal amount: ";
                std::cin >> amount;
                account->withdraw(amount);
                break;
            case 3:
                account->displayBalance();
                break;
            case 4:
                account->showTransactionHistory();
                break;
            case 5:
                account->sortTransactionByAmount();
                account->showTransactionHistory();
                break;
            case 6:
                {
                    std::shared_ptr<ATM> newATM = std::make_shared<ATM>();
                    bank.addATM(newATM);
                    std::cout << "New ATM added successfully!\n";
                }
                break;
            case 7:
                bank.listATMs();  // Display available ATMs
                break;
            case 8:
                std::cout << "Thank you for using the ATM system. Goodbye!\n";
                break;
            default:
                std::cout << "Invalid choice. Please try again.\n";
        }
    } while (actionChoice != 8);

    return 0;
}

