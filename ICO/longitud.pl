longitud([], 0).

longitud([_|Cola], Num):-

	longitud(Cola, Num2),

	Num is Num2 + 1.