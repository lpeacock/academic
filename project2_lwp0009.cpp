// Lucas Peacock
// lwp0009
// project2_lwp0009.cpp
// Compile: (in bash) g++ project2_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow
// But no outside collaboration

# include <iostream>
# include <stdlib.h>
# include <assert.h>
# include<ctime>
# include<iomanip>
using namespace std;

const float AARON_SKILL = 1.0 / 3.0 * 100;
const float BOB_SKILL = 50;
const float CHARLIE_SKILL = 1;
const int ROUND_AMOUNT = 10000;

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
		shoot_target_result = rand()%100;
 		if (shoot_target_result <= AARON_SKILL) 
		{
			cout<<"Aaron killed Charlie.\n";
 			C_alive = false;
		}
		else
		{
			cout << "Aaron missed Charlie.\n";
		}
	}
	else
	{
		shoot_target_result = rand()%100;
 		if (shoot_target_result <= AARON_SKILL) 
		{
			cout<<"Aaron killed Bob.\n";
 			B_alive = false;
		}
		else
		{
			cout << "Aaron missed Bob.\n";
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
	int shoot_target_result;
	if (C_alive) 
	{
		shoot_target_result = rand()%100;
 		if (shoot_target_result <= BOB_SKILL) 
		{
			cout<<"Bob killed Charlie.\n";
 			C_alive = false;
		}
		else
		{
			cout << "Bob missed Charlie.\n";
		}
	}
	else
	{
		shoot_target_result = rand()%100;
 		if (shoot_target_result <= BOB_SKILL) 
		{
			cout<<"Bob killed Aaron.\n";
 			A_alive = false;
		}
		else
		{
			cout << "Bob missed Aaron.\n";
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
		cout << "Charlie killed Bob.\n";
		B_alive = false;			 
	}

	else
	{
		cout<<"Charlie killed Aaron.\n";
		A_alive = false;
	}
}

/* Strategy 2: Use call by reference
* Input: B_alive indicates whether Bob alive or dead
* C_alive indicates whether Charlie is alive or dead
* Return: Change B_alive into false if Bob is killed.
* */
void Aaron_shoots2(bool& B_alive, bool& C_alive) {
	int shoot_target_result;
	if (C_alive && B_alive) 
	{
		cout << "Aaron misses.";
		return;
	}
	if (C_alive) 
	{
		shoot_target_result = rand()%100;
 		if (shoot_target_result <= AARON_SKILL)
		{
			cout<<"Aaron killed Charlie.\n";
 			C_alive = false;
		}
		else
		{
			cout << "Aaron missed Charlie.\n";
		}
	}
	else
	{
		shoot_target_result = rand()%100;
 		if (shoot_target_result <= AARON_SKILL) 
		 {
			cout<<"Aaron killed Bob.\n";
 			B_alive = false;
		}
		else
		{
			cout << "Aaron missed Bob.\n";
		}
	}	
}

void test_at_least_two_alive(void) {
	cout << "Unit Testing 1: Function – at_least_two_alive()\n";
	cout << "Case 1: Aaron alive, Bob alive, Charlie alive\n";
	assert(true == at_least_two_alive(true, true, true));
	cout << "Case passed ...\n";
	cout << "Case 2: Aaron dead, Bob alive, Charlie alive\n";
	assert(true == at_least_two_alive(false, true, true));
	cout << "Case passed ...\n";
	cout << "Case 3: Aaron alive, Bob dead, Charlie alive\n";
	assert(true == at_least_two_alive(true, false, true));
	cout << "Case passed ...\n";
}
void determineVictory(bool A_alive, bool B_alive, bool C_alive, int A_wins, int B_wins, int C_wins)
{
	if (A_alive)
	{
		cout << "Aaron won the duel." << endl;
		A_wins++;
	}
	else if (B_alive) 
	{
		cout << "Bob won the duel." << endl;
		B_wins++;
	}
	else if (C_alive)
	{
		cout << "Charlie won the duel." << endl;
		C_wins++;
	}
	else
	{
		cout << "We shouldn't be here." << endl;
	}
}

int main() {
	
	srand(time(0));
	bool aaronAlive = true;
	bool bobAlive = true;
	bool charlieAlive = true;
	int A_wins = 0;
	int B_wins = 0;
	int C_wins = 0;
	//for (int rounds = 0; rounds < ROUND_AMOUNT; rounds++)
	//{
	
	
		do
		{
			if(aaronAlive) {
				Aaron_shoots1(bobAlive, charlieAlive);
			}
			if(bobAlive) {
				Bob_shoots(aaronAlive, charlieAlive);
			}
			if(charlieAlive) {
				Charlie_shoots(aaronAlive, bobAlive);
			}
		} while (at_least_two_alive(aaronAlive, bobAlive, charlieAlive));
		determineVictory(aaronAlive, bobAlive, charlieAlive, A_wins, B_wins, C_wins);

	//}
	//cout << "Aaron won " << A_wins << "/" << ROUND_AMOUNT << " duels or %" << fixed << setprecision(2) << A_wins / ROUND_AMOUNT << endl;
	//cout << "Bob won " << B_wins << "/" << ROUND_AMOUNT << " duels or %" << B_wins / ROUND_AMOUNT << endl; 
	//cout << "Aaron won " << C_wins << "/" << ROUND_AMOUNT << " duels or %" << C_wins / ROUND_AMOUNT << endl;
    
	return 0;
}
