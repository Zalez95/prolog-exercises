decreciente([X, Y]):- X > Y.

decreciente([X, Y | Cola]):-
	X > Y,
	decreciente([Y | Cola]).