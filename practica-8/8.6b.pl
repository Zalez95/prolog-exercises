eliminaZZZ([z,z,z|_],[]).
eliminaZZZ([X|Cola],[X|Res]):- eliminaZZZ(Cola,Res).