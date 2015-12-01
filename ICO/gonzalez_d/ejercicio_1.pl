% Daniel Gonzalez Alonso
% Ejercicio 1 - Meta-interprete con profundidad maxima.

:-op(40, xfy, &).
:-op(50, xfy, --->).

% Meta Interprete.
solve_pmax(_, 0):-!, fail.
solve_pmax(true, _):-!.
solve_pmax((A & B), Prf):-!,
	solve_pmax(A, Prf),
	solve_pmax(B, Prf).
solve_pmax(A, Prf):-!,
	Prf2 is Prf-1,
	B ---> A,
	solve_pmax(B, Prf2).

% Base de conocimiento.
true ---> live(outside).

true ---> ok(_).

true ---> down(s1).
true ---> up(s2).
true ---> up(s3).

true ---> light(l1).
true ---> light(l2).
true ---> connected(l1, w0).
true ---> connected(l2, w4).
true ---> connected(p1, w3).
true ---> connected(p2, w6).
true ---> connected(w5, outside).

ok(cb1) ---> connected(w3, w5).
ok(cb2) ---> connected(w6, w5).

up(s1) & ok(s1) ---> connected(w1, w3).
up(s2) & ok(s2) ---> connected(w0, w1).
up(s3) & ok(s3) ---> connected(w4, w3).
down(s1) & ok(s1) ---> connected(w2, w3).
down(s2) & ok(s2) ---> connected(w0, w2).

light(L) & ok(L) & live(L) ---> lit(L).

connected(X, Y) & live(Y) ---> live(X).