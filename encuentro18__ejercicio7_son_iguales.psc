Algoritmo son_iguales
//	Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
//		hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//				función debe devolver el resultado de está validación, para mostrar el mensaje en el
//				algoritmo. Nota: recordar el uso de las variables de tipo lógico.
	Definir arrayA, arrayB, n Como Entero
	
	Escribir "Que tamaño desea "
	Leer n
	Dimension arrayA[n]
	Dimension arrayB[n]
	relleno(arrayA, arrayB,n)
	
	si SonIguales(arrayA, arrayB, n) Entonces
		Escribir "son iguales"
	SiNo
		Escribir "No son iguales"
		
	FinSi
	
FinAlgoritmo

SubProceso relleno(arrayA Por Referencia, arrayB Por Referencia,n)
	Definir i Como Entero
	
	Para i<- 0 Hasta n-1 Hacer
		arrayA[i] = Aleatorio(-100,100)
		arrayB[i] = Aleatorio(-100,100)
		
	FinPara
FinSubProceso

funcion iguales <- SonIguales(arrayA, arrayB, n)
	Definir iguales, flag Como Logico
	Definir i Como Entero
	flag = Verdadero
	imprima_arreglo(arrayA,n,"A")
	imprima_arreglo(arrayB,n,"B")
	Mientras flag
		Para i <- 0 Hasta n-1 Hacer
			Si arrayA[i] == arrayB[i] Entonces
				flag = Verdadero
			SiNo
				flag = Falso
			
			FinSi
		
		FinPara
	FinMientras
	iguales = flag
	

FinFuncion

SubProceso imprima_arreglo(array Por Referencia,n por valor,arrayNumber por valor)
	Definir i Como Entero
	Escribir Sin Saltar "Arreglo "+arrayNumber," "
	Para i <- 0 hasta n-1 Hacer
		Si array[i] < 0 O array[i] > 99 Entonces
			Escribir Sin Saltar "[",array[i],"]"
		SiNo
			Escribir Sin Saltar "[",array[i]," ]"
		FinSi
		
	FinPara
	Escribir ""
	Escribir Sin Saltar "Posicion  "
	Para i <- 0 hasta n-1 Hacer
		Si i < 10 Entonces
			Escribir Sin Saltar "[ ",i," ]"	
		SiNo
			Escribir Sin Saltar "[",i," ]"	
		FinSi
	FinPara
	Escribir ""
FinSubProceso
	