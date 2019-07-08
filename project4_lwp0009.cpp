// Lucas Peacock
// lwp0009
// project2_lwp0009.cpp
// Compile: (in bash) g++ project4_lwp0009.cpp
// Recieved general c++ assistance from StackOverflow primarly on srand()
// But no outside collaboration
// General overview of what functions to have were presented in project assignment

# include <iostream>
# include <stdlib.h>
# include <assert.h>
# include<ctime>
# include<iomanip>
# include<string>
using namespace std;

struct TriviaNode {
    string question;
    string answer;
    int value;
    TriviaNode *next;
};

struct TriviaDeck {
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

};

TriviaDeck* trivaSetup() {
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
    TriviaDeck *deck = new TriviaDeck();
    deck ->length = 3;
    deck ->head = prev;
    return deck;
}

int narrator(TriviaDeck *deck) {
    TriviaNode *currentQuestion = deck ->head;
    string response;
    int points = 0;
    while (currentQuestion != NULL) 
    {
        cout << "Question: " <<currentQuestion ->question << "\nAnswer: ";
        getline(cin, response);
        cout << "I got: \"" << response << "\" Expected: \"" << currentQuestion->answer << "\"" ;
        if (response.compare(currentQuestion ->answer) == 0) 
        {
           string output = "Your answer is correct. You receive " + to_string(currentQuestion->value) + " points.";
           cout << output;
           points = points + currentQuestion->value;
        }
        else
        {
            string output = "Your answer is wrong. The correct answer is: "; 
            cout << output << currentQuestion ->answer << endl;
        }
        cout << "Your Total Points: " << points << endl << endl;
        currentQuestion = currentQuestion->next;
    }
    
}

int main() {
    TriviaDeck *deck = trivaSetup();
    string repeat = "Yes";
    cout << "*** Welcome to Luke's trivia quiz game***" << endl;

    while (repeat.compare("Yes") == 0) {
        TriviaNode *node = new TriviaNode();
        string question;
        string answer;
        int value;\
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
        deck ->add(node);

        cout << "Continue? (Yes/No): ";
        getline(cin, repeat);
    }


    narrator(deck);
}