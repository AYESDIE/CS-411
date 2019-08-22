//
// Created by ayesdie on 22/08/19.
//

#include<stdio.h>

int main() {
    char *text = NULL;
    size_t crit = 0;
    size_t len;

    printf("\n\nEnter email : ");
    getline(&text, &len, stdin);

    for (int i = 0; text[i] != '\0' ; ++i)
    {
        if (i != 0 && ((text[i] == '@') && (crit == 0)))
        {
            crit = 1;
        }

        if (text[i - 1] != '@' && ((text[i] == '.') && (crit == 1)))
        {
            if (text[i + 1] == 'c')
            {
                if (text[i + 2] == 'o')
                {
                    if (text[i + 3] == 'm')
                    {
                        crit = 2;
                        break;
                    }                                   // m
                }                                       // o
            }                                           // c
        }                                               // .

    }

    if (crit == 2)
        printf("valid");
    else
        printf("invalid");

    return 0;
}
