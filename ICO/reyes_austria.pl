reina(felipe_i, 1482, 1506).

reina(carlos_i, 1506, 1558).

reina(felipe_ii, 1558, 1598).

reina(felipe_iii, 1598, 1621).

reina(felipe_i, 1621, 1665).

reina(carlos_ii, 1665, 1700).



rey_casa_austria(X, Y):-

	reina(X, Fecha_I, Fecha_F),

	Y >= FechaI,

	Y <= FechaF.