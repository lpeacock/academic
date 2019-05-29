#include<iostream>
#include<iomanip>
#include<string>
using namespace std;

void createHeader() {
	    cout 
		 << "******************************************************\n" 
		 <<  "Amortization Table\n"
		 << "******************************************************\n";
	    cout << left << setw(8) << "Month" << setw(13) << "Balance" << setw(8) << "Payment" << setw(7) << "Rate"
		 << setw(8) << "Interest" << "Principal\n";
}


int monthCalc(double balance, double payment, int interest) {
	if (balance == 0) {
		return 0;
	}
	if (interest/12.0/100.0 * balance >= payment) {
		cout << "The interest payment is to great! Never can be paid.\n";
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

	cout << "Loan Amount: ";
	cin >> loanAmount;
	if (loanAmount == 0) {
		cout << "Loan must be greater than $0!";
		return 0;
	}

	cout << "Interest Rate (% per year): ";
	cin >> interestRate;
	if (interestRate == 0){
		cout << "Interest Rate must be provided!";
		return 0;
	}

	cout << "Monthly Payments: ";
	cin >> monthlyPayments;
	if (monthlyPayments == 0) {
		cout << "Monthly Payments must be greater than $0!";
		return 0;
	}

	if (monthCalc(loanAmount, monthlyPayments, interestRate) == -1){
		return 0;
	}
	createHeader();

	double remainder = loanAmount;
	double previousBalance = loanAmount;
	for (int i = 0; i < monthCalc(loanAmount, monthlyPayments, interestRate) + 1; i++) {
		double interestAmount;
		double principal;
		double monthlyInterest;

		monthlyInterest = interestRate/12.0;
		interestAmount = remainder * monthlyInterest/100.0;
		principal = monthlyPayments - interestAmount;
    	remainder = remainder - principal;

		if (i == 0) {
			cout << setw(8) << i  << "$" << setw(13) << fixed << setprecision(2) << loanAmount << setw(8) 
			<< "N/A" << setw(7) << "N/A" << setw(8) << "N/A" << "N/A" << endl;
			remainder = loanAmount;
		}
		else if (remainder <= 0) {
			principal = previousBalance;
			cout << setw(8) << i << "$" << setw(13) << 00.00 << "$" << setw(8) << setprecision(2)
			<< previousBalance + previousBalance * monthlyInterest / 100.0  << "$" << setw(7) 
			<< setprecision(1) << interestRate/12.0  << "$" << setw(8) << setprecision(2) << interestAmount  << "$"<< principal << endl;
		}
		else {
			previousBalance = remainder;
			cout << setw(8) << i  << "$" << setw(13)  << fixed << setprecision(2) << remainder  << "$" << setw(8) 
			<< monthlyPayments  << "$" << setw(7) << setprecision(1) << monthlyInterest  << "$" << setw(8) << setprecision(2)<< interestAmount  << "$" << principal << endl;
		}
	}
	return 0;
}
