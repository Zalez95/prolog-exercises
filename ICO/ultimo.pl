ultimo([Elemento], Elemento).

ultimo([_|Cola], Elemento):-ultimo(Cola, Elemento).