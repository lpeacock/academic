// Lucas Peacock
// lwp0009
// project3_lwp0009.cpp
// Compile: (in bash) g++ project1_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow
// But no outside collaboration

#include <iostream>
#include <fstream>
#include <string>
# include <assert.h>
#include <array>
using namespace std;

const int MAX_SIZE = 100;
/*
 * Function converts array input from a file named fileName and returns the array read from the file.
 */
array<int, MAX_SIZE> readfile(string fileName) {

	int index = 1;
	array<int, MAX_SIZE> inputArray;
	if (fileName.length() == 0) {
		inputArray[0] = 0;
		return inputArray;
	}

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

	/*
	 ************************************************************************
	 * Important Note: output[0] = Amount of items in array + 1
	 ************************************************************************
	 */
	inputArray[0] = index;
	cout << endl;
	return inputArray;
}

/*
 * Function merges array1 and array2 in acsending order and returns the output array.
 */
array<int, MAX_SIZE> merge(array<int, MAX_SIZE> array1, array<int, MAX_SIZE> array2) {
	array<int, MAX_SIZE> output;

	// Check if either array is empty and return the other array if one is empty.
	if (array1.empty()) {
		return array2;
	}
	else if (array2.empty())
	{
		return array1;
	}
	// Normal Sorting
	else
	{
		int index1 = 1;
		int index2 = 1;
		int index = 1;
		// Sort while one array hasn't reached the end
		while (index2 < array2[0] && index1 < array1[0])
		{	
			// Grab from array2
			if (array1[index1] > array2[index2]) 
			{
				output[index] = array2[index2];
				index2++;
			}
			// Grab from array1
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

		// If there are remainder values in one array after the other has finished, add to output array.
		if ((index2 == array2[0]) ^ (index1 == array1[0]))
		{
			// Array2 is finished; complete array1
			if (index2 == array2[0])
			{
				for (;index1 < array1[0]; index++)
				{
					output[index] = array1[index1++];
				}
			}
			// Array1 is finished; complete array1
			else 
			{	
				for (;index2 < array2[0]; index++)
				{
					output[index] = array2[index2++];
				}
			}
		}
		output[0] = index;
	}

	return output;
}

/*
 * Function writes output array to file named fileName.
 */
void writefile(array<int, MAX_SIZE> output, string fileName) {
	ofstream outStream;
	outStream.open(fileName.c_str());
	for (int i = 1; i < output[0]; i++)
	{	
		if (i==(output[0]-1))
		{
			outStream << output[i];
		}
		else 
		{
		outStream << output[i] << "\n";
		}
	}
	outStream.close();
}
void testMerge() 
{
		cout << "Unit Test Case 1: merge(array1, array2)" << endl;
	cout << "\tCase 1.1: Empty String for fileName";

}
void testWriteFile() 
{
	cout << "Unit Test Case 2: writefile(string fileName, array output)" << endl;
	cout << "\tCase 1.1: Empty String for fileName";

}
void testReadFile()
{
	cout << "Unit Test Case 3: readfile(string fileName)" << endl;
	cout << "\tCase 1.1: Empty String for fileName";
	string fileName = "";
	assert(readfile(fileName)[0] == 0);
}
void unitTestDriver() 
{
	cout << "*** Unit Test Cases ***" << endl;
	testReadFile();
}
int main() 
{	
	// Initalize variables.
	array<int, MAX_SIZE> array1;
	array<int, MAX_SIZE> array2;
	string outfileName;
	string file1;
	string file2;

	// Inital console output and first file input
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
	cout << "The sorted list of " << output[0] - 1 << " numbers is: ";
	for(int i = 1; i < output[0]; i++) 
	{
		cout << output[i] << " ";
	}
	cout << endl;
	outfileName = "output.txt";
	writefile(output, outfileName);
	cout << "*** Please check the new file - " << outfileName <<" ***\n*** Goodbye. ***" << endl;
 	return 0;
}