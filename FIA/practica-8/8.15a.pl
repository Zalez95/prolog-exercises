reverse([],[]).
reverse([X|Lista], Res):- reverse(Lista, SubListaAlReves), append(SubListaAlReves, [X], Res).