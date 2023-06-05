Algoritmo fecha_anterior
//	Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//	Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//	representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//	asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
//	los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.
	Definir dia, mes, anio Como Entero
	
	Escribir "Digite Año "
	Leer anio
	
	Escribir "Digite mes"
	leer mes
	
	Escribir "Digite dia"
	Leer dia
	
	
	FechaAnterior(dia,mes,anio)
	
	
	
	
	
	
FinAlgoritmo

SubProceso FechaAnterior(dia,mes,anio)
	Definir diaAnt, mesAnt, anioAnt Como Entero
	
	Si (dia == 1 Y mes == 03) Entonces
		dia = 29
		mes = mes - 1 
	SiNo
		Si (dia == 1 Y (mes == 2 O mes == 5 O mes == 7 O mes == 10 O mes ==12)) Entonces
			dia = 31
			mes = mes -1
		FinSi
	FinSi
	
	Si (dia == 1 y mes == 1) Entonces
		anio = anio - 1
		mes = 12
		dia = 31
	FinSi
	
	Si dia = 1
		mes = mes - 1
	FinSi
	
	
	diaAnt = dia - 1
	mesAnt = mes
	anioAnt = anio
	
	Escribir " La fecha anterior seria dia ", diaAnt, " mes ", mesAnt, " del año ", anioAnt	

	
FinSubProceso
