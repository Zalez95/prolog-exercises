gusta(juan,X):-comida(X).
comida(manzanas).
comida(pollo).
comida(R):-come(S,R),nomata(R).
come(guillermo,cacahuetes).
nomata(cacahuetes).
come(susana,T).:-come(guillermo,T).