%{
#include<stdio.h>
%}
%%
[a-zA-Z] {printf("alphabet \n");}
[0-9] {printf("digits \n");}
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