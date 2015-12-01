encima_de(coche,bombilla).
encima_de(tortuga,coche).
encima_de(cafe,lupa).
encima_de(semaforo,cafe).
encima_de(martillo,balanza).
derecha_de(tortuga,llave).
derecha_de(llave,semaforo).
derecha_de(semaforo,martillo).
derecha_de(cafe,balanza).

izquierda_de(Y,X):-derecha_de(X,Y).
debajo_de(Y,X):-encima_de(X,Y).

derecha(X,Y):-derecha_de(X,Y).
derecha(X,Y):-derecha_de(X,Y1),derecha(Y1,Y).

izquierda(X,Y):-izquierda_de(X,Y).
izquierda(X,Y):-izquierda_de(X,Y1),izquierda(Y1,Y).

encima(X,Y):-encima_de(X,Y).
encima(X,Y):-encima_de(X,Y1),encima(Y1,Y).

debajo(X,Y):-debajo_de(X,Y).
debajo(X,Y):-debajo_de(X,Y1),debajo(Y1,Y).