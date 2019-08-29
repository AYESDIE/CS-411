%{
#include<stdio.h>
int num_operator = 0;
int num_operand = 0;
%}
%%
"+"|"-"|"*"|"%"|"/"|"++"|"--" { num_operator++; }
[a-zA-Z][a-zA-Z0-9]* { num_operand++; }
[0-9]+ { num_operand++; }
%%

int yywrap()
{
return 1;
}

int main()
{
yylex();
printf("\nnum_operator: %d", num_operator);
printf("\nnum_operand: %d", num_operand);
return 0;
}