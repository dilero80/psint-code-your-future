Funcion total <- Salary(cantidadHoras, festivo, turnoLog)
	Definir total Como Real
	
	Si (festivo Y turnoLog) Entonces
		total = (cantidadHoras*125)*1.15
	SiNo
		Si (NO festivo Y turnoLog) Entonces
			total = (cantidadHoras*125)
		FinSi
	FinSi
	Si (NO turnoLog Y festivo) Entonces
		total = (cantidadHoras*90)*1.10
	SiNo
		Si(NO turnoLog Y NO festivo)
			total = (cantidadHoras * 90)
		FinSi
	FinSi
	
FinFuncion

Algoritmo jornal_diario
//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//	   un 15% si el turno es nocturno.
//			
//		El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
//			de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además,
//			
//			2
//			debemos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era
//				festivo o no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.
	
	Definir nombreTrabajador, diaSemana, festivoSi, turno Como Caracter
	Definir cantidadHoras Como Entero
	Definir festivo, turnoLog Como Logico
	Definir salario Como Real
	
	Escribir "Digite su nombre"
	Leer nombreTrabajador
	Escribir "escoja Dia de la semana"
	Escribir "A. Lunes"
	Escribir "B. Martes"
	Escribir "C. Miercoles"
	Escribir "D. Jueves"
	Escribir "E. Viernes"
	Escribir "F. Sabado / Domingo"
	Hacer
		Escribir "Digite la opcion A / B / C / D / E / F"
		Leer diaSemana
		diaSemana = Mayusculas(diaSemana)
	Mientras Que NO(diaSemana == "A" O diaSemana == "B" O diaSemana == "C" O diaSemana == "D" O diaSemana == "E" O diaSemana == "F")
	
	Escribir "Fue Festivo (S/N)"
	Hacer
		Leer festivoSi
		festivoSi = Mayusculas(festivoSi)
	Mientras Que no(festivoSi== "S" O festivoSi == "N" )
	
	Si festivoSi == "S" Entonces
		festivo = Verdadero
	FinSi
	Si festivoSi == "N" Entonces
		festivo = Falso
	FinSi
	
	Escribir "Tipo Turno"
	Escribir "A. Diurno"
	Escribir "B. Nocturno"
	Hacer
		Leer turno
		turno = Mayusculas(turno)
	Mientras Que NO(turno == "A" O turno == "B") 
	Si turno == "A" Entonces
		turnoLog = Falso
	FinSi
	Si turno == "B" Entonces
		turnoLog = Verdadero
	FinSi
	
	Escribir "Cantidad De horas trabajadas"
	Leer cantidadHoras
	salario = Salary(cantidadHoras, festivo, turnoLog)
	
	Escribir "El salario para este dia es $" , salario
FinAlgoritmo
