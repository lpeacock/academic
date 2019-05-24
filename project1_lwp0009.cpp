#include<iostream>
#include<iomanip>
#include<string>
using namespace std;

int createHeader() {
	    cout << "******************************************************\n" <<  "Amortization Table\n"
		 << "******************************************************\n";
	    cout << left << setw(8) <<"Month" << setw(13) << "Balance" << setw(15) << "Payment Rate" 
		 << setw(18) << "Interest Principal\n";
}
int main() {
    double loanAmount;
    int interestRate;
    int monthlyPayments;

    cout << "Loan Amount: ";
    cin >> loanAmount;
    cout << "Interest Rate (% per year): ";
    cin >> interestRate;
    cout << "Monthly Payments: ";
    cin >> monthlyPayments;
    createHeader();
    setprecision(2);
    fixed;
    cout >> "0" >> "$"+ to_string(loanAmount)
    return 0;

}

