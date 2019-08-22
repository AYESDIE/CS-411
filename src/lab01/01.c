//
// Created by ayesdie on 08/08/19.
//

// WAP to check keyword.
#include <stdio.h>
#include <string.h>

int KEYWORD_COUNT = 9;
char KEYWORD[][9] = {"if", "else", "for", "while", "int", "float", "char",
                    "double", "const"};

int isKeyword(char query[])
{
    int res = 0;
    for (int i = 0; i <= KEYWORD_COUNT; i++)
    {
        if (strcmp(query, KEYWORD[i]) != 0)
        {
            printf("%s", query);
            res = 1;
            return res;
        }
    }
    return res;
}

int main()
{
    char query[100];
    scanf("%s", query);
    if (isKeyword(query) == 1)
    {
        printf("match");
    }
    else
    {
        printf("notmatch");
    }
    return 0;
}