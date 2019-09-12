%{
#include<stdio.h>
int num_word = 0;
int num_line = 0;
int num_digit = 0;
%}
%%
"." { num_line++; }
[a-zA-Z]+ { num_word++; }
[0-9]+ { num_digit++; }
%%

int yywrap()
{
return 1;
}

int main()
{
//yyin = fopen("./data/04_03.txt", "r");
yylex();
printf("\nnum_line: %d\n", num_line);
printf("num_word: %d\n", num_word);
printf("num_digit: %d\n", num_digit);
//fclose(yyin);
return 0;
}