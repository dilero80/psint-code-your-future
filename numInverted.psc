Algoritmo numInverted
	Definir num, num1 Como Entero
	
	Escribir "Introduzca un numero de 2 cifras"
	Leer num
	
	num1 = ((num % 10)*10) + trunc(num/10)
	
	Escribir "Invertido es: ",num1
	
	
	
FinAlgoritmo
