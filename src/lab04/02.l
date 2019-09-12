%{
#include<stdio.h>
int num_operator = 0;
int num_operand = 0;
%}
%%
"+"|"-"|"*"|"%"|"/"|"++"|"--"|"=" { num_operator++; }
[a-zA-Z][a-zA-Z0-9]* { num_operand++; }
[0-9]+ { num_operand++; }
%%

int yywrap()
{
return 1;
}

int main()
{
//yyin = fopen("./data/04_02.txt", "r");
yylex();
printf("num_operator: %d\n", num_operator);
printf("num_operand: %d\n", num_operand);
//fclose(yyin);
return 0;
}