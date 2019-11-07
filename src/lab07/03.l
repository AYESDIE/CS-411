%{
#include<stdio.h>
#include "01.tab.h"
%}

%%
[a] {return A;}
[b] {return B;}
[\n] {return NL;}
%%

int yywrap()
{
return 1;
}