//
// Created by ayesdie on 22/08/19.
//

// Count the number of vowels, consonants and digits.

#include <stdio.h>
#include <stdlib.h>

char VOWELS[][10] = {'a', 'e', 'i', 'o', 'u',
                     'A', 'E', 'I', 'O', 'U'};

char DIGITS[][10] = {'0', '1', '2', '3', '4',
                     '5', '6', '7', '8', '9'};

char CONSONANTS[][42] = {'b', 'c', 'd', 'f', 'g',
                         'B', 'C', 'D', 'F', 'G',
                         'h', 'j', 'k', 'l', 'm',
                         'H', 'J', 'K', 'L', 'M',
                         'n', 'p', 'q', 'r', 's',
                         'N', 'P', 'Q', 'R', 'S',
                         't', 'v', 'w', 'x', 'y',
                         'T', 'V', 'W', 'X', 'Y',
                         'z', 'Z'};

size_t vowelEvaluate(char *query)
{
    size_t vowelCount = 0;
    for (int i = 0; query[i] != '\0' ; ++i)
    {
        for (int j = 0; j < 10; ++j)
            if (VOWELS[0][j] == query[i])
                vowelCount++;
    }
    return vowelCount;
}

size_t consonantEvaluate(char *query)
{
    size_t consonantCount = 0;
    for (int i = 0; query[i] != '\0' ; ++i)
    {
        for (int j = 0; j < 42; ++j)
            if (CONSONANTS[0][j] == query[i])
                consonantCount++;
    }
    return consonantCount;
}

size_t digitEvaluate(char *query)
{
    size_t digitCount = 0;
    for (int i = 0; query[i] != '\0' ; ++i)
    {
        for (int j = 0; j < 10; ++j)
            if (DIGITS[0][j] == query[i])
                digitCount++;
    }
    return digitCount;
}

int main()
{
    ssize_t line_size;
    size_t vowelCount = 0;
    size_t consonantCount = 0;
    size_t digitCount = 0;
    FILE *fptr;
    if((fptr = fopen("./data/lipsum.txt", "r")) != NULL)
    {
        char *text = NULL;
        size_t len;

        while (getline(&text, &len, fptr) >= 0)
        {
            vowelCount += vowelEvaluate(text);
            consonantCount += consonantEvaluate(text);
            digitCount += digitEvaluate(text);
        }
        fclose(fptr);
    }

    printf("\nVowel Count: %zu", vowelCount);
    printf("\nConsonant Count: %zu", consonantCount);
    printf("\nDigit Count: %zu", digitCount);

    return 0;
}