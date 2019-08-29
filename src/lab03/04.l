%{
#include<stdio.h>
%}
%%
"if"|"else"|"while"|"for"|"do"|"int"|"double"|"void" printf("keyword");
.* printf("not keyword");
%%

int yywrap()
{
return 1;
}

int main()
{
yylex();
return 0;
}