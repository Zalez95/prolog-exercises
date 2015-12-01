% Daniel Gonzalez Alonso

f(q0,b,q1).
f(q1,a,q0).
f(q1,b,q3).
f(q3,b,q3).
f(q0,a,q2).
f(q2,b,q3).
f(q2,a,q2).
f(q3,a,q0).

% F(q2, abab, q1)
res(Entrada, [Cabeza], Final):-
	f(Entrada, Cabeza, Final).
res(Entrada, [Cabeza|Cola], Final):-
	f(Entrada, Cabeza, X2),
	res(X2, Cola, Final).

acepta(Lista,Re):-
	res(q0,Lista,Q),
	Q=q1,
	Re is 1, !.
acepta(Lista,Re):-
	res(q0,Lista,Q),
	Q\=q1,
	Re is 0, !.