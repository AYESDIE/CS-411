//
// Created by ayesdie on 22/08/19.
//

//Count the number of words.

#include <stdio.h>
#include <stdlib.h>

size_t wordEvaluate(char *query)
{
    size_t wordCount = 0;
    for (int i = 0; query[i] != '\0' ; ++i)
    {
        if (((query[i] == ' ') || (query[i] == ',')) || (query[i] == '.'))
            wordCount++;
    }
    wordCount++;

    return wordCount;
}

int main()
{
    ssize_t line_size;
    size_t wordCount = 0;
    FILE *fptr;
    if((fptr = fopen("./lipsum.txt", "r")) != NULL)
    {
        char *text = NULL;
        size_t len;

        while (getline(&text, &len, fptr) >= 0)
        {
            wordCount += wordEvaluate(text);
        }
        fclose(fptr);
    }
    
    printf("Word Count: %zu", wordCount);

    return 0;
}