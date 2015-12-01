progenitor(abuelo1, padre1).
progenitor(abuelo1, padre2).
progenitor(abuelo1, madre2).
progenitor(abuela1, padre1).
progenitor(abuela1, padre2).
progenitor(abuela1, madre2).

progenitor(abuelo2, madre1).
progenitor(abuelo2, padre4).
progenitor(abuela2, madre1).
progenitor(abuela2, padre4).

progenitor(abuelo3, padre3).
progenitor(abuela3, padre3).

progenitor(padre1, hijo1).
progenitor(padre1, hija1).
progenitor(madre1, hijo1).
progenitor(madre1, hija1).

progenitor(padre3, hijo3).
progenitor(padre3, hija4).
progenitor(madre2, hijo3).
progenitor(madre2, hija4).

hijo(X, Y):- progenitor(Y, X).

abuelo(X, Y):-progenitor(X, Z), progenitor(Z, Y).

hermano(X, Y):-hijo(X, Z), progenitor(Z, Y), Y\=X.