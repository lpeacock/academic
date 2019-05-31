#include<iostream>
#include<iomanip>
#include<string>
using namespace std;

void createHeader() {
	cout 
		<< "*********************************************************\n" 
		<<  "\t\tAmortization Table\n"
		<< "*********************************************************\n";
	cout << left << setw(8) << "Month" << setw(14) << "Balance" << setw(9) 
		 << "Payment" << setw(8) << "Rate"
		 << setw(9) << "Interest" << "Principal\n";
}

void createFooter(int months, double interestSum) {
	cout
		<< "*********************************************************\n\n" 
		<< "It takes " << months << " months to pay off the loan."
		<< "\nTotal interset paid is : $" << interestSum << endl;

}

int monthCalc(double balance, double payment, int interest) {
	if (balance == 0) {
		return 0;
	}
	if (interest/12.0/100.0 * balance >= payment) {
		cout << "The interest amount exceeds payment value! The balance never declines.\n";
		return -1;
	}
	if (balance < payment) {
		return 1;
	}
	else {	
	balance = balance - (payment - balance * (interest/12.0)/100.0);
	return (1 + monthCalc(balance, payment, interest));
	}
}

int main() {
	double loanAmount;
	int interestRate;
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
	// If monthCalc returns 0, then it is not a possible solution
	if (monthCalc(loanAmount, monthlyPayments, interestRate) == -1){
		return 0;
	}
	createHeader();

	double remainder = loanAmount;
	double previousBalance = loanAmount;
	double interestSum = 0;
	int months = 0;
	for (months; months <= monthCalc(loanAmount, monthlyPayments, interestRate); months++) {
		double interestAmount;
		double principal;
		double monthlyInterest;

		monthlyInterest = interestRate/12.0;
		interestAmount = remainder * monthlyInterest/100.0;
		principal = monthlyPayments - interestAmount;
    	remainder = remainder - principal;
		// First Month has a special printout.
		if (months == 0) {
			cout << setw(8) << months  << "$" << setw(13) << fixed << setprecision(2) << loanAmount << setw(9) 
			<< "N/A" << setw(8) << "N/A" << setw(9) << "N/A" << "N/A" << endl;
			remainder = loanAmount;
		}
		// The Final Case (The Final Month)
		else if (remainder <= 0) {
			principal = previousBalance;
			interestSum = interestSum + interestAmount;

			cout << setw(8) << months << "$" << setw(13) << 00.00 << "$" << setw(8) << setprecision(2)
			<< previousBalance + previousBalance * monthlyInterest / 100.0  << "$" << setw(7) 
			<< setprecision(1) << interestRate/12.0  << "$" << setw(8) << setprecision(2) 
			<< interestAmount  << "$" << principal << endl;
		}
		// The normal case
		else {
			previousBalance = remainder;
			interestSum = interestSum + interestAmount;

			cout << setw(8) << months  << "$" << setw(13)  << fixed << setprecision(2) << remainder  << "$" << setw(8) 
			<< monthlyPayments  << "$" << setw(7) << setprecision(1) << monthlyInterest  << "$" << setw(8) << setprecision(2)
			<< interestAmount  << "$" << principal << endl;
		}
		//cout << interestSum;
	}
	
	createFooter(months-1, interestSum);
	return 0;
}
