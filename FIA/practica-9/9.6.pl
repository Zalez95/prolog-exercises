/* El predicado familia tiene como argumentos los miembros de una familia. 
El primero es el padre, el segundo la madre y el tercero es la lista de hijos.
Cada componente de la familia se expresa mediante la función persona(Nombre,Apellido1,Sueldo) */
familia(persona(juan,perez,5000),
	persona(maria,alonso,10000),
	[persona(carlos,perez,0),
	persona(andres,perez,0),
	persona(elena,perez,200)]).
familia(persona(pedro,lopez,25000),
	persona(carmen,ruiz,15000),
	[persona(carlos,lopez,1000),
	persona(teresa,lopez,0)]).

sueldo(persona(_,_,S),S).

totalHijos([], 0).
totalHijos([X|Y], Res):- sueldo(X, S1), totalHijos(Y, S2), Res is S1 + S2.

total([persona(N,A,_),Madre|Hijos], Total):- 
	familia(persona(N,A,S1),Madre|Hijos), 
	sueldo(Madre, S2),
	totalHijos(Hijos, S3),
	Total is S1 + S2 + S3. 