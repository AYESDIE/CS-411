//
// Created by ayesdie on 08/08/19.
//

#include<stdio.h>

int main() {
    char *text = NULL;
    size_t len;
    int i = 2, a = 0;

    printf("\n\nEnter Text : ");
    getline(&text, &len, stdin);

    if (text[0] == '/')
    {
        if (text[1] == '/')
        {
            printf("\nIt is a Comment.");
        }
        else if (text[1] == '*')
        {
            for (i = 2; i <= 30; i++)
            {
                if (text[i] == '*' && text[i + 1] == '/')
                {
                    printf("\nIt is a Comment.");
                    a = 1;
                    break;
                }
                else
                    continue;
            }
            if (a == 0)
            {
                printf("\nIt is Not a Comment.");
            }
        }
        else
        {
            printf("\nIt is Not a Comment.");
        }
    }
    return 0;
}