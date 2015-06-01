adyacentes(X, Y, [X,Y|_]).
adyacentes(X, Y, [Y,X|_]).
adyacentes(X, Y, [_|Lista]):- adyacentes(X, Y, Lista).