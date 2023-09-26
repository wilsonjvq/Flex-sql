%{
    #include <math.h>
%}

NUMERO   [0-9]
ID       [a-z][_a-z0-9]*

%%

{NUMERO}+    printf( "NUMERO: %s\n", yytext);

[sS][eE][lL][eE][cC][tT]|[wW][hH][eE][rR][eE]|[fF][rR][oO][mM]    printf( "PC: %s\n", yytext );

{ID}    printf( "ID: %s\n", yytext );

"="|"<" printf( "OPREL: %s\n", yytext);

","     printf( "SIGNO: %s\n", yytext);

[ \t\n]+

%%

int main()
{
    yyin = fopen( "texto.txt", "r" );
    yylex();
}
