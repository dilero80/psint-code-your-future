Algoritmo numDec

//	Escriba un programa que solicite al usuario números decimales mientras que el usuario
//escriba números mayores al primero que se ingresó. Por ejemplo: si el usuario ingresa
//		como primer número un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
//		número. El programa continuará solicitando valores sucesivamente mientras los valores
	//			ingresados sean mayores que 3.1, caso contrario, el programa finaliza.
	
	Definir num, num1 Como Real
	num1 = 9999999999
	Escribir "Ingrese un numero decimal"
	Leer num
	Mientras num < num1 Hacer
		Escribir "Ingrese un numero decimal"
		Leer num1
	FinMientras
	
FinAlgoritmo
