

digit 			[0-9]
integer 		{digit}+
float 			{digit}*(\.{digit}+)
identifier		[a-zA-Z][a-zA-Z0-9]*
returntype 		("Rinteger"|"Rstring"|"Rfloat”|”Rboolean"|"Rshape"|"Rlocation"|"Rsize"|"Rcolor"|"void")	
string_literal 	\"([^\"\\\n]|\\\"|\\n|\\t|\\\\)*\" 
comment 		\/\/[^\n]*

%%
{comment}		printf("Comment: %s\n", yytext);
\[				printf("Left bracket\n");
\]				printf("Right bracket\n");
\(				printf("A left parenthesis\n");
\)				printf("A right paranthesis\n");
\,				printf("A comma\n");
\{				printf("Left curlybrackett\n");
\}				printf("Right curlybrackett\n");
\=				printf("Assignment operator\n");
beginmain		printf("Begining of the main\n");
endmain			printf("End of the main\n");
{float}			printf("A float number with value: %s\n", yytext);

{string_literal} printf("A string with text: %s\n",yytext);
{integer}		printf("An integer with value: %s\n", yytext);
Edge			printf("Type edge\n");
Vertex			printf("Type vertex\n");
Property		printf("Type property\n");
List			printf("Type list\n");
Map				printf("Type map\n");
Path			printf("Type path\n");
\.Add			printf("Add function\n");
\.ConnectTo		printf("ConnectTo function\n");
\.AttachProperty	printf("AttachProperty function\n");
\.AddProperty	printf("AddProperty function\n");
\.Delete		printf("Delete function\n");

\=\=			printf("Equals to indicator\n");
!\=				printf("Not equals to indicator\n");
\<\=			printf("Less than or equal to indicator\n");
\<				printf("Less than indicator\n");
\>\=			printf("Greater than or equal to indicator\n");
\>				printf("Greater than indicator\n");
->				printf("Path arrow operator\n");
\*  			printf("Repeat operator\n");
\|				printf("Alternation operator\n");
\:				printf(": character spotted\n");

{identifier}	printf("An identifier as: %s\n",yytext);

.|\n ;




%%

int main(){
	yylex();
	return 0; 
}