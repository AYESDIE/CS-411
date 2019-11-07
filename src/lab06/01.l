%{
#include<stdio.h>
#include<ctype.h>
int num;
%}
%%
[0-9]+ { num = atoi(yytext); 
if(num%2==0){printf("even");}
else{printf("odd");}}
. ECHO;
%%
int yywrap() {return 1;}
int main()
{
yylex();
return 0;
}
