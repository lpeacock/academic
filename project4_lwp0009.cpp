// Lucas Peacock
// lwp0009
// project2_lwp0009.cpp
// Compile: (in bash) g++ -std=c++11 project4_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow 
// But no outside collaboration
// General overview of what functions to have were presented in project assignment

# include <iostream>
# include <stdlib.h>
# include <assert.h>
# include<string>
using namespace std;

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
 * Trivia Deck class is a Linked List Class 
 */
class TriviaDeck {

    public:
    TriviaNode *head;
    int length;
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
    cout << "Length of Deck: \""<<deck.length << "\"";
    if (amount > deck.length) {
        cout << "Warning – There are only three trivia in the list." << endl;
        return false;
    }

    if (deck.isEmpty()) {
        cout << "Warning – The number of trivia to be asked must equal to or larger than 1." << endl;
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
           string output = "Your answer is correct. You receive " + to_string(currentQuestion->value) + " points.";
           cout << output;
           points = points + currentQuestion->value;
        }
        else
        {
            boolResponse = false;
            string output = "Your answer is wrong. The correct answer is: "; 
            cout << output << currentQuestion ->answer << endl;
        }
        cout << "Your Total Points: " << points << endl << endl;
        currentQuestion = currentQuestion->next;

        amount = amount -1;
    }
    return boolResponse;
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
    cout << "Unit Test Case 3.1: Ask all the questions of the last trivia in the linked list." << endl;
    assert(!narrator(deck, deck.length));
    cout << "Case 3.1 passed...\n" << endl;
    cout << "Unit Test Case 3.2: Ask 1 question in the linked list. The tester enters an correct answer." << endl;
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

#define UNIT_TESTING
//#define trivia_quiz

int main() {
    #ifdef trivia_quiz
    TriviaDeck deck = triviaSetup();
    string repeat = "Yes";
    cout << "*** Welcome to Luke's trivia quiz game***" << endl;

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


    narrator(deck, deck.length);
    cout << "*** Thank you for playing the trivia game. Goodbye! ***" << endl;
}
#endif
#ifdef UNIT_TESTING
    
    UnitTesting();
    return 0;
    }
#endif
