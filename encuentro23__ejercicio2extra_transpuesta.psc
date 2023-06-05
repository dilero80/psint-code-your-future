Algoritmo matrix_transpuesta
//	Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
	//	con números aleatorios entre 1 y 100 y mostrar su traspuesta.
	Definir matriz, matrizT, n, m Como Entero
	
	Escribir "Ingresa la dimension de la matriz"
	Leer n, m
	Dimension matriz(n,m)
	Dimension matrizT(m,n)
	
	llenarDatos(matriz, n, m)
	showMatrix(matriz, n, m)
	transpuesta(matriz, matrizT,  n, m)
	Escribir "La matriz transpuesta es"
	showMatrix(matrizT, m, n)
FinAlgoritmo


SubProceso llenarDatos(matriz Por Referencia,n,m)
	Definir i, j, num Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			matriz[i,j] = Aleatorio(0,100)
		FinPara		
	FinPara
FinSubProceso

SubProceso showMatrix(matriz Por Referencia, n,m)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Si matriz[i,j] < 10
				Escribir Sin Saltar "[  " ,matriz[i,j], "  ]"
			FinSi
			Si matriz[i,j] > 9 Y matriz[i,j] < 100
				Escribir Sin Saltar "[ " ,matriz[i,j], "  ]"
			FinSi
			Si matriz[i,j] > 99
				Escribir Sin Saltar "[" ,matriz[i,j], "  ]"
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso transpuesta(matriz Por Referencia, matrizT, n, m)
	Definir i, j Como Entero
	
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			matrizT[j,i] = matriz[i,j]
		FinPara		
	FinPara
	
	
	
	
FinSubProceso
	