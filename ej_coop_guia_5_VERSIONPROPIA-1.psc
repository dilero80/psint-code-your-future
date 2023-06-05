Algoritmo r_en_columna
	Definir matriz, matriz_alineada, palabras, palabra Como Caracter
	Definir i, n, m como Entero
	n = 9
	m = 11
	Dimension matriz(n,m)
	Dimension matriz_alineada(n,m)
	Dimension palabras(n)
	
	palabras[0] = "VECTOR"
	palabras[1] = "MATRIX"
	palabras[2] = "PROGRAMA"
	palabras[3] = "SUBPROGRAMA"
	palabras[4] = "SUBPROCESO"
	palabras[5] = "VARIABLE"
	palabras[6] = "ENTERO"
	palabras[7] = "PARA"
	palabras[8] = "MIENTRAS"
	
	
	inicializarMatriz(matriz, n,m)
	
	Para i <- 0 Hasta n-1 Hacer
		palabra = palabras[i]
		llenarDatos(matriz,i,m,palabra)
	FinPara
	
	
	imprimirMatriz(matriz,n,m)
	
	
	
	
	
	
FinAlgoritmo

SubProceso  inicializarMatriz(matriz Por Referencia,n,m)
	Definir i, j, num Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			matriz[i,j] = "*"
		FinPara		
	FinPara
FinSubProceso
	
	
SubProceso llenarDatos(matriz Por Referencia,n,m, palabra)
	Definir i, j, num Como Entero
	Para i <- 0 Hasta m-1 Hacer
		Para j <- 0 Hasta Longitud(palabra)-1 Hacer
			matriz[n,i] = Subcadena(palabra,j,j)
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz Por Referencia, n,m)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			
			Escribir Sin Saltar "[ " ,matriz[i,j], "]"
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso