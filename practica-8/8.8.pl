creciente([X, Y]):- X < Y.

creciente([X, Y | Cola]):-
	X < Y,
	creciente([Y | Cola]).