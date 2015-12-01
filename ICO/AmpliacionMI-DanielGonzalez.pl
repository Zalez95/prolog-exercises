% Daniel Gonzalez Alonso

% Meta-interprete Vanilla con traza e indentacion.
solve_traza(true, _):-!.
solve_traza((A, B), Num) :-!, solve_traza(A, Num), solve_traza(B, Num).
solve_traza(A, Num):- !,
	tab(Num*2), write(Num), write(' '), write(A), nl,
	Num1 is Num + 1,
	clause(A,B), solve_traza(B, Num1).

solve_traza_nivel(A):-
	solve_traza(A, 0).

% Programa:
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W,X):- conectado(W,V), valor(V,X). 