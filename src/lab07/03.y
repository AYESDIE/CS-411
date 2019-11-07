%{
#include <stdio.h>
void yyerror();
int yylex(void);
%}

%left 		'+' '-'
%left 		'*' '/'
%token 		A B NL
%start 		S

%%
S 	:	E NL 		{printf("RESULT = %d", $1); return 0;}
  	;
E 	:	E '+' E		{$$ = $1 + $3}
	|	E '-' E		{}
	|	E '*' E		{}
	|	E '/' E		{}
	|	num
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