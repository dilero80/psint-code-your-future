Algoritmo n_en_fibonacci
//	Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La
//sucesión de Fibonacci es la sucesión de los siguientes números:
//	1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//Donde cada uno de los números se calcula sumando los dos anteriores a él. Por ejemplo:
//	La sucesión del número 2 se calcula sumando (1+1)
//	Análogamente, la sucesión del número 3 es (1+2),
//	Y la del 5 es (2+3),
//	Y así sucesivamente...
//La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
//	Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
//		Fibonacci (n) = 1 para todo n <= 1
//			Por lo tanto, si queremos calcular el término "n" debemos escribir una función que reciba
//				como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.
//			Para conocer más acerca de la serie de Fibonacci consultar el siguiente link:
	//				https://quantdare.com/numeros-de-fibonacci/
	
	Definir nFibo, terminoN Como Entero
	
	Escribir "Digite el termino N que desea saber de la serie Fibonacci"
	Leer nFibo
	terminoN = Fibo(nFibo)
	Escribir "El termino ",nFibo," en la serie Fibonacci corresponde a ", terminoN
	//Escribir Fibo(nFibo)
FinAlgoritmo

Funcion terminoN <- Fibo(N)
	Definir terminoN, tempFibo,tempFibo1, i Como Entero
	tempFibo = 0
	terminoN = 1
	Escribir Sin Saltar terminoN, " "
	Para i <- 1 Hasta N-1 Hacer
		tempFibo1 = terminoN	
		terminoN = tempFibo + terminoN
		tempFibo =  tempFibo1
		
		
		Escribir Sin Saltar terminoN, " "
		
	FinPara
	Escribir ""
FinFuncion
