Algoritmo suma_matriz_nxm
//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//	un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//	subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//	los resultados por pantalla.
	Definir matriz, n, m, total Como Entero
	Escribir "Digite la dimension de la matriz  N X M"
	leer n, m
	Dimension matriz(n,m)
	
	llenarDatos(matriz, n, m)
	showMatrix(matriz, n, m)
	
	total = sumMatrix(matriz,n,m)
	
	Escribir "La suma de los elementos de la matriz es ",total
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

Funcion sumar <- sumMatrix(matriz Por Referencia, n,m)
	Definir i, j, sumar Como Entero
	sumar = 0
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			sumar = sumar + matriz[i,j]
		FinPara
		
	FinPara
FinSubProceso
