sumar_n(1, 1):- !.
sumar_n(N, X):- N1 is N-1, sumar_n(N1, Res), X is Res+N.