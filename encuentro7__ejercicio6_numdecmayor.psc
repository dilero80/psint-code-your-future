Algoritmo numDec

//	Escriba un programa que solicite al usuario n�meros decimales mientras que el usuario
//escriba n�meros mayores al primero que se ingres�. Por ejemplo: si el usuario ingresa
//		como primer n�mero un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
//		n�mero. El programa continuar� solicitando valores sucesivamente mientras los valores
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
