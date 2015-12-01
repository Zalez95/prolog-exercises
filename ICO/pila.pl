% Daniel Gonzalez Alonso

% estado actual, leemos a, no cojemos nada de la pila, metemos a 
% z -> fondo pila
% lambda -> meter nada (asi vaciamos la pila)
f(q0, a, z, q0, [a,z]).
f(q0, a, a, q0, [a,a]).
f(q0, b, a, q1, []).
f(q1, b, a, q1, []).
f(q1, [], z, q2, [z]).

inicia([], Estado, [Cima|_]):-
	f(Estado, [], Cima, q2, [z]).
inicia([Cabeza|RestoEntrada], Estado, [Cima|RestoPila]):-
	f(Estado, Cabeza, Cima, NuevoEstado, NuevaCima),
	append(NuevaCima, RestoPila, NuevaPila),
	inicia(RestoEntrada, NuevoEstado, NuevaPila).

% programa que llama a inicio con los argumentos pasados, el estado inicial (que siempre es q0) y con la pila vacia
automata(Entrada):-
	inicia(Entrada, q0, [z]).

b([Cabeza|_], res):- res is Cabeza.
a(res):- R is [],
	b(R, res).