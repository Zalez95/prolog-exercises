maxDia(enero,31).
maxDia(febrero,28).
maxDia(marzo,31).
maxDia(abril,30).
maxDia(mayo,31).
maxDia(junio,30).
maxDia(julio,31).
maxDia(agosto,31).
maxDia(septiembre,30).
maxDia(octubre,31).
maxDia(noviembre,30).
maxDia(diciembre,31).
minDia(_,1).
minMes(_,1).
maxMes(_,12).

horoscopo(aries,20,03,19,04).
horoscopo(tauro,20,04,20,05).
horoscopo(geminis,21,05,20,06).
horoscopo(cáncer,21,06,22,07).
horoscopo(leo,23,07,22,08).
horoscopo(virgo,23,08,22,09).
horoscopo(libra,23,09,22,10).
horoscopo(escorpio,23,10,21,11).
horoscopo(sagitario,22,11,21,12).
horoscopo(capricornio,22,12,19,01).
horoscopo(acuario,20,01,17,02).
horoscopo(piscis,18,02,19,03).

mayor_igual(X,Y):- X > Y; X =:= Y.
menor_igual(X,Y):- X < Y; X =:= Y.

signo(Dia,Mes,Res):-
	minDia(Mes,X),
	maxDia(Mes,Y),
	mayor_igual(Dia,X),
	menor_igual(Dia,Y),
	mayor_igual(Mes,horoscopo(_,_,U,_,_)),
	mayor_igual(Mes,horoscopo(_,V,U,_,_)),
	menor_igual(Mes,horoscopo(_,V,U,_,W)),
	menor_igual(Mes,horoscopo(_,V,U,Z,W)),
	horoscopo(Res,V,U,Z,W).