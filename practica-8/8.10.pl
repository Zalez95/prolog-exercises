burbujaCre([X,Y], [X,Y]):- Y > X.
burbujaCre([X,Y], [Y,X]).
burbujaCre([X,Y|Cola], [X|Res]):-
	Y > X,
	burbujaCre([Y|Cola], Res).
burbujaCre([X,Y|Cola], [Y|Res]):-
	burbujaCre([X|Cola], Res).

ordena(Lista, Cont, Lista):-
	Cont is 0. 
ordena(Lista, Cont, Res):-
	Cont2 is Cont - 1,
	burbujaCre(Lista, Lista2),
	ordena(Lista2, Cont2, Res).

longitud([],0).
longitud([_|Cola], Num):-
	longitud(Cola, Num2),
	Num is Num2 + 1.

secuencia([Elemento|Cola], Elemento, Res):-
	longitud(Cola, Num),
	Num2 = Num - 1,
	ordena(Cola, Num2, Res).
secuencia([_|Cola], Elemento, Res):-
	secuencia(Cola, Elemento, Res).