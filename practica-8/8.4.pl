borrar(Elemento,[X|Cola],Cola):-
	Elemento = X.
borrar(Elemento,[X|Cola],[X|Res2]):-borrar(Elemento,Cola,Res2). 