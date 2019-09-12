%{
#include<stdio.h>
int num_email = 0;
%}
%%
[a-zA-Z]+[a-zA-Z0-9]*[@][a-zA-Z]+[a-zA-Z0-9]*[.]([c][o][m]|[i][n]) { num_email++; }
%%

int yywrap()
{
return 1;
}

int main()
{
//yyin = fopen("./data/04_05.txt", "r");
yylex();
printf("\nemail: %d\n", num_email);
//fclose(yyin);
return 0;
}