%{
#include<stdio.h>
int num_vowel = 0;
int num_constant = 0;
int num_digit = 0;
int num_whitespace = 0;
%}
%%
[aeiouAEIOU] num_vowel++;
[a-zA-Z] num_constant++;
[0-9] num_digit++;
[ \t] num_whitespace++;
%%

int yywrap()
{
return 1;
}

int main()
{
yylex();
printf("num_vowel: %d\n", num_vowel);
printf("num_constant: %d\n", num_constant);
printf("num_digit: %d\n", num_digit);
printf("num_whitespace: %d\n", num_whitespace);
return 0;
}