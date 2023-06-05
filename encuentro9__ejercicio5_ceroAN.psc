Algoritmo ceroAN
//	Escribir un programa que calcule la suma de los N primeros números naturales. El valor
	//	de N se leerá por teclado.
	Definir n, i, sum Como Entero
	sum = 0
	Escribir"Digite cantidad de numeros"
	Leer n
	
	Para i <- 0 Hasta n Hacer
		sum = sum + i
	FinPara
	
	Escribir "La suma de todos los numeros 0 a ",n," es igual a ",sum
FinAlgoritmo
