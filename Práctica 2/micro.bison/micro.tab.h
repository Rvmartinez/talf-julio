/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_MICRO_TAB_H_INCLUDED
# define YY_YY_MICRO_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    AND = 258,
    ARRAY = 259,
    ASIG = 260,
    BOOLEAN = 261,
    CTC_CADENA = 262,
    CTC_CARACTER = 263,
    CTC_FLOAT = 264,
    CTC_INT = 265,
    CASE = 266,
    CHARACTER = 267,
    CONSTANT = 268,
    DISTINTO = 269,
    DOS_PTOS = 270,
    ELSE = 271,
    FINISH = 272,
    EXIT = 273,
    EXP = 274,
    FALSE = 275,
    FLECHA = 276,
    FLOAT = 277,
    FOREACH = 278,
    FOR = 279,
    FUNCTION = 280,
    HASHTABLE = 281,
    IDENTIFICADOR = 282,
    IF = 283,
    IN = 284,
    INTEGER = 285,
    IS = 286,
    LOOP = 287,
    MAYOR_IGUAL = 288,
    MENOR_IGUAL = 289,
    MOD = 290,
    NOT = 291,
    NIL = 292,
    OF = 293,
    OR = 294,
    OTHERS = 295,
    OUT = 296,
    PROCEDURE = 297,
    RECORD = 298,
    RETURN = 299,
    REVERSE = 300,
    START = 301,
    THEN = 302,
    TRUE = 303,
    TYPE = 304,
    WHEN = 305,
    WHILE = 306
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_MICRO_TAB_H_INCLUDED  */
