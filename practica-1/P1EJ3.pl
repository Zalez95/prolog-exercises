rubio(marcos).
moreno(juan).
padre(pedro,juan).
padre(marcos,pedro).
padre(juan,ramon).
padre(X,Y):-hijo(Y,X).
abuelo(R,P):-padre(R,X),padre(X,P).
hijo(marcos,jorge).