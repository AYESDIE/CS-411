%{
#include<stdio.h>
int num_clause = 0;
int num_period = 0;
%}

%%
[.] { num_period++; }
("and"|"or")+[.] { num_clause++; }
%%

int yywrap()
{
return 1;
}

int main()
{
    yyin = fopen("./data/05_03.txt", "r");
    yylex();
    printf("\nnormal sentence: %d\n", num_period - num_clause);
    printf("\ncompound sentence: %d\n", num_clause);
    fclose(yyin);
    return 0;
}