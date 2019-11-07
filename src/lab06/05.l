%{
#include<stdio.h>
#include<ctype.h>
int i=0;
int last =0;
%}
%%
"one" {i+=1;last=1;}
"zero" {i+=0;last=0;}
"two" {i+=2;last=2;}
"three" {i+=3;last=3;}
"four" {i+=4;last=4;}
"five" {i+=5;last=5;}
"six" {i+=6;last=6;}
"seven" {i+=7;last=7;}
"eight" {i+=8;last=8;}
"nine" {i+=9;last=9;}
"ten" {i+=10;last=10;}
"eleven" {i+=11;last=11;}
"twelve" {i+=12;last=12;}
"thirteen" {i+=13;last=13;}
"fourteen" {i+=14;last=14;}
"fifteen" {i+=15;last=15;}
"sixteen" {i+=16;last=16;}
"seventeen" {i+=17;last=17;}
"eighteen" {i+=18;last=18;}
"nineteen" {i+=19;last=19;}
"twenty" {i+=20;last=20;}
"thirty" {i+=30;last=30;}
"forty" {i+=40;last=40;}
"fifty" {i+=50;last=50;}
"sixty" {i+=60;last=60;}
"seventy" {i+=70;last=70;}
"eighty" {i+=80;last=80;}
"ninety" {i+=90;last=90;}
"hundred" {i += last*100-last;}
"thousand" {i = last*1000;}
. ECHO;
%%
int yywrap() {return 1;}
int main()
{
yylex();
printf("%d\n",i);
return 0;
}
