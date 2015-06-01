miembro(Elemento,[X|_]):-Elemento = X.
miembro(Elemento,[X|Cola]):-miembro(Elemento,Cola).