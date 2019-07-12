// Lucas Peacock
// lwp0009
// project4_lwp0009.cpp
// Compile: (in bash) g++ -std=c++11 project4_lwp0009.cpp
// NOTE: Comment out one of the define statements below to test UNIT_TESTING or the trivia_quiz
// Unit Testing Requires human interaction.
// Recieved general c++ assistance from StackOverflow but no outside collaboration.

# include <iostream>
# include <stdlib.h>
# include <assert.h>
# include<string>
using namespace std;

/*DEFINE STATEMENTS */
/*****************************************************************************/
//#define UNIT_TESTING
#define trivia_quiz
/*****************************************************************************/

/******************************************************************************
*   Trivia Related Structures, Classes, and Methods                           *
******************************************************************************/

/*
 * TriviaNode class is a simple node class which contains trivia information.
 */
struct TriviaNode {
    string question;
    string answer;
    int value;
    TriviaNode *next;
};

/*
 * TriviaDeck class is esssentially a Linked List Class.
 * Head represents the first node in the list
 */
class TriviaDeck {

    public:
    TriviaNode *head;
    int length;

    //Add Trivia to the Deck.
    bool add(TriviaNode *node)
    {
        if (length == 0) {
            head = node;
        }
        else 
        {
            TriviaNode *pointer = head;
            while (pointer ->next != NULL)
            {
                pointer = pointer ->next;
            }
            pointer ->next = node;
        }
        length++;
    }
    bool isEmpty() {
        return length == 0;
    }
    // Constructor
    TriviaDeck() {
        length = 0;
        head = NULL;
    }
};

/*
 * Creates three hard-coded trivia questions passed back in a Trivia-Deck (Linked-List Class)
 */
TriviaDeck triviaSetup() {
    string questions[3] = {"How long was the shortest war on record? (Hint: how many minutes)", 
    "What was Bank of America's original name?(Hint: Bank of Italy or Bank of Germany)", 
    "What is the best-selling video game of all time?(Hint: Call of Duty or Wii Sports)?" };
    string answers[3] = {"38", "Bank of Italy", "Wii Sports"};
    int values[3] = {100, 50, 20};
    TriviaNode *prev = NULL;

    for (int i = 2; i >= 0; i--) {
        TriviaNode *node = new TriviaNode();
        node ->question = questions[i];
        node ->answer = answers[i];
        node ->value = values[i];

        if (i == 3){
            node ->next = NULL;
        }
        else
        {
            node ->next = prev;
        }
        prev = node;
    }
    TriviaDeck deck;
    deck.length = 3;
    deck.head = prev;
    return deck;
}

bool narrator(TriviaDeck deck, int amount) {

    if (deck.isEmpty()) {
        cout << "Warning – The number of trivia to be asked must equal to or larger than 1.\n" << endl;
        return false;
    }

    if (amount > deck.length) {
        if (deck.length == 3) {
            cout << "Warning – There are only three trivia in the list." << endl;
        }
        cout << "Warning – There are only "<< deck.length <<" trivia in the list." << endl;
        return false;
    }

    TriviaNode *currentQuestion = deck.head;
    string response;
    int points = 0;
    bool boolResponse = true;
    while (currentQuestion != NULL && amount > 0) 
    {
        cout << "Question: " <<currentQuestion ->question << "\nAnswer: ";
        getline(cin, response);
        if (response.compare(currentQuestion ->answer) == 0) 
        {
           #ifndef UNIT_TESTING
           string output = "Your answer is correct. You receive " + to_string(currentQuestion->value) + " points.";
           cout << output << endl;
           points = points + currentQuestion->value;
           #endif
        }
        else
        {
            boolResponse = false;
            #ifndef UNIT_TESTING
            string output = "Your answer is wrong. The correct answer is: "; 
            cout << output << currentQuestion ->answer << endl;
            #endif
        }
        #ifndef UNIT_TESTING
        cout << "Your Total Points: " << points << endl << endl;
        #endif 
        currentQuestion = currentQuestion->next;

        amount = amount -1;
    }
    return boolResponse;
}

/*
 * Function to add new questions to the end of the three-presets
 */
TriviaDeck insertQuestions() {
    string repeat = "Yes";
    TriviaDeck deck = triviaSetup();

    // While loop to create new tests 
    while (repeat.compare("Yes") == 0) {
        TriviaNode *node = new TriviaNode();
        string question;
        string answer;
        int value;
        string strValue;

        cout << "Enter a question: ";
        getline(cin, question);
        node ->question = question;

        cout <<"Enter answer: ";
        getline(cin, answer);
        node ->answer = answer;

        cout << "Enter award points: ";
        getline(cin, strValue);
        value = stoi(strValue);

        node ->value = value;
        deck.add(node);

        cout << "Continue? (Yes/No): ";
        getline(cin, repeat);
    }
    cout << endl;
    return deck;
}

/******************************************************************************
*   Unit Testing Functions and Wrapper                                        *
******************************************************************************/

/*
 * Tests no questions being passed into narrator
 */
void test_noQuestions() {
    TriviaDeck deck;
    cout << "Unit Test Case 1: Ask no question. The program should give a warning message." << endl;
    assert(!narrator(deck, 1));
}

/*
 * Tests only question from the pre-set.
 */
void test_OneQuestion() {
    TriviaDeck deck = triviaSetup();
    cout << "Unit Test Case 2.1: Ask 1 question in the linked list. The tester enters an incorrect answer." << endl;
    assert(!narrator(deck, 1));
    deck.head = deck.head->next;
    cout << "Case 2.1 passed...\n" << endl;
    cout << "Unit Test Case 2.2: Ask 1 question in the linked list. The tester enters an correct answer." << endl;
    assert(narrator(deck, 1));
    cout << "Case 2.2 passed...\n" << endl;

}

/*
 * Tests all questions being passed into narraor
 */
void test_AllQuestions() {
    TriviaDeck deck = triviaSetup();
    cout << "Unit Test Case 3.1: Ask all the questions of the last trivia in the linked list. The tester inputs all incorrect answers" << endl;
    assert(!narrator(deck, deck.length));
    cout << "Case 3.1 passed...\n" << endl;
    cout << "Unit Test Case 3.2: Ask 1 question in the linked list. The tester enters all correct answer." << endl;
    assert(narrator(deck, deck.length));
    cout << "Case 3.2 passed...\n" << endl;
}

/*
 * Tests amount > than the amount of questions in trivia
 */
void test_tooMuch() {
    TriviaDeck deck = triviaSetup();
    cout << "Unit Test Case 4: Ask five questions in the linked list." << endl;
    assert(!narrator(deck, 5));
    cout << "Case 4 passed...\n" << endl;
}

/*
 * Wrapper for all unit testing
 */
void UnitTesting() {
    cout << "*** This is a debugging version ***" << endl;
    test_noQuestions();
    test_OneQuestion();
    test_AllQuestions();
    test_tooMuch();
    cout << "*** End of Debugging Version ***" << endl;
}

/******************************************************************************
*   Main Functions (Trivia Game and Unit Testing)                             *
******************************************************************************/

int main() {
    #ifdef trivia_quiz
    cout << "*** Welcome to Luke's trivia quiz game***" << endl;
    TriviaDeck deck = insertQuestions();
    
    narrator(deck, deck.length);
    cout << "*** Thank you for playing the trivia game. Goodbye! ***" << endl;
}
#endif
#ifdef UNIT_TESTING
    
    UnitTesting();
    return 0;
    }
#endif
