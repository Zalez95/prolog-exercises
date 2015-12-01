elimina3Ultimos([_X,_Y,_Z],[]).
elimina3Ultimos([X|Cola],[X|Res]):-elimina3Ultimos(Cola,Res).