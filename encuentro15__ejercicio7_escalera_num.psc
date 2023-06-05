Algoritmo escalera_num
//	Crear un programa que dibuje una escalera de números, donde cada línea de números
//	comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario
//al comenzar. Ejemplo: si se ingresa el número 3:
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
	