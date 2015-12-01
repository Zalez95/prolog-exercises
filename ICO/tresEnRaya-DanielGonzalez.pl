% Daniel Gonzalez Alonso

% Lineas posibles en el tablero:
esLinea([1, 2, 3]).
esLinea([4, 5, 6]).
esLinea([7, 8, 9]).
esLinea([1, 4, 7]).
esLinea([2, 5, 8]).
esLinea([3, 6, 9]).
esLinea([1, 5, 9]).
esLinea([3, 5, 7]).


% Una posicion es vacia si en su posicion hay ""
vacio(1, [""|_]):-!.
vacio(X, [_|Resto]):-
	X > 1,
	X1 is X - 1,
	vacio(X1, Resto).


% Una posicion es cruz si en su posicion hay x
cruz(1, [x|_]):-!.
cruz(X, [_|Resto]):-
	X > 1,
	X1 is X - 1,
	cruz(X1, Resto).

	
% Existe una amenaza si en una linea formada por [X,Y,Z]
% hay ["",x,x]  o  [x,"",x]  o  [x,x,""], esta regla devolvera
% la posicion de la lista donde deberiamos poner la siguiente
% casilla si existe una amenaza.
amenaza([X, Y, Z], B, X):- vacio(X, B), cruz(Y, B), cruz(Z, B).
amenaza([X, Y, Z], B, Y):- cruz(X, B), vacio(Y, B), cruz(Z, B).
amenaza([X, Y, Z], B, Z):- cruz(X, B), cruz(Y, B), vacio(Z, B).


% Hay un movimiento forzoso si en una linea hay una amenaza,
% esta regla buscara en Tablero las posibles lineas y devolvera
% la posicion en Tablero donde deberiamos poner la siguiente
% casilla si existe una amenaza.
movimiento_forzoso(Tablero, Casilla):- 
	esLinea(Linea),
	amenaza(Linea, Tablero, Casilla).