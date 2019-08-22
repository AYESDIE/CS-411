//
// Created by ayesdie on 08/08/19.
//

// WAP to check identifier

#include <stdio.h>

int typeCheck(char query)
{
    int q = (int)query;
    if ((q <= 57) && (q >= 48))
    {
        return 1;
    }
    else if ((q == 95)
            || ((q <= 90) && (q >= 65))
            || ((q <= 122) && (q >= 97)))
    {
        return 2;
    }
    else
    {
        return 0;
    }
}

int isIdentifier(char query[])
{
    if (typeCheck(query[0]) == 1)
    {
        return 0;
    }

    for (int i = 0; query[i] != '\0' ; ++i)
    {
        if (typeCheck(query[i]) == 0)
            return 0;

    }
    return 1;
}

int main()
{
    char query[100];
    scanf("%s", query);
    if (isIdentifier(query) == 1)
    {
        printf("is identifier");
    }
    else
    {
        printf("is not identifier");
    }
    return 0;
}