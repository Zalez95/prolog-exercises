% Daniel Gonzalez Alonso
% Ejercicio 2 - Meta-interprete que construya un arbol
% de pruebas.

:-op(40, xfy, &).
:-op(50, xfy, --->).

% Meta Interprete.
solve_proof(true, true):-!.
solve_proof((A, B), (ProofA, ProofB)):-!,
	solve_proof(A, ProofA),
	solve_proof(B, ProofB).
solve_proof(A, (A:-Proof)):-!,
	clause(A, B),
	solve_proof(B, Proof).

% Base de conocimiento.
conectado(w2, w1).
conectado(w3, w2).
valor(w1, 1).
valor(W, X):- conectado(W, V), valor(V, X).