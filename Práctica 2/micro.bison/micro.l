%option case-insensitive
%{
#include <stdio.h>
#include "micro.tab.h"  

int num_lineas=1;
%}

%x COMENTARIO_SIMPLE
%x CADENA
%x CARACTER
H [hH]
DIGITO [0-9]
OCTAL [0-7]
O [oO]
HEXA [0-9A-Fa-f]


%%


[\"] {BEGIN(CADENA);printf("\nLinea %d, CTC_CADENA : ",num_lineas);}
<CADENA>[^\\\'\\\\n'"] {printf("%s",yytext);}
<CADENA>[\\]{2}|(\\[abfnrtv])  {printf("%s",yytext);}
<CADENA>[\\\n] {printf("%s",yytext);}
<CADENA>[\"] {BEGIN(INITIAL);printf("\n");}


-- {BEGIN(COMENTARIO_SIMPLE);printf("\nLinea %d, comentario:",num_lineas);}
<COMENTARIO_SIMPLE>.$ { BEGIN(INITIAL);printf("%s",yytext);}
<COMENTARIO_SIMPLE>. printf("%s",yytext);

\' {BEGIN(CARACTER);}
<CARACTER>[^\\\'\\\\n'] {printf("\nLinea %d, CTC_CARACTER '%s'",num_lineas, yytext);}
<CARACTER>["]|[\\]{2}|(\\[abfnrtv])  {printf("\nLinea %d, CTC_CARACTER '%s'",num_lineas, yytext);}
<CARACTER>\' {BEGIN(INITIAL);}

array {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (ARRAY);} 
boolean {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (BOOLEAN);}
case {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (CASE);}
character {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (CHARACTER);}
constant {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (CONSTANT);}
else {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (ELSE);}
exit {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (EXIT);}
false {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (FALSE);}
finish {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (FINISH);}
float {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (FLOAT);}
for {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (FOR);}
foreach {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (FOREACH);}
function {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (FUNCTION);}
hashtable {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (HASHTABLE);}
if {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (IF);}
in {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (IN);}
integer {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (INTEGER);}
is {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (IS);}
loop {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (LOOP);}
nil {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (NIL);}
of {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (OF);}
others {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (OTHERS);}
out {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (OUT);}
procedure {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (PROCEDURE);}
record {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (RECORD);}
return {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (RETURN);}
reverse {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (REVERSE);}
start {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (START);}
then {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (THEN);}
true {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (TRUE);}
type {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (TYPE);}
when {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (WHEN);}
while {printf("\nLinea %d, Palabra reservada: %s",num_lineas, yytext);return (WHILE);}

"{" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
"}" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
"(" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
")" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
":" {printf("\nLinea %d, delimitador %s",num_lineas, yytext); return yytext[0];}
";" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
"," {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
"->" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return (FLECHA);}
"[" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
"]" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}
".." {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return (DOS_PTOS);}
"|" {printf("\nLinea %d, delimitador %s",num_lineas, yytext);return yytext[0];}

"+" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"*" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"%" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"\*\*" {printf("\nLinea %d, operador %s",num_lineas, yytext);return (EXP);}
"@" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"&" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"=" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"/=" {printf("\nLinea %d, operador %s",num_lineas, yytext);return (DISTINTO);}
"<" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
">" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"<=" {printf("\nLinea %d, operador %s",num_lineas, yytext);return (MENOR_IGUAL);}
">=" {printf("\nLinea %d, operador %s",num_lineas, yytext);return (MAYOR_IGUAL);}
"not" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"and" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
"or" {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];}
":=" {printf("\nLinea %d, operador %s",num_lineas, yytext);return (ASIG);}
"\." {printf("\nLinea %d, operador %s",num_lineas, yytext);return yytext[0];} 

[\s\t ] ;

{DIGITO}+ {printf("\nLinea %d, CTC_INT %s",num_lineas, yytext);}



[\\]?({O}{OCTAL}+)?({H}?{HEXA}+)? {printf("\nLinea %d, CTC_INT %s",num_lineas, yytext);}
([\\]?({O}{OCTAL}+)?({H}?{HEXA}+)?)?[\.]([+-]?[eE]?{DIGITO}+)?([\\]?({O}{OCTAL}+)?({H}?{HEXA}+)?)?  {printf("\nLinea %d, CTC_FLOAT %s",num_lineas, yytext);}

((_[0-9]*)?[a-zA-Z_$][a-zA-Z\\d_$]*) {printf("\nLinea %d, identificador %s",num_lineas,yytext);return (IDENTIFICADOR);}
\n num_lineas++;
%%
