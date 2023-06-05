Algoritmo matriz_diagonal0
//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//		principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//		subproceso para imprimir la matriz.
	Definir matriz, n, m Como Entero
	
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
			Si i = j Entonces
				matriz[i,j] = 0
			SiNo
				matriz[i,j] = Aleatorio(0,100)
			FinSi
			
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
