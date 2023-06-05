Algoritmo cinco_valores
//	Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//	muestre por pantalla.
	Definir array, i Como Entero
	Dimension array[5]
	
	Escribir "DIGITE 5 NUMEROS ENTEROS"
	Para i <- 0 Hasta 4 Hacer
		Hacer
			Leer array[i]
		Mientras Que NO array[i] > 0
	FinPara
	
	Escribir " El resultado es:"
	Para i<-0 Hasta 4 Hacer
		Escribir Sin Saltar " ",i," "
	FinPara
	Escribir ""
	Para i<-0 Hasta 4 Hacer
		
		Escribir Sin Saltar "[",array[i],"]"
	FinPara
FinAlgoritmo


