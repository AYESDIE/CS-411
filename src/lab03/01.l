%{
#include<stdio.h>
%}

%%
. ECHO ;
%%

int yywrap(){return 1;}

int main()
{
yylex();
return 0;
}