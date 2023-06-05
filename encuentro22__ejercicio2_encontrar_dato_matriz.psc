Algoritmo encontrar_dato_matriz
//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//	coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//	caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
	Definir matriz, n, m, buscar Como Entero
	Definir finded Como Logico
	n = 5
	m = 5
	Dimension matriz(n,m)
	
	llenarDatos(matriz,n,m)
	showMatrix(matriz,n,m)
	
	Escribir "Digite el dato a buscar"
	Leer buscar
	
	finded = findDato(matriz,n,m,buscar)
	
	Si NO finded
		Escribir "No se encuentra ese dato en la matriz"
		
	FinSi
	
	
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

funcion flag <- findDato(matriz Por Referencia,n,m,buscar)
	Definir flag Como Logico
	Definir i,j Como Entero
	flag = Falso
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Si matriz[i,j] = buscar Entonces
				Escribir "La posicion del dato es [",i,"][",j,"]"
				flag = Verdadero
			FinSi
		FinPara		
	FinPara
	
	
FinSubProceso
