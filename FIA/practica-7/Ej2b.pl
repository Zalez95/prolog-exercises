color(azul).
color(amarillo).
color(blanco).
color(rosa).
color(naranja).
color(violeta).

camiseta(ts, violeta).
camiseta(fs, amarillo).
camiseta(rd, azul).

colores(X,Y):-
	color(Y),
	camiseta(X,Y).