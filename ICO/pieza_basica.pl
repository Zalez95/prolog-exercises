pieza_basica(llanta).

pieza_basica(radios).

pieza_basica(eje).

pieza_basica(manillar).

pieza_basica(sillin).

pieza_basica(eje).

pieza_basica(plato).

pieza_basica(pedales).

pieza_basica(cadena).

pieza_basica(pinones).



ensamblaje(bicicleta, [rueda_delantera, cuadro, rueda_trasera]).

ensamblaje(rueda_delantera, [llanta, radios, eje]).

ensamblaje(cuadro, [manillar, sillin, traccion]).

ensamblaje(traccion, [eje, plato, pedales, cadena]).

ensamblaje(rueda_trasera, [llanta, radios, eje, pinones]).



lista_piezas_base([], []).
lista_piezas_base([Cabeza|Cola], [Cabeza|Resto]):-

	pieza_basica(Cabeza),

	lista_piezas_base(Cola, Resto).

lista_piezas_base([Cabeza|Cola], Resto):-

	ensamblaje(Cabeza, Piezas_Cabeza),
	append(Piezas_Cabeza, Cola, NuevaLista)
,
	lista_piezas_base(NuevaLista, Resto).