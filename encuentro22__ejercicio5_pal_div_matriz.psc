Algoritmo pal_div_matriz
//	Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//	encontrando la manera de que la frase se muestre de manera continua en la matriz.
	Definir n, m Como Entero
	Definir matriz, palabra Como Caracter
	n = 3
	m = 3
	Dimension matriz(n,m)
	Escribir "Digite una palabra de 9 letras"
	Hacer
		leer palabra
	Mientras Que Longitud(palabra) <> 9
	
	llenarDatos(matriz,n,m, palabra)
	showMatrix(matriz,n,m)
	
FinAlgoritmo


SubProceso llenarDatos(matriz Por Referencia,n,m, palabra)
	Definir i, j, cont Como Entero
	cont = 0
	Para i <- 0 Hasta n-1 Hacer
		
		Para j <- 0 Hasta m-1 Hacer
			matriz[i,j] = Subcadena(palabra,cont,cont)
			cont = cont + 1
			
		FinPara		
	FinPara
FinSubProceso

SubProceso showMatrix(matriz Por Referencia, n,m)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			
				Escribir Sin Saltar "[" ,matriz[i,j], "]"
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso