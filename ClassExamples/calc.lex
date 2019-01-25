%{
	#include "calc.tab.h"
	#include <stdlib.h>
	#include <stdio.h>
%}

%%

[0-9]+		{ yylval.ival = atoi(yytext); return INTEGER; }
\+		{ return ADD_OP; }
-		{ return SUB_OP; }
\*		{ return MUL_OP; }
\/		{ return DIV_OP; }
%		{ return MOD_OP; }
;		{ return EOL; }
[ |\t|\n]	{ printf("You done messed up.\n"); }

%%
