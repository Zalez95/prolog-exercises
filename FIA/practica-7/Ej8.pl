debajo_de(director_general,responsable_de_calidad).
debajo_de(responsable_de_calidad,responsable_de_tesoreria).
debajo_de(responsable_de_calidad,responsable_de_ventas).
debajo_de(responsable_de_calidad,responsable_comercial).
debajo_de(responsable_de_tesoreria,asesor).
debajo_de(asesor,contable).
debajo_de(responsable_de_ventas,operario1).
debajo_de(responsable_de_ventas,operario2).
debajo_de(operario1,reparto1).
debajo_de(operario2,reparto2).
debajo_de(responsable_comercial,vendedor1).
debajo_de(responsable_comercial,vendedor2).

encima_de(X,Y):-debajo_de(Y,X).

jefe(X):-not(encima_de(X,_)).

aumenta(X,X1):-X1 is X+1.

debajo(X,Y,Cont):-debajo_de(X,Y),Cont is Cont +1.
debajo(X,Y,Cont):-debajo_de(X,Z),Cont is Cont + 1,debajo(Z,Y).

encima(X,Y,Cont):-encima_de(X,Y).
encima(X,Y,Cont,Cont2):-encima_de(X,Z),Cont2 is Cont + 1,encima(Z,Y,Cont2).

niveles(X,Y,Num,Num2):-encima(X,Y,Num,Num2).