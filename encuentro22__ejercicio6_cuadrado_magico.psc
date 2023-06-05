Algoritmo cuadrado_magico
//	Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//	tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
	//	matriz que no debe superar orden igual a 10.
	Definir matriz, n, m, sum, i Como Entero
	Definir ismagic Como Logico
	Escribir "Digite la dimension de la matriz cuadrada Orden < 10"
	Hacer
		leer n
	Mientras Que NO n < 4 
	
	Dimension matriz(n,n)
	sum = 0
	
	llenarDatos(matriz,n)
	showMatrix(matriz,n)
	Para i <- 0 Hasta n-1
		sum = sum + matriz[0,i]
	FinPara
	
	ismagic = EsMagico(matriz, n, sum)
	
	Si ismagic Entonces
		Escribir "Es magica y la suma es ",sum
	SiNo
		Escribir "No es Magica"
	FinSi
FinAlgoritmo



SubProceso llenarDatos(matriz Por Referencia,n)
	Definir i, j, num Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta n-1 Hacer
			Escribir "Digite Numero Entero posicion [" , i ,"][", j, "]"
			Hacer
				Leer num
			Mientras Que NO (num > 0 y num < 10)
			
			matriz[i,j] = num
			
			
		FinPara
		
		
	FinPara
FinSubProceso

SubProceso showMatrix(matriz Por Referencia, n)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta n-1 Hacer
			
			Escribir Sin Saltar "[" ,matriz[i,j], "]"
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion magic <- EsMagico(matriz Por Referencia, n, sum Por Referencia)
	Definir magic, flag Como Logico
	Definir i, j , temp, temp1, diag1, diag2 Como Entero
	magic = Verdadero
	flag = Falso
	Hacer
		diag1 = 0
		diag2 = 0
		Para i <- 0 Hasta n-1 Hacer
			temp = 0
			temp1 = 0
			Para j <- 0 Hasta n-1 Hacer	
				temp = temp + matriz[i,j]
				temp1 = temp1 + matriz[j,i]
				Si i = j Entonces
					diag1 = diag1 + matriz[i,j]					
				FinSi
			FinPara
		FinPara
		
		Para i <- 0 Hasta n-1 Hacer
			diag2 = diag2 + matriz[(n-1-i),i]
		FinPara
		
		
		
		
		Si (sum <> temp O sum <> diag1 O sum <> diag2 O sum <> temp1) Entonces
			magic = Falso
			flag = Verdadero
		FinSi
		escribir magic
	Mientras Que magic Y Flag  
FinFuncion
	