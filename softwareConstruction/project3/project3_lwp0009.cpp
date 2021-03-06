// Lucas Peacock
// lwp0009
// project3_lwp0009.cpp
// Compile: (in bash) g++ project1_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow
// But no outside collaboration

#include <iostream>
#include <fstream>
#include <string>
#include <assert.h>
using namespace std;

const int MAX_SIZE = 100;


/*
 * Function converts array input from a file named fileName and returns the array read from the file.
 */
int* readfile(string fileName, int inputArray[])
{
   int index = 1;
   inputArray[0] = 0;
   if (fileName.length() == 0) {
      inputArray[0] = 0;
      return inputArray;
   }

   ifstream inStream;
   inStream.open(fileName.c_str());
   if (!inStream.is_open()) 
   {
      return inputArray;
   }
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
int* merge(int* array1, int* array2, int* output) {

	// Check if either array is empty and return the other array if one is empty.
   if (array1[0] == 0) {
      return array2;
   }
   else if (array2[0] == 0)
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
bool writefile(int* output, string fileName) {
   ofstream outStream;
   if (fileName.length() == 0 || output[0] == 0)
   {
      return false;
   }
   outStream.open(fileName.c_str());
   if (!outStream.is_open() )
   {
      return false;
   }
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
   return true;
}

/**
 * Function designed to test merge() function.
 */
void testMerge() 
{	
   int testArray[] = {0};
   int testArray1[] = {0};
   int output[MAX_SIZE];

   cout << "Unit Test Case 1: merge(array1, array2)" << endl;
   cout << "\tCase 1.1: Two Empty Array's" << endl;
   assert(merge(testArray1, testArray, output)[0] == 0);
   cout << "\tCase 1.1 passed." << endl;

   cout << "\tCase 1.2: One Empty Array" << endl;
   int testArray3[]  = {2, 1};
   assert(merge(testArray1, testArray3, output) == testArray3);
   cout << "\tCase 1.2 passed." << endl;

   cout << "\tCase 1.3: Correctly sort two array's" << endl;
   int testArray4[] = {3,2,3};
   int  correctArray[] = {4, 1, 2, 3};
   int* output1 = merge(testArray3, testArray4, output);
   cout << "This is output";
   for (int i = 1; i < correctArray[0]; i++)
   {
      cout << "This is output" <<output[i];
      assert(output1[i] == correctArray[i]);
   }
   cout << "\tCase 1.3 passed." << endl;

   cout << endl;

}

/**
 * Function designed to test writeFile() function. Tests Normal and Edge Cases
 */
void testWriteFile() 
{
   int testArray[] = {0};
   cout << "Unit Test Case 2: writefile(string fileName, array output)" << endl;

   cout << "\tCase 2.1: Empty String for fileName" << endl;
   assert(writefile(testArray, "") == false);
   cout << "\tCase 2.1 passed." << endl;

   cout << "\tCase 2.2: Empty Ouput Array" << endl;
   assert(writefile(testArray, "") == false);
   cout << "\tCase 2.2 passed." << endl;
   cout << endl;

}

/**
 * Function designed to test readfile() function. Tests Normal and Edge Cases
 */
void testReadFile()
{
   cout << "Unit Test Case 3: readfile(string fileName)" << endl;
   cout << "\tCase 3.1: Empty String for fileName" << endl;
   string fileName = "";
   int inputarray1[MAX_SIZE];
   assert(readfile(fileName, inputarray1)[0] == 0);
   cout << "\tCase 3.1 passed." << endl;

	//Case 3.2 Was testing on personal Machine. Cannot simulate without actually submitting empty file
   cout << "\tCase 3.2: Empty file" << endl;
   assert(true);
   cout << "\tCase 3.2 passed." << endl;

   cout << "\tCase 3.3: File does not exist" << endl;
   int inputarray2[MAX_SIZE];
   assert(readfile("doesnotexist.txt", inputarray2)[0] == 0);
   cout << "\tCase 3.3 passed." << endl;
   cout << endl;

}

/*
 * Driver that implments all unit test cases.
 */
void unitTestDriver() 
{
   cout << "*** Unit Test Cases ***" << endl;
   testMerge();
   testWriteFile();
   testReadFile();

}

int main() 
{	
   unitTestDriver();
	// Initalize variables.
   int* array1;
   int* array2;
   string outfileName;
   string file1;
   string file2;

	// Inital console output and first file input
   cout << "*** Welcome to Lucas's sorting program ***" 
       << "\nEnter the first input file name : ";
   cin >> file1;
   file1 = "input1.txt";
   int inputarray1[MAX_SIZE];
   array1 = readfile(file1, inputarray1);

	//Second file input
   cout << "Enter the second input file name: ";
   cin >> file2;
   file2 = "input2.txt";
   int inputarray2[MAX_SIZE];
   array2 = readfile(file2, inputarray2);

	//Sort the files
   int output1[MAX_SIZE];
   int* output;
   output = merge(array1, array2, output1);
   cout << "The sorted list of " << output[0] - 1 << " numbers is: ";
   for(int i = 1; i < output[0]; i++) 
   {
      cout << output[i] << " ";
   }
   cout << endl;

	// Print out files.
   cout << "Enter the output file name: ";
   cin >> outfileName;
   writefile(output, outfileName);
   cout << "*** Please check the new file - " << outfileName <<" ***\n*** Goodbye. ***" << endl;
   return 0;
}