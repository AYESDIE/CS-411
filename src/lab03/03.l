%{
#include<stdio.h>
%}
%%
[a-zA-Z][a-zA-Z0-9]* {printf("identidier\n");}
.ECHO;
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