% Daniel Gonzalez Alonso

% ---------- Operaciones ----------
:-op(40, xfy, &).
:-op(50, xfy, --->).

% Meta interprete: 
solve(true):- !.
solve(&(A, B)) :- !, solve(A), solve(B).	% Operacion And
solve(A):- !, B ---> A, solve(B).		% Operacion implicacion

% Asistente al diagnostico del funcionamiento de una red 
% electrica.
% ------------- Hechos -------------
% El cable externo tiene tension
true ---> live(outside).

% X es una bombilla:
true ---> light(l1).
true ---> light(l2).

% El interruptor X esta cerrado
true ---> down(s1).

% El interruptor X esta abierto
true ---> up(s2).
true ---> up(s3).

% X funciona correctamente
true ---> ok(_).

% X está conectado a Y:
true ---> connected_to(p2,w6).
true ---> connected_to(p1,w3).
true ---> connected_to(w5,outside).
true ---> connected_to(l1,w0).
true ---> connected_to(l2,w4).


% ------------- Reglas -------------
% Si el diferencial X funciona correctamente, entonces el
% cable Y está conectado al cable Z
ok(cb2) ---> connected_to(w6,w5).
ok(cb1) ---> connected_to(w3,w5).

% Si el interruptor X está abierto y funciona correctamente,
% entonces el cable Y está conectado al cable Z
(up(s1) & ok(s1)) ---> connected_to(w1,w3).
(up(s2) & ok(s2)) ---> connected_to(w0,w1).
(up(s3) & ok(s3)) ---> connected_to(w4,w3).
(down(s1) & ok(s1)) ---> connected_to(w2,w3).
(down(s2) & ok(s2)) ---> connected_to(w0,w2).

% Si una bombilla (light) funciona correctamente (ok) y le
% llega tensión (live), entonces se enciende (lit).
((light(L) & ok(L)) & live(L)) ---> lit(L).

% Si un cable está conectado a otro (connected_to), al que
% le llega tensión (live), entonces tiene tensión (live):
(connected_to(W,W1) & live(W1)) ---> live(W).