derecha_de(llave,tortuga).
derecha_de(semaforo,llave).
derecha_de(martillo,semaforo).
derecha_de(balanza,cafe).

encima_de(coche,tortuga).
encima_de(bombilla,coche).
encima_de(cafe,semaforo).
encima_de(lupa,cafe).
encima_de(balanza,martillo).

izquierda_de(X,Y):-derecha_de(Y,X).
debajo_de(X,Y):-encima_de(Y,X).

derecha(X,Y):-derecha_de(X,Y).
derecha(X,Y):-derecha_de(X,Z),derecha(Z,Y).


encima(X,Y):-encima_de(X,Y).
encima(X,Y):-encima_de(X,Z),encima(Z,Y).