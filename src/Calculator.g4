grammar Calculator;


expression: multiplyingExpression ((PLUS | MINUS) multiplyingExpression)*;
multiplyingExpression: powExpression ((TIMES | DIV) powExpression)*;
powExpression: integralExpression | POW integralExpression | SQRT integralExpression;
integralExpression: MINUS INT | INT;


INT: [0-9]+ ;
DOT: '.';
TIMES: '*' ;
DIV: '/' ;
PLUS: '+' ;
MINUS: '-' ;
POW: 'pow' ;
SQRT: 'sqrt' ;
INTEGRAL: 'cal';
WS : [ \t\r\n]+ -> skip ;