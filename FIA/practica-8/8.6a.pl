descomponer([],[],[]).
descomponer([X|Cola],Res1,[X|Res2]):-descomponer(Cola,Res1,Res2).
descomponer([X|Cola],[X|Res1],Res2):-descomponer(Cola,Res1,Res2).