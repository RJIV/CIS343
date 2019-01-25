%{
	#include <stdio.h>
%}

%union {
	int ival;
	float fval;
	char* sval;
}

%token INTEGER
%token ADD_OP
%token SUB_OP
%token DIV_OP
%token MUL_OP
%token MOD_OP
%token EOL
%type <ival> INTEGER

%%

program: 		list_of_expressions
       ;

list_of_expressions:	expression
	|		expression list_of_expressions
	;

expression:		INTEGER ADD_OP INTEGER EOL 	{total += $1 + $3; printf("%f\n", total);}
	|		INTEGER SUB_OP INTEGER EOL	{total += $1 - $3; printf("%f\n", total);}	
	|		INTEGER MUL_OP INTEGER EOL	{total += $1 * $3; printf("%f\n", total);}	
	|		INTEGER DIV_OP INTEGER EOL	{total += $1 / $3; printf("%f\n", total);}	
	|		INTEGER MOD_OP INTEGER EOL	{total += $1 % $3; printf("%f\n", total);}	
	;

%%

int main(int argc, char** argv){
	yyparse();
}
