miembro(X,[X|Cola]).
miembro(X,[Cabeza|Cola]):-miembro(X,Cola).