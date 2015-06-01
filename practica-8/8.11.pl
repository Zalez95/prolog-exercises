burbujaDeCre([X,Y], [X,Y]):- X > Y.
burbujaDeCre([X,Y], [Y,X]).
burbujaDeCre([X,Y|Cola], [X|Res]):-
	X > Y,
	burbujaDeCre([Y|Cola], Res).
burbujaDeCre([X,Y|Cola], [Y|Res]):-
	burbujaDeCre([X|Cola], Res).

ordena(Lista, Cont, Lista):-
	Cont is 0. 
ordena(Lista, Cont, Res):-
	Cont2 is Cont - 1,
	burbujaDeCre(Lista, Lista2),
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