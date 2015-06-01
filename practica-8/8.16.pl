maximo([M],M).
maximo([X,Y|Resto], Z):- X > Y, maximo([X|Resto], Z).
maximo([X,Y|Resto], Z):- X < Y, maximo([Y|Resto], Z).
maximo([X,Y|Resto], Z):- X = Y, maximo([X|Resto], Z).