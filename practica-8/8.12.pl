elimina(Num, [_|Cola], Cola):- Num = 1.
elimina(Num, [X|Cola], [X|Res]):-
	Num2 is Num - 1,
	elimina(Num2, Cola, Res).