primeros([],[]).
primeros([Primer|Lista], Res):- append(Lista, [Primer], Res).