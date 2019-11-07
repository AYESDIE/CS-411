%{
#include <stdio.h>
void yyerror();
int yylex(void);
%}

%token 		A B NL
%start 		S

%%
S 	:	E B NL { printf("valid"); return 0; }
    	|
  	;
E 	:	A E
	|
	;
%%

int main()
{
printf("Enter exp ");
yyparse();
return 0;
}

void yyerror()
{
    printf("invalid");
}