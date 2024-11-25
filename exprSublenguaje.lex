/* --------------------------Seccion codigo-usuario ------------------------ */
package cup;
import java_cup.runtime.Symbol;

%%
/* ----------------- Seccion de opciones y declaraciones  ----------------- */
%standalone
%cup

PUBLIC = public
CLASS = class
STATIC = static
VOID = void 
INT = int
BOOLEAN = boolean 
WHILE = while 
FOR = for 
DO = do
RETURN = return 
MAIN = main
INTEGER_LIT = [0-9]+
BOOL_LIT = "true" | "false"
IDENTIFIER = [a-zA-Z][a-zA-Z0-9_]*
PLUS_SUB = "+"|"-"
MULT_DIV = "*"|"/" 
NOT = "!"
OR_AND = "||" | "&&" 
OP_PARENTH = "("
CL_PARENTH = ")"
OP_BRACKET = "{"
CL_BRACKET = "}"
SEMI = ";"
COMMA = ","
ASSIGN = "=" 
EQUALITY = "==" | "!="
COMPARISON = "<="|"<"|">"|">="
INCR_DECR = "++" | "--"

%%
/* ------------------------ Seccion de reglas lexicas ---------------------- */

{PUBLIC} { return new Symbol(sym.PUBLIC, yytext()); }
{CLASS} { return new Symbol(sym.CLASS, yytext()); }
{STATIC} { return new Symbol(sym.STATIC, yytext()); }
{VOID} { return new Symbol(sym.VOID, yytext()); }
{INT} { return new Symbol(sym.INT, yytext()); }
{BOOLEAN} { return new Symbol(sym.BOOLEAN, yytext()); }
{WHILE} { return new Symbol(sym.WHILE, yytext()); }
{FOR} { return new Symbol(sym.FOR, yytext()); }
{DO} { return new Symbol(sym.DO, yytext()); }
{RETURN} { return new Symbol(sym.RETURN, yytext()); }
{MAIN} { return new Symbol(sym.MAIN, yytext()); }
{INTEGER_LIT} { return new Symbol(sym.INTEGER_LIT, yytext()); }
{BOOL_LIT} { return new Symbol(sym.BOOL_LIT, yytext()); }
{IDENTIFIER} { return new Symbol(sym.IDENTIFIER, yytext()); }
{PLUS_SUB} { return new Symbol(sym.PLUS_SUB, yytext()); }
{MULT_DIV} { return new Symbol(sym.MULT_DIV, yytext()); }
{NOT} {  return new Symbol(sym.NOT, yytext()); }
{OR_AND} { return new Symbol(sym.OR_AND, yytext()); }
{OP_PARENTH} { return new Symbol(sym.OP_PARENTH, yytext()); }
{CL_PARENTH} { return new Symbol(sym.CL_PARENTH, yytext()); }
{OP_BRACKET} { return new Symbol(sym.OP_BRACKET, yytext()); }
{CL_BRACKET} { return new Symbol(sym.CL_BRACKET, yytext()); }
{SEMI} { return new Symbol(sym.SEMI, yytext()); }
{COMMA} { return new Symbol(sym.COMMA, yytext()); }
{ASSIGN} { return new Symbol(sym.ASSIGN, yytext()); }
{EQUALITY} { return new Symbol(sym.EQUALITY, yytext()); }
{COMPARISON} { return new Symbol(sym.COMPARISON, yytext()); }
{INCR_DECR} { return new Symbol(sym.INCR_DECR, yytext()); }
. {}
