Funcion sum <- Sumar (num1,num2)
	Definir sum Como Entero
	sum = num1 + num2
FinFuncion

Algoritmo suma2
//	Realizar una función que calcule la suma de dos números. En el algoritmo principal le
//		pediremos al usuario los dos números para pasárselos a la función. Después la función
	//			calculará la suma y lo devolverá para imprimirlo en el algoritmo.
	
	Definir num1, num2, resultado Como Entero
	Escribir "Digite dos numeros enteros"
	Leer num1,num2
	resultado = Sumar(num1, num2)
	Escribir "El total es: ", resultado
	
	
	
FinAlgoritmo


