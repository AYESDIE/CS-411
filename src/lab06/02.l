%{
#include<stdio.h>
#include<ctype.h>
int num;
%}
%%
[0-9]+ { num = atoi(yytext);
int b=1; 
for(int i=2;i<=num/2;i++){ if(num%i==0){b=0;}}
if(b==1){printf("prime");}
else{printf("not prime");}
}
. ECHO;
%%
int yywrap() {return 1;}
int main()
{
yylex();
return 0;
}
