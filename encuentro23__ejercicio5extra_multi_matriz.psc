Algoritmo multi_matriz
//	Realizar un programa que permita visualizar el resultado del producto de una matriz de
//	enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//	inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se
//	realiza la multiplicación entre matrices consultar el siguiente link:
	Definir matriz, vector , resultante, n, m como Entero
	n = 3
	m = 3
	Dimension matriz(n,m)
	Dimension resultante(n,m)
	Dimension vector(n,1)
	
	llenarDatos(matriz, n, m)
	llenarDatos(vector, n, 1)
	showMatrix(matriz, n , m, "A")
	Escribir ""
	showMatrix(vector, n , 1, "B")
	multiMatrix(matriz, vector, resultante, n, m)
	Escribir ""
	Escribir "Resultante"
	showMatrix(resultante, n , m, "C")
FinAlgoritmo

SubProceso llenarDatos(matriz Por Referencia,n,m)
	Definir i, j, num Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			matriz[i,j] = Aleatorio(0,100)
		FinPara		
	FinPara
FinSubProceso

SubProceso showMatrix(matriz Por Referencia, n,m, name)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Si i == 0 Entonces
			Escribir Sin Saltar name," = "
		SiNo
			Escribir Sin Saltar "    "
			
		FinSi
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

SubProceso multiMatrix(matriz Por Referencia, vector Por Referencia, resultante Por Referencia, n,m)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			resultante[i,j] = matriz[i,j]*vector[j,0]
		FinPara
	FinPara
	
	
	
FinSubProceso

