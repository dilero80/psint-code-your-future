Algoritmo dos_vec_alea
	//	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
	//	muestre por pantalla.
	
	Definir arrayA, arrayB Como Entero
	
	
	Dimension arrayA[5]
	Dimension arrayB[5]
	relleno(arrayA, arrayB,5)
	
	imprima_arreglo(arrayA,5,"A")
	imprima_arreglo(arrayB,5,"B")
	
FinAlgoritmo

SubProceso relleno(arrayA Por Referencia, arrayB Por Referencia,n)
	Definir i Como Entero
	Definir arrayNumber Como Caracter
	Para i<- 0 Hasta n-1 Hacer
		arrayA[i] = Aleatorio(-100,100)
		arrayB[i] = Aleatorio(-100,100)
		
	FinPara
FinSubProceso

	
	

SubProceso imprima_arreglo(array Por Referencia,n por valor,arrayNumber por valor)
	Definir i Como Entero
	Escribir Sin Saltar "Arreglo "+arrayNumber," "
	Para i <- 0 hasta n-1 Hacer
		Si array[i] < 0 O array[i] > 99 Entonces
			Escribir Sin Saltar "[",array[i],"]"
		SiNo
			Si array[i] > 0 Y array[i] < 10 Entonces
				Escribir Sin Saltar "[ ",array[i]," ]"
			SiNo
			Escribir Sin Saltar "[",array[i]," ]"
			FinSi	
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
	

