longitud([],0).
longitud([_|Cola],Y):-
	longitud(Cola,Z),
	Y is Z + 1.