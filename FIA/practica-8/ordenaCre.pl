minimo([X],[],X).
minimo([Cabeza|Cola],Cola,Cabeza):-
	minimo(Cola,_,MinimoCola),
	Cabeza < MinimoCola.
minimo([Cabeza|Cola],[Cabeza|Lis],MinimoCola):-
	minimo(Cola,Lis,MinimoCola),
	Cabeza >= MinimoCola.

ordenaCre([],[]).
ordenaCre(Lista,[Minimo|Res]):-
	minimo(Lista,ListaSinMinimo,Minimo),
	ordenaCre(ListaSinMinimo,Res).