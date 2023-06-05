Algoritmo matriz3x3
//	Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//	los muestre por pantalla.
	Definir matriz , i, j, n, m Como Entero
	n = 3
	m = 3
	Dimension matriz(n,m)
	
	llenarDatos(matriz,n,m)
	showMatrix(matriz,n,m)
	
	
FinAlgoritmo

SubProceso llenarDatos(matriz Por Referencia,n,m)
	Definir i, j, num Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Escribir "Digite Numero Entero posicion [" , i ,"][", j, "]"
			Hacer
				Leer num
			Mientras Que NO num > 0
			
			matriz[i,j] = num
			
			
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
	