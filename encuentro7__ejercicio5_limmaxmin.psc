Algoritmo maxMin
//	Escriba un programa que solicite dos números enteros (mínimo y máximo). A
//	continuación, se debe pedir al usuario que ingrese números enteros situados entre el
//	máximo y mínimo. Cada vez que un número se encuentre entre ese intervalo, se sumara
//	uno a una variable. El programa terminará cuando se escriba un número que no
//	pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
	//	números ingresados dentro del intervalo.
	Definir min, max, num,suma  Como Entero
	suma = 0
	Escribir "ingrese limite Superior"
	Leer max
	Escribir "Ingrese limite inferior" 
	leer min
	
	Escribir "Ingrese un numero"
	Leer num
	
	Mientras num >= min Y num <= max Hacer
		suma = suma + 1
		Escribir "Ingrese un numero"
		Leer num
	FinMientras
	
	Escribir "La cantidad de numeros ingresados son: ", suma
	
	
	
FinAlgoritmo
