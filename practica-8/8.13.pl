consecutivos(Elemento1,Elemento2,[Elemento1,Elemento2|_]).

consecutivos(Elemento1,Elemento2,[_|Cola]):-
	consecutivos(Elemento1,Elemento2,Cola).