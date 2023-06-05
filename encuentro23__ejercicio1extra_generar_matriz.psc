Algoritmo generar_matriz
//	Realizar un programa que rellene de números aleatorios una matriz a través de un
//	subprograma y generar otro subprograma que muestre por pantalla la matriz final.
	Definir matriz, n, m, buscar Como Entero
	Definir finded Como Logico
	n = 5
	m = 5
	Dimension matriz(n,m)
	
	llenarDatos(matriz,n,m)
	showMatrix(matriz,n,m)
	
	
	
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
			si matriz[i,j] < 10
				Escribir Sin Saltar "[ " ,matriz[i,j], " ]"
			FinSi
			si matriz[i,j] > 9
				Escribir Sin Saltar "[ " ,matriz[i,j], "]"
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso
 
