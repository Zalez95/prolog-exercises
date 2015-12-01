ultimo([X], X).
ultimo([_|Lista], X):- ultimo(Lista, X).