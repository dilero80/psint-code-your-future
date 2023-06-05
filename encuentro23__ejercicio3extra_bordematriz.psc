Algoritmo matriz_borde1
//	Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//	ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
	//	ceros.
	Definir matriz, n, m como Entero
	n = 5
	m = 15
	Dimension matriz(n,m)
	
	llenarDatos(matriz, n, m)
	showMatrix(matriz, n, m)
	
	
	
FinAlgoritmo

SubProceso llenarDatos(matriz Por Referencia,n,m)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Si i == 0 O i == n-1 O j == 0 O j == m-1 Entonces
				matriz[i,j] = 1
			SiNo
				matriz[i,j] = 0
			FinSi
			
		FinPara		
	FinPara
FinSubProceso

SubProceso showMatrix(matriz Por Referencia, n,m)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Escribir Sin Saltar matriz[i,j]
		FinPara
		Escribir ""
	FinPara
FinSubProceso