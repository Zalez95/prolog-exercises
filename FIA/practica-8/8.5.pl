insertar(Elemento,[],[Elemento]).
insertar(Elemento,[X|Cola],[Elemento,X|Cola]).
insertar(Elemento,[X|Cola],[X|Res2]):-insertar(Elemento,Cola,Res2).