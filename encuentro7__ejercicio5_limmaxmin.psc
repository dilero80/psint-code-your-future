Algoritmo maxMin
//	Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A
//	continuaci�n, se debe pedir al usuario que ingrese n�meros enteros situados entre el
//	m�ximo y m�nimo. Cada vez que un n�mero se encuentre entre ese intervalo, se sumara
//	uno a una variable. El programa terminar� cuando se escriba un n�mero que no
//	pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
	//	n�meros ingresados dentro del intervalo.
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
