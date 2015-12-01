libro_de_familia(
	esposo(nombre(antonio,garcia,fernandez), profesion(arquitecto), salario(30000)),
	esposa(nombre(ana,ruiz,lopez), profesion(docente), salario(12000)),
	domicilio(sevilla)).
libro_de_familia(
	esposo(nombre(luis,alvarez,garcia), profesion(arquitecto), salario(40000)),
	esposa(nombre(ana,romero,soler), profesion(sus_labores), salario(0)),
	domicilio(sevilla)).
libro_de_familia(
	esposo(nombre(bernardo,bueno,martinez), profesion(docente), salario(12000)),
	esposa(nombre(laura,rodriguez,millan), profesion(medico), salario(25000)),
	domicilio(cuenca)).
libro_de_familia(
	esposo(nombre(miguel,gonzalez,ruiz), profesion(empresario), salario(40000)),
	esposa(nombre(belen,salguero,cuevas), profesion(sus_labores), salario(0)),
	domicilio(dos_hermanas)).

ingresos(ApelM1,ApelM2,Ingresos):-
	libro_de_familia(
		esposo(nombre(_,ApelM1,ApelM2),_,salario(S1)),
		esposa(_,_,salario(S2)),
		_),
	Ingresos is S1 + S2.

prof(Profesion,Nombre,Apel1,Apel2):-
	libro_de_familia(
		esposo(nombre(Nombre,Apel1,Apel2), profesion(Profesion), _),
		_,
		_).
prof(Profesion,Nombre,Apel1,Apel2):-
	libro_de_familia(
		_,
		esposa(nombre(Nombre,Apel1,Apel2), profesion(Profesion), _),
		_).

mas_de(Cantidad,ApelM1,ApelM2):-
	ingresos(ApelM1,ApelM2,Ingresos),
	Ingresos > Cantidad.

menos_de(Cantidad,ApelM1,ApelM2):-
	ingresos(ApelM1,ApelM2,Ingresos),
	Ingresos < Cantidad.