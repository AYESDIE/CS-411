%{
#include<stdio.h>
int num_count = 0;
%}

%%
(^|[ ])[a|A][a-z]*[ \t\n] { printf("%s", yytext); num_count++; }
%%

int yywrap()
{
return 1;
}

int main()
{
    yylex();
    printf("\nCount of words starting with A: %d\n", num_count);
    return 0;
}