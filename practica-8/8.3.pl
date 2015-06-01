suma([],0).
suma([Num|Cola],Resultado):-
	suma(Cola,Resto),
	Resultado is Num + Resto.
	