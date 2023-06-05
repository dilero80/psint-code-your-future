//// Ej. Cooperativo Guia 5
Algoritmo ej_coop_guia_5
    Definir matriz, palabras Como Caracter
	Definir pos_r, i Como Entero
    Dimension matriz[9,12], palabras[9]
	
    palabras[0] = "vector"
    palabras[1] = "matrix"
    palabras[2] = "programa"
    palabras[3] = "subprograma"
    palabras[4] = "subproceso"
    palabras[5] = "variable"
    palabras[6] = "entero"
    palabras[7] = "para"
    palabras[8] = "mientras"
	
	InicializarMatriz(matriz,9,12)
	
	agregarPalabra(matriz,9,12,palabras)
	imprimirMatriz(matriz,9,12)
	Escribir ""
	Para i <- 0 Hasta 8 Hacer
		pos_r = buscarR(matriz, i)
		acomodarPalabra(matriz, i, 11, pos_r, palabras[i])
	FinPara
	imprimirMatriz(matriz,9,12)
	

	
FinAlgoritmo

SubProceso InicializarMatriz(matriz, n, m)
    Definir i, j Como Entero
    Para i = 0 Hasta n-1 Hacer
        Para j = 0 Hasta m-1 Hacer
            matriz[i,j] = "*"
        FinPara
    FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz, n, m)
    Definir i, j Como Entero
    Para i = 0 Hasta n-1 Hacer
        Para j = 0 Hasta m-1 Hacer
            Escribir Sin Saltar matriz[i,j] " "
        FinPara
        Escribir ""
    FinPara
FinSubProceso

SubProceso agregarPalabra(matriz, n, m, palabras)
    Definir i, j Como Entero
    Para i=0 Hasta n-1 Hacer
		para j=0 Hasta Longitud(palabras[i])-1 Hacer
			matriz[i,j] = Subcadena(palabras[i],j,j)
		FinPara
	FinPara
FinSubProceso


Funcion columnaR <- buscarR(matriz, numFila)
	Definir columnaR, i Como Entero
	Definir rEncontrada Como Logico
	rEncontrada = Falso
	i=0
	
	Mientras No(rEncontrada)
		Si matriz[numFila, i] == 'r' O matriz[numFila, i] == 'R'
			rEncontrada = Verdadero
			matriz[numFila, i] = "a"
			columnaR = i
		FinSi
		
		i = i + 1
	FinMientras
	
FinFuncion

SubProceso acomodarPalabra(matriz Por Referencia, n,m, pos, palabra)
	Definir i, j, postemp Como Entero
	
	postemp = 5 - pos
	
	Si postemp <> 0 Entonces
		Para i <- 0 Hasta postemp-1 Hacer
			matriz[n,i] = "*"
		FinPara
	FinSi
	
	Para j <- 0 Hasta Longitud(palabra)-1 Hacer
		matriz[n,j+postemp] = Subcadena(palabra,j,j)
	FinPara
	
FinSubProceso
