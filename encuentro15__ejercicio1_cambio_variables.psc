Algoritmo intercambio_variable
	Definir numA,numB Como Entero
	
	
	Escribir "digite Dos numeros enteros"
	Leer numA, numB
	Escribir "La Variable A ", numA, " y la variable B es", numB
	
	Interchange(numA , numB)
	
	
	Escribir "La Variable A ahora es ", numA, " y la variable B ahora es ", numB
	
	
	
FinAlgoritmo


SubProceso Interchange(numA Por Referencia, numB Por Referencia)
	Definir temp Como Entero
	
	temp = numA
	numA = numB
	numB = temp

	
	
FinSubProceso

	