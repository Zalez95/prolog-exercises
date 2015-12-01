% Daniel Gonzalez Alonso

% Calculos del factorial en Prolog.
factorial(1, 1):- !.
factorial(X, Res):-
	X > 1,
	X1 is X-1,
	factorial(X1,Y),
	Res is X*Y.

% Calculo de una sucesion.
f(0, 0):-!.
f(1, 1):-!.
f(N, Res):-
	N > 1,
	N1 is N-1,
	N2 is N-2,
	f(N1, Res1),
	f(N2, Res2),
	Res is 3*Res1 + 2*Res2.

% Calculo para obtener el elemento dentro de la serie.
serie(1, Res):-
	f(1, Res), !.
serie(N, Res):-
	N > 1,
	N1 is N-1,
	serie(N1, Res1),
	f(N, Res2),
	Res is Res1 + Res2.