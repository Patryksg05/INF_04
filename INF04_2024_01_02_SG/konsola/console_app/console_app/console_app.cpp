#include <iostream>
#include <cctype>
#include <algorithm>
#include <string>

using namespace std;

/**************************************
    klasa: StringFunctions
    opis: Klasa ma charakter biblioteki narzedziowej 
        dla lancucha znakow, metody liczącą wszystkie samogłoski
        oraz usuwająca powtórzenia znaków występujących obok siebie
    metody: vowel_counter - zwraca licze samogłosek w lancuchu znakow
        podanych przez uzytkownika
        removes_duplicates - zwraca ciag znakow, który zawiera
        niepowtarzające się znaki wystepujące obok siebie z lancucha 
        znakow podanych przez uzytkownika
    autor: Maciak Patryk
***************************************/
class StringFunctions {
public:
    int vowel_counter(string user_text)
    {
        int vowel_counter = 0;

        if (user_text.size() == 0 || user_text.empty())
            return 0;

        string to_lower_text;

        for (int i = 0; i < user_text.size(); i++)
            to_lower_text += tolower(user_text[i]);

        for (int i = 0; i < to_lower_text.size(); i++)
        {
            if (to_lower_text[i] == 'a' || to_lower_text[i] == 'e' || to_lower_text[i] == 'i'
                || to_lower_text[i] == 'o' || to_lower_text[i] == 'u' || to_lower_text[i] == 'y')
                vowel_counter++;
        }

        return vowel_counter;
    }

    string remove_duplicates(string user_text)
    {
        string result;

        if (user_text.size() == 0 || user_text.empty())
            return "";

        char prev = '\O';

        for (char c : user_text)
        {
            if (c != prev)
            {
                result.push_back(c);
                prev = c;
            }
        }
        return result;
    }
};

int main()
{
    StringFunctions stringFunctions;
    string user_text;
    cout << "Wprowadz lancuch znakow: ";
    getline(cin, user_text);
    cout << "Liczba samoglosek: " << stringFunctions.vowel_counter(user_text);
    cout << "\nLancuch znakow po usunieciu duplikatow: " << stringFunctions.remove_duplicates(user_text);
    return 0;
}

