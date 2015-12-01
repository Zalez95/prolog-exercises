es_un(mamifero,animal).
es_un(vaca,mamifero).
es_un(oveja,mamifero).
es_un(rosenda,vaca).
es_un(catalina,oveja).
es_un(ave,animal).
es_un(gorrion,ave).
es_un(gorriolin1,gorrion).
es_un(gorriolin2,gorrion).
es_un(canario,ave).
es_un(piolin,canario).

atributo(animal,puede,respirar).
atributo(ave,vuela,bien).
atributo(ave,tiene,plumas).
atributo(ave,pone,huevos).
atributo(gorrion,patas,cortas).
atributo(gorriolin1,color,marron).
atributo(canario,canta,bien).
atributo(piolin,color,amarillo).
atributo(mamifero,da,leche).
atributo(oveja,da,lana).
atributo(vaca,come,hierva).
atributo(rosenda,color,amarillo).

clase(X,Y):-
	es_un(X,Y).
clase(X,Y):-
	es_un(X,Z),
	clase(Z,Y).

atributos(X,Atributo,Valor):-
	atributo(X,Atributo,Valor).
atributos(X,Atributo,Valor):-
	es_un(X,Z),
	atributos(Z,_,_),
	atributo(X,Atributo,Valor).