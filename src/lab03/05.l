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
printf("\nnum_vowel: %d", num_vowel);
printf("\nnum_constant: %d", num_constant);
printf("\nnum_digit: %d", num_digit);
printf("\nnum_whitespace: %d", num_whitespace);
return 0;
}