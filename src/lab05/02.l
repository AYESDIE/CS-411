%{
#include<stdio.h>
%}

%%
[a-z] { printf("%c", ((yytext[0] - 92) % 26) + 97); }
[A-Z] { printf("%c", ((yytext[0] - 60) % 26) + 65); }
[\t\n] ECHO;
. ECHO;
%%

int yywrap()
{
return 1;
}

int main()
{
    yylex();
}