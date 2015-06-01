feliz(X):-apruebe(X,ia),loteria(X).
apruebe(Y,_):-estudia(Y);afortunado(Y).
estudia(pedro).
afortunado(juan).
not(estudia(juan)).
loteria(Z):-afortunado(Z).