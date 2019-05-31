// Lucas Peacock
// lwp0009
// project1_lwp0009.cpp
// Compile: (in bash) g++ project1_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow
// But no outside collaboration

#include<iostream>
#include<iomanip>
#include<string>
using namespace std;

/**
 *  Function provides general "Amortization Table" heading to console output
 * */
void createHeader() {
	cout 
		<< "*****************************************************\n" 
		<<  "\t\tAmortization Table\n"
		<< "*****************************************************\n";
	cout << left << setw(8) << "Month" << setw(11) << "Balance" << setw(9) 
		 << "Payment" << setw(7) << "Rate"
		 << setw(9) << "Interest" << "Principal\n";
}

/**
 *  Function provides general summary of the loan payment included in the footer to console output
 * */
void createFooter(int months, double interestSum) {
	string strMonths = " months";
	if (months == 1) {
		strMonths = " month";
	}
	cout
		<< "*****************************************************\n\n" 
		<< "It takes " << months << strMonths <<" to pay off the loan."
		<< "\nTotal interest paid is : $" << interestSum << endl;

}

/**
 *  Function validates whether or not from the given balance, monthly payments,
 *  and apr if it is possible to pay off the loan.
 *  Returns type boolean: default = true but if loan is not payable, false
 * */

bool validCheck(double balance, double payment, int interest) {
	if (interest/12.0/100.0 * balance >= payment) {
		cout << "The interest amount exceeds payment value! The balance never declines.\n";
		return false;
	}
	return true;
}

/**
 * Main function
 * */
int main() {
	double loanAmount;
	double interestRate;
	double monthlyPayments;
	
	//Input Verification and Testing
	cout << "Loan Amount: ";
	cin >> loanAmount;
	// The loan must be non-negative
	if (loanAmount == 0) {
		cout << "Loan must be greater than $0!";
		return 0;
	}

	cout << "Interest Rate (% per year): ";
	cin >> interestRate;
	// Loans have interest rates.
	if (interestRate == 0){
		cout << "Interest Rate must be provided!";
		return 0;
	}

	cout << "Monthly Payments: ";
	cin >> monthlyPayments;
	// Loans have payments.
	if (monthlyPayments == 0) {
		cout << "Monthly Payments must be greater than $0!";
		return 0;
	}
	// If validCheck returns false, then it is not a possible solution.
	if (!validCheck(loanAmount, monthlyPayments, interestRate)){
		return 0;
	}

	createHeader();

	double remainder = loanAmount;
	double previousBalance = loanAmount;
	double interestSum = 0;
	int months = 0;

	for (months; remainder > 0; months++) {
		double interestAmount;
		double principal;
		double monthlyInterest;

		monthlyInterest = interestRate/12.0;
		interestAmount = remainder * monthlyInterest/100.0;
		principal = monthlyPayments - interestAmount;
    	remainder = remainder - principal;
		// First Month has a special printout.
		if (months == 0) {
			cout << setw(8) << months  << "$" << setw(10) << fixed << setprecision(2) << loanAmount << setw(9) 
			<< "N/A" << setw(8) << "N/A" << setw(9) << "N/A" << "N/A" << endl;
			remainder = loanAmount;
		}
		// The Final Case (The Final Month)
		else if (remainder <= 0) {
			principal = previousBalance;
			interestSum = interestSum + interestAmount;

			cout << setw(8) << months << "$" << setw(10) << 00.00 << "$" << setw(8) << setprecision(2)
			<< previousBalance + previousBalance * monthlyInterest / 100.0   << setw(7) 
			<< setprecision(1) << monthlyInterest  << "$" << setw(8) << setprecision(2) 
			<< interestAmount  << "$" << principal << endl;
		}
		// The normal case
		else {
			previousBalance = remainder;
			interestSum = interestSum + interestAmount;

			cout << setw(8) << months  << "$" << setw(10)  << fixed << setprecision(2) << remainder  << "$" << setw(8) 
			<< monthlyPayments << setw(7) << setprecision(1) << monthlyInterest  << "$" << setw(8) << setprecision(2)
			<< interestAmount  << "$" << principal << endl;
		}
	}
	
	createFooter(months-1, interestSum);
	return 0;
}
