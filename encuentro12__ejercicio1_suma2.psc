Funcion sum <- Sumar (num1,num2)
	Definir sum Como Entero
	sum = num1 + num2
FinFuncion

Algoritmo suma2
//	Realizar una funci�n que calcule la suma de dos n�meros. En el algoritmo principal le
//		pediremos al usuario los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n
	//			calcular� la suma y lo devolver� para imprimirlo en el algoritmo.
	
	Definir num1, num2, resultado Como Entero
	Escribir "Digite dos numeros enteros"
	Leer num1,num2
	resultado = Sumar(num1, num2)
	Escribir "El total es: ", resultado
	
	
	
FinAlgoritmo


