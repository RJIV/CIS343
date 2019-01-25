%{

	#include "lang.tab.h"
	#include <stdio.h>

%}

%%

[0-9]+		return INT;
ZERO		return ZERO;
X		return X;
Y		return Y;
Z		return Z;
;		return EOL;
END		return END;
G		return G;
[ |\t|\n]	;
		printf("ERROR in LEXING.");


%%
