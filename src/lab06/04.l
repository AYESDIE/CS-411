%{
#include<stdio.h>
#include<ctype.h>
#include<string.h>
%}
%%
[a-zA-Z0-9]+ {int flag=1;
int j=0;
for(int i=0,j=strlen(yytext)-1;i<=j;i++,j--){
	if(yytext[i]==yytext[j]){flag=1;}
	else{flag=0;}
}
if(flag==0){printf("not pallardrum");}
else{printf("pallardrum");}
}
. ECHO;
%%
int yywrap() {return 1;}
int main()
{
yylex();
return 0;
}
