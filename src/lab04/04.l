%{
#include<stdio.h>
int num_scomment = 0;
int num_mcomment = 0;
%}
%%
"//".*   { num_scomment++; }
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/]  { num_mcomment++; }
%%

int yywrap()
{
return 1;
}

int main()
{
yyin = fopen("./data/04_04.txt", "r");
yylex();
printf("\nnum_scomment: %d\n", num_scomment);
printf("num_mcomment: %d\n", num_mcomment);
fclose(yyin);
return 0;
}