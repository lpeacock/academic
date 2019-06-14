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

array<int, MAX_SIZE> readfile(string fileName) {

	int index = 1;
	array<int, MAX_SIZE> inputArray;

	ifstream inStream;
	inStream.open(fileName.c_str());
	while (!inStream.eof()) {
		inStream >> inputArray[index];
		index++;
	}
	inStream.close();
	cout << "The list of "<< index - 1 << " numbers in file " << fileName << " is: " << endl;
	for(int i = 1; i < index; i++) {
		cout << inputArray[i] << endl;
	}
	inputArray[0] = index;
	return inputArray;
}

array<int, MAX_SIZE> merge(array<int, MAX_SIZE> array1, array<int, MAX_SIZE> array2) {
	array<int, MAX_SIZE> output;
	if (array1.empty()) {
		return array2;
	}
	else if (array2.empty())
	{
		return array1;
	}
	else
	{
		int index1 = 1;
		int index2 = 1;
		int index = 1;
		while (index2 < array2[0] || index1 < array1[0])
		{
			if (array1[index1] > array2[index2]) 
			{
				output[index] = array2[index2];
				index2++;
			}

			else if (array1[index1] < array2[index2]) 
			{
				output[index] = array1[index1];
				index1++;
			}

			else
			{
				output[index] = array1[index1];
				index++;
				output[index] = array2[index2];

				index1++;
				index2++;
			}

			index++;
		}
		output[0] = index;
	}
	
	return output;
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
	//cin >> file1;
	file1 = "input1.txt";
	array1 = readfile(file1);

	cout << "Enter the second input file name: ";
	//cin >> file2;
	file2 = "input2.txt";
	array2 = readfile(file2);

	array<int, MAX_SIZE> output;
	output = merge(array1, array2);
	for(int i = 1; i < output[0]; i++) 
	{
		cout << output[i] << " ";
	}
	cout << endl;
 	return 0;
}