eliminar(Elemento, [X|_], []):- X is Elemento.
eliminar(Elemento, [X|Cola], [X|Res]):- eliminar(Elemento, Cola, Res).