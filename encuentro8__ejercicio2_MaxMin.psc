Algoritmo MaxMin
//	Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
//	programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
//	todos ellos.
	
	Definir max, min, num, cont, suma Como Entero
	
	Escribir "Digite un numero"
	Leer num
	max = num
	min = num
	cont = 0
	suma = 0
	Hacer
		cont = cont +1 
		suma = suma + num
		Si num > max Entonces
			max = num
		FinSi
		Si num < min Entonces
			min = num
		FinSi
		Escribir "Digite un numero"
		Leer num
		
	Mientras Que num <>0
	Escribir "Maximo ", max
	Escribir "Minimo: ", min
	Escribir "Cantidad ingresada: ",cont, " Suma ", suma, " Promedio ", suma / cont
	
FinAlgoritmo
