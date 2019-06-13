// Lucas Peacock
// lwp0009
// project3_lwp0009.cpp
// Compile: (in bash) g++ project1_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow
// But no outside collaboration

#include <iostream>
#include <fstream>
#include <string>
#include <array>
using namespace std;

const int MAX_SIZE = 100;

array<int, 4> readfile(string fileName) {

	int index = 0;
	array<int, 4> inputArray;

	ifstream inStream;
	inStream.open(fileName.c_str());
	while (!inStream.eof()) {
		inStream >> inputArray[index];
		index++;
	}
	inStream.close();
	cout << "The list of "<< sizeof(inputArray) << " numbers in file " << fileName << " is: ";
	for(int i = 0; i <= index; i++) {
		cout << inputArray[index] << endl;
	}

	return inputArray;
}

int merge(int inputArray1[], int inputArray1_size, int inputArray2[], int inputArray2_size) {
	
	return -1;
}

void writefile(int outputArray[], int outputArray_size) {

}

int main() {
	array<int, MAX_SIZE> array1;
	array<int, MAX_SIZE> array2;

	string file1;
	string file2;

	cout << "*** Welcome to Lucas's sorting program ***" 
		 << "\nEnter the first input file name : ";
	cin >> file1;
	array1 = readfile(file1);

	cout << "Enter the second input file name: ";
	cin >> file2;
	array2 = readfile(file2);

	return 0;
}