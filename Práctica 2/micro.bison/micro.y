%{

  #include <stdio.h>
  extern FILE *yyin;
  extern int yylex();

  #define YYDEBUG 1

  int yyerror(char *);

%}

%token AND ARRAY ASIG BOOLEAN CTC_CADENA CTC_CARACTER CTC_FLOAT CTC_INT CASE CHARACTER CONSTANT
%token DISTINTO DOS_PTOS ELSE FINISH EXIT EXP FALSE FLECHA FLOAT FOREACH FOR FUNCTION HASHTABLE
%token IDENTIFICADOR IF IN INTEGER IS LOOP MAYOR_IGUAL MENOR_IGUAL MOD NOT NIL OF OR OTHERS OUT
%token PROCEDURE RECORD RETURN REVERSE START THEN TRUE TYPE WHEN WHILE

%%

/* DECLARACIONES Y TIPOS */


/* SUBPROGRAMAS */


/* INSTRUCCIONES */


/* EXPRESIONES */


%%


int yyerror(char *s) {
  fflush(stdout);
  printf("   *****************, %s\n",s);
  }

int yywrap() {
  return(1);
  }

int main(int argc, char *argv[]) {

  yydebug = 0;

  if (argc < 2) {
    printf("Uso: ./micro NombreArchivo\n");
    }
  else {
    yyin = fopen(argv[1],"r");
    yyparse();
    }
  }
