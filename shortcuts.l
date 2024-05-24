%{
#include <stdio.h>
%}

%%
[^a-zA-Z]i[^a-z]      { fprintf(yyout, " int("); }
"if "     { fprintf(yyout, "if "); }
" fl"     { fprintf(yyout, "float"); }
"inp"    { fprintf(yyout, "input"); }
"el "    { fprintf(yyout, "elif "); }
" el "     { fprintf(yyout, " el "); }
"e:"    { fprintf(yyout, "else:"); }
"w"      { fprintf(yyout, "while "); }
"fo"     { fprintf(yyout, "for "); }
[^a-zA-Z]p[^a-z]      { fprintf(yyout, "print("); }
[^a-zA-Z]r[^a-z]      { fprintf(yyout, "return "); }
" b"      { fprintf(yyout, "break "); }
" im"     { fprintf(yyout, "import "); }
[^a-zA-Z]l[^a-z]       { fprintf(yyout, "len "); }
" ab"     { fprintf(yyout, "abs "); }
[^a-zA-Z]d[^a-z]     { fprintf(yyout, "def "); }
" c"      { fprintf(yyout, "class "); }
" pa"     { fprintf(yyout, "pass "); }
" co"     { fprintf(yyout, "continue "); }
" Tr"     { fprintf(yyout, "True "); }
" Fa"     { fprintf(yyout, "False "); }
" N"      { fprintf(yyout, "None "); }
" an"     { fprintf(yyout, "and "); }
" or"     { fprintf(yyout, "or "); }
" n "     { fprintf(yyout, "not "); }
" ra"     { fprintf(yyout, "raise "); }
" fr"     { fprintf(yyout, "from "); }
" a"      { fprintf(yyout, "as "); }
" wi"     { fprintf(yyout, "with "); }
" ass"    { fprintf(yyout, "assert "); }
" g"      { fprintf(yyout, "global "); }
.         { fprintf(yyout, "%c", yytext[0]); }

%%

int main(int argc, char **argv) {
    if (argc != 3) {
        printf("Uso: %s archivo_entrada archivo_salida\n", argv[0]);
        return 1;
    }

    FILE *entrada = fopen(argv[1], "r");
    FILE *salida = fopen(argv[2], "w");

    if (!entrada) {
        printf("No se pudo abrir el archivo de entrada\n");
        return 1;
    }

    if (!salida) {
        printf("No se pudo abrir el archivo de salida\n");
        fclose(entrada);
        return 1;
    }

    yyin = entrada;
    yyout = salida;

    yylex();

    fclose(entrada);
    fclose(salida);
    return 0;
}
