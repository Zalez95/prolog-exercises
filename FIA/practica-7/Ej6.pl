enlace(a,b,3).
enlace(a,c,2).
enlace(c,d,4).
enlace(c,e,5).

suma(X,Y,Res):- Res is X + Y.

ruta(Pos1,Pos2,Res):-enlace(Pos1,Pos2,Res).
ruta(Pos1,Pos2,Res):-
	enlace(Pos1,Pos3,Res2),
	ruta(Pos3,Pos2,Res3),
	suma(Res2,Res3,Res).