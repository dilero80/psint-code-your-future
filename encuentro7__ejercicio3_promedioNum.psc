Algoritmo promedioNum
//	Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
//ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de
//	los números ingresados. Suponemos que el usuario no insertará número negativos.
	Definir num, suma, cont Como Entero
	suma = 0
	cont = 0
	num = 0
	Mientras num <> -1
		Escribir "Ingrese un numero"
		Leer num
		suma = suma + num
		cont = cont +1
	FinMientras
	
	Escribir "La suma es " , suma + 1
	Escribir " La cantidad de numeros ingresados es " , cont-1
	Escribir "El promedio es ", (suma+1) / (cont-1)
	
FinAlgoritmo
