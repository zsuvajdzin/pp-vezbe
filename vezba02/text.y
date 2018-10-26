%{
  #include <stdio.h>
  int yylex(void);
  int yyparse(void);
  extern int yylineno;
%}

%token  _DOT
%token  _CAPITAL_WORD
%token  _WORD

%%

text 
  : /* empty text */
  | text sentence
  ;
          
sentence 
  : _CAPITAL_WORD words _DOT
  ;

words 
  : /* empty */
  | words _WORD
  | words _CAPITAL_WORD    
  ;

%%

main() {
  yyparse();
}

yyerror(char *s) {
  fprintf(stderr, "line %d: SYNTAX ERROR %s\n", yylineno, s);
} 

