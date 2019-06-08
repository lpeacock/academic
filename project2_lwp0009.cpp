// Lucas Peacock
// lwp0009
// project2_lwp0009.cpp
// Compile: (in bash) g++ project2_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow primarly on srand()
// But no outside collaboration
// General overview of what functions to have were presented in project assignment

# include <iostream>
# include <stdlib.h>
# include <assert.h>
# include<ctime>
# include<iomanip>
using namespace std;

/*
 * Constants for the skill level and round amount.
 */
const float AARON_SKILL = 1.0 / 3.0 * 100;
const float BOB_SKILL = 50;
const float CHARLIE_SKILL = 100;
const int ROUND_AMOUNT = 10000;

/*
*Function used to pause the script.
**/
void pause() {
	cout << "Press any key to continue...";
	cin.ignore().get();
}

/* Input: A_alive indicates whether Aaron is alive */
/* B_alive indicates whether Bob is alive */
/* C_alive indicates whether Charlie is alive */
/* Return: true if at least two are alive */
/* otherwise return false */
bool at_least_two_alive(bool A_alive, bool B_alive, bool C_alive) {
	return A_alive && B_alive || A_alive && C_alive || B_alive && C_alive;
}

/* Strategy 1: Use call by reference
* Input: B_alive indicates whether Bob alive or dead
* C_alive indicates whether Charlie is alive or dead
* Return: Change B_alive into false if Bob is killed.
* Change C_alive into false if Charlie is killed.
*/
void Aaron_shoots1(bool& B_alive, bool& C_alive){

	int shoot_target_result;
	if (C_alive) 
	{
 		if (rand()%100 <= AARON_SKILL) 
		{
			//cout<<"Aaron killed Charlie.\n";
 			C_alive = false;
		}
		else
		{
			//cout << "Aaron missed Charlie.\n";
		}
	}
	else
	{
 		if (rand()%100 <= AARON_SKILL) 
		{
			//cout<<"Aaron killed Bob.\n";
 			B_alive = false;
		}
		else
		{
			//cout << "Aaron missed Bob.\n";
		}
		
	}
	
}

/* Call by reference
* Input: A_alive indicates if Aaron is alive or dead
* C_alive indicates whether Charlie is alive or dead
* Return: Change A_alive into false if Aaron is killed.
* Change C_alive into false if Charlie is killed.
*/
void Bob_shoots(bool& A_alive, bool& C_alive) {

	if (C_alive) 
	{
 		if (rand()%100 <= BOB_SKILL) 
		{
			//cout<<"Bob killed Charlie.\n";
 			C_alive = false;
		}
		else
		{
			//cout << "Bob missed Charlie.\n";
		}
	}
	else
	{
 		if (rand()%100 <= BOB_SKILL) 
		{
			//cout<<"Bob killed Aaron.\n";
 			A_alive = false;
		}
		else
		{
			//cout << "Bob missed Aaron.\n";
		}
	}
}

/* Call by reference
* Input: A_alive indicates if Aaron is alive or dead
* B_alive indicates whether Bob is alive or dead
* Return: Change A_alive into false if Aaron is killed.
* Change B_alive into false if Bob is killed.
*/
void Charlie_shoots(bool& A_alive, bool& B_alive) {
	
	if (B_alive) 
	{
		//cout << "Charlie killed Bob.\n";
		B_alive = false;			 
	}

	else
	{
		//cout<<"Charlie killed Aaron.\n";
		A_alive = false;
	}
}

/* Strategy 2: Use call by reference
* Input: B_alive indicates whether Bob alive or dead
* C_alive indicates whether Charlie is alive or dead
* Return: Change B_alive into false if Bob is killed.
* */
void Aaron_shoots2(bool& B_alive, bool& C_alive) {
	if (C_alive && B_alive) 
	{
		//cout << "Aaron misses.";
		return;
	}
	if (C_alive) 
	{
 		if (rand()%100 <= AARON_SKILL)
		{
			//cout<<"Aaron killed Charlie.\n";
 			C_alive = false;
		}
		else
		{
			//cout << "Aaron missed Charlie.\n";
		}
	}
	else
	{
 		if (rand()%100 <= AARON_SKILL) 
		 {
			//cout<<"Aaron killed Bob.\n";
 			B_alive = false;
		}
		else
		{
			//cout << "Aaron missed Bob.\n";
		}
	}	
}

/*
 * Test for the at_least_two_alive() function
 * Asserts if returns false and more than two are alive 
 * and if it returns true if less than two are alive
 */
void test_at_least_two_alive(void) {
	cout << "Unit Testing 1: Function – at_least_two_alive()\n";
	cout << "\tCase 1: Aaron alive, Bob alive, Charlie alive\n";
	assert(true == at_least_two_alive(true, true, true));
	cout << "\tCase passed ...\n";
	cout << "\tCase 2: Aaron dead, Bob alive, Charlie alive\n";
	assert(true == at_least_two_alive(false, true, true));
	cout << "\tCase passed ...\n";
	cout << "\tCase 3: Aaron alive, Bob dead, Charlie alive\n";
	assert(true == at_least_two_alive(true, false, true));
	cout << "\tCase passed ...\n";
	cout << "\tCase 4: Aaron alive, Bob alive, Charlie dead\n";
	assert(true == at_least_two_alive(true, true, false));
	cout << "\tCase passed ...\n";
	cout << "\tCase 5: Aaron dead, Bob dead, Charlie alive\n";
	assert(false == at_least_two_alive(false, false, true));
	cout << "\tCase passed ...\n";
	cout << "\tCase 6: Aaron dead, Bob alive, Charlie dead\n";
	assert(false == at_least_two_alive(false, true, false));
	cout << "\tCase passed ...\n";
	cout << "\tCase 7: Aaron alive, Bob dead, Charlie dead\n";
	assert(false == at_least_two_alive(true, false, false));
	cout << "\tCase passed ...\n";
	cout << "\tCase 8: Aaron dead, Bob dead, Charlie dead\n";
	assert(false == at_least_two_alive(false, false, false));
	cout << "\tCase passed ...\n";
}	

/*
 * Test case for Aaron's first shooting method. Asserts if there are unexpected death's or resurections.
 */
void test_Aaron_Shoots_1(void){
	bool B_alive = true;
	bool C_alive = true;
	cout << "Unit Testing 2: Function Aaron_shoots1(Bob_alive, Charlie_alive)" << endl;
	cout << "\tCase 1: Bob alive, Charlie alive\n\t\tAaron is shooting at Charlie" << endl;
	Aaron_shoots1(B_alive, C_alive);
	assert(B_alive == true);
	if (C_alive)
	{
		cout << "\t\tAaron misses." << endl;
	}
	else 
	{
		cout << "\t\tCharlie is dead." << endl;
	}

	cout << "\tCase 2: Bob dead, Charlie alive\n\t\tAaron is shooting at Charlie" << endl;
	B_alive = false;
	C_alive = false;
	Aaron_shoots1(B_alive, C_alive);
	assert(B_alive == false);
	if (C_alive)
	{
		cout << "\t\tAaron misses." << endl;
	}
	else 
	{
		cout << "\t\tCharlie is dead." << endl;
	}

	cout << "\tCase 3: Bob alive, Charlie dead\n\t\tAaron is shooting at Bob" << endl;
	B_alive = false;
	C_alive = false;
	Aaron_shoots1(B_alive, C_alive);
	assert(C_alive == false);
	if (B_alive)
	{
		cout << "\t\tAaron misses." << endl;
	}
	else 
	{
		cout << "\t\tBob is dead." << endl;
	}
}

/*
 * Test case for Bob's shooting method. Asserts if there are unexpected death's or resurections.
 */
void test_Bob_Shoots(void){
	bool A_alive = true;
	bool C_alive = true;
	cout << "Unit Testing 3: Function Bob_shoots(Aaron_alive, Charlie_alive)" << endl;
	cout << "\tCase 1: Aaron alive, Charlie alive\n\t\tBob is shooting at Charlie" << endl;
	Bob_shoots(A_alive, C_alive);
	assert(A_alive == true);
	if (C_alive)
	{
		cout << "\t\tAaron misses." << endl;
	}
	else 
	{
		cout << "\t\tCharlie is dead." << endl;
	}

	cout << "\tCase 2: Aaron dead, Charlie alive\n\t\tBob is shooting at Charlie" << endl;
	A_alive = false;
	C_alive = false;
	Bob_shoots(A_alive, C_alive);
	assert(A_alive == false);
	if (C_alive)
	{
		cout << "\t\tBob misses." << endl;
	}
	else 
	{
		cout << "\t\tCharlie is dead." << endl;
	}

	cout << "\tCase 3: Aaron alive, Charlie dead\n\t\tBob is shooting at Aaron" << endl;
	A_alive = false;
	C_alive = false;
	Bob_shoots(A_alive, C_alive);
	assert(C_alive == false);
	if (A_alive)
	{
		cout << "\t\tBob misses." << endl;
	}
	else 
	{
		cout << "\t\tAaron is dead." << endl;
	}
}

/*
 * Test case for Charlie's shooting method. Asserts if there are unexpected death's or resurections.
 */
void test_Charlie_Shoots(void){
	bool A_alive = true;
	bool B_alive = true;
	cout << "Unit Testing 4: Function Charlie_shoots(Aaron_alive, Bob_alive)" << endl;
	cout << "\tCase 1: Aaron alive, Bob alive\n\t\tCharlie is shooting at Bob" << endl;
	Charlie_shoots(A_alive, B_alive);
	assert(B_alive == false);
	cout << "\t\tBob is dead." << endl;

	cout << "\tCase 2: Aaron dead, Bob alive\n\t\tCharlie is shooting at Bob" << endl;
	A_alive = false;
	B_alive = false;
	Charlie_shoots(A_alive, B_alive);
	assert(B_alive == false);
	cout << "\t\tBob is dead." << endl;

	cout << "\tCase 3: Aaron alive, Bob dead\n\t\tCharlie is shooting at Aaron." << endl;
	A_alive = false;
	B_alive = false;
	Charlie_shoots(A_alive, B_alive);
	assert(A_alive == false);
	cout << "\t\tAaron is dead" << endl;
}

/*
 * Test case for Aaron's second shooting method. Asserts if there are unexpected death's or resurections.
 */
void test_Aaron_Shoots_2(void){
	bool B_alive = true;
	bool C_alive = true;
	cout << "Unit Testing 5: Function Aaron_shoots2(Bob_alive, Charlie_alive)" << endl;
	cout << "\tCase 1: Bob alive, Charlie alive" << endl;
	Aaron_shoots2(B_alive, C_alive);
	assert(B_alive && C_alive == true);
	cout << "\t\tAaron intentionally misses his first shot\n\t\tBoth Bob and Charlie are alive." << endl;

	cout << "\tCase 2: Bob dead, Charlie alive" << endl;
	B_alive = false;
	C_alive = false;
	Aaron_shoots2(B_alive, C_alive);
	assert(B_alive == false);
	if (C_alive)
	{
		cout << "\t\tAaron misses." << endl;
	}
	else 
	{
		cout << "\t\tCharlie is dead." << endl;
	}

	cout << "\tCase 3: Bob alive, Charlie dead" << endl;
	B_alive = false;
	C_alive = false;
	Aaron_shoots2(B_alive, C_alive);
	assert(C_alive == false);
	if (B_alive)
	{
		cout << "\t\tAaron misses." << endl;
	}
	else 
	{
		cout << "\t\tBob is dead." << endl;
	}
}

/*
* Determines who wins the duel based off of who is still alive.
*/
void determineVictory(bool A_alive, bool B_alive, bool C_alive, int& A_wins, int& B_wins, int& C_wins)
{
	if (A_alive)
	{
		//cout << "Aaron won the duel." << endl;
		A_wins++;
	}
	else if (B_alive) 
	{
		//cout << "Bob won the duel." << endl;
		B_wins++;
	}
	else if (C_alive)
	{
		//cout << "Charlie won the duel." << endl;
		C_wins++;
	}
	else
	{
		cout << "We shouldn't be here." << endl;
	}
}

int main() {
	// Initalization
	srand(time(0));
	cout << "*** Welcome to Lucas's Duel Simulator ***" << endl;
	test_at_least_two_alive();
	pause();
	test_Aaron_Shoots_1();
	pause();
	test_Bob_Shoots();
	pause();
	test_Charlie_Shoots();
	pause();
	test_Aaron_Shoots_2();

	int counter = 1;
	double A_per_strat1;
	double A_per_strat2;
	// Begin round 1 (Aaron_shoots1) and followed by round 2 (Aaron_shoots2)
	while (counter <= 2) 
	{	
		int A_wins = 0;
		int B_wins = 0;
		int C_wins = 0;

		cout << "Ready to test strategy " << counter <<" (run " << ROUND_AMOUNT << " times): " << endl;
		pause();
		// Test for the Amount of times set by round amount constant
		for (int rounds = 0; rounds < ROUND_AMOUNT; rounds++)
		{
			bool aaronAlive = true;
			bool bobAlive = true;
			bool charlieAlive = true;
			do
			{
				if(aaronAlive && counter == 1) {
					Aaron_shoots1(bobAlive, charlieAlive);
				}
				if(aaronAlive && counter == 2) {
					Aaron_shoots2(bobAlive, charlieAlive);
				}				
				if(bobAlive) {
					Bob_shoots(aaronAlive, charlieAlive);
				}
				if(charlieAlive) {
					Charlie_shoots(aaronAlive, bobAlive);
				}
			} while (at_least_two_alive(aaronAlive, bobAlive, charlieAlive));
			determineVictory(aaronAlive, bobAlive, charlieAlive, A_wins, B_wins, C_wins);

		}
		double A_per = ((float)A_wins / ROUND_AMOUNT) * 100;
		double B_per = ((float)B_wins / ROUND_AMOUNT) * 100;
		double C_per = ((float)C_wins / ROUND_AMOUNT) * 100;
		if (counter == 1) {
			A_per_strat1 = A_per;
		}
		else 
		{
			A_per_strat2 = A_per;
		}
		cout << "Aaron won " << A_wins << "/" << ROUND_AMOUNT << " duels or %" << fixed << setprecision(2) << A_per << endl;
		cout << "Bob won " << B_wins << "/" << ROUND_AMOUNT << " duels or %"  << B_per << endl; 
		cout << "Charlie won " << C_wins << "/" << ROUND_AMOUNT << " duels or %" << C_per << endl;
		cout << '\n' << endl;
		counter++;
	}

	//Determine better strategy
	if (A_per_strat1 > A_per_strat2)
	{
		cout << "Strategy 1 is better than strategy 2." << endl;
	}
	else 
	{
		cout << "Strategy 2 is better than strategy 1." << endl;
	}
	return 0;
}
