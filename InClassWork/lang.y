%{
	#include <stdio.h>
	int yyerror(const char* err);
	
%}

%token G
%token X
%token Y
%token Z
%token INT
%token END
%token ZERO
%token EOL

%%

program:	list_of_expr END
       ;

list_of_expr:	expr
	    |	list_of_expr expr
	;

expr:		G INT X INT Y INT Z INT EOL
	    |	ZERO EOL
	;


%%

int main(int argc, char** argv){
	yyparse();
}

int yyerror(const char* err){
	printf("%s\n", err);
}
