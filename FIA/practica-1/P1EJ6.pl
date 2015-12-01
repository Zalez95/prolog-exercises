gusta(X,Y):-madre(X,Y),bueno(Y).
mujer(Z):-madre(Z,R).
mujer(ana).
gusta(Z,ana):-marido(Z,ana).