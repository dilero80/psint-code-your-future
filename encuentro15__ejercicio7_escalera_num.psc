Algoritmo escalera_num
//	Crear un programa que dibuje una escalera de n�meros, donde cada l�nea de n�meros
//	comience en uno y termine en el n�mero de la l�nea. Solicitar la altura de la escalera al usuario
//al comenzar. Ejemplo: si se ingresa el n�mero 3:
//			1
//12
	//123
	
	Definir altura Como Entero
	
	
	Escribir "Digite la altura"
	Leer altura
	
	
	Escalera(altura)
FinAlgoritmo

SubProceso Escalera (altura)
	Definir i, h Como Entero	
	Para h <- 1 Hasta altura Hacer
		Para i <- 1 hasta h
			escribir Sin Saltar i
		FinPara
		escribir ""
	FinPara
	
	
FinSubProceso
	