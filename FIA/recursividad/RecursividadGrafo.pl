conectado(a,b).
conectado(b,c).
conectado(c,d).
conectado(a,e).
conectado(e,f).
conectado(f,g).
camino(X,Y):-conectado(X,Y).
camino(X,Y):-conectado(X,Y1),camino(Y1,Y).