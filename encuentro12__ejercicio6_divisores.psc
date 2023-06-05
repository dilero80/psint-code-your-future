Funcion cantDiv <- SumDividers (num)
	Definir cantDiv, i Como Entero
	
	cantDiv = 0
	Para i <- 1 Hasta num Hacer
		Si num % i = 0
			cantDiv = cantDiv + i
		FinSi
	FinPara
FinFuncion

Algoritmo divisores
//	Realizar una función que calcule y retorne la suma de todos los divisores del número n
	//	distintos de n. El valor de n debe ser ingresado por el usuario.
	Definir n Como Entero
	
	Escribir "Digite un numero"
	Leer n
	
	Escribir "La suma de los divisores es ", SumDividers(n)
	
	
FinAlgoritmo
