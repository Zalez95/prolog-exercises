extraerUltimo([X,_Y],[X]).
extraerUltimo([X|Cola],[X|Res]):-extraerUltimo(Cola,Res).