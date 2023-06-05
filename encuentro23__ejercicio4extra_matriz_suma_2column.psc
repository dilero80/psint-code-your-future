Algoritmo matriz_suma_2column
//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//	Inicialice las matrices para evitar el ingreso de datos por teclado.
	Definir matriz, n, m como Entero
	Escribir "Ingrese la cantidad de filas"
	Leer n
	
	m = 3
	Dimension matriz(n,m)
	
	llenarDatos(matriz, n, m)
	showMatrix(matriz, n, m)
FinAlgoritmo


SubProceso llenarDatos(matriz Por Referencia,n,m)
	Definir i, j, num Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Si j = m-1 Entonces				
				matriz[i,j] = matriz[i,j-2] + matriz[i,j-1]
			SiNo
				Escribir "Digite el valor [",i ,"][", j,"]"
				Leer num
				matriz[i,j] = num
			FinSi
			
		FinPara		
	FinPara
FinSubProceso

SubProceso showMatrix(matriz Por Referencia, n,m)
	Definir i, j Como Entero
	Escribir "El Resultado es: "
	
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta m-1 Hacer
			Si j = m-1 Entonces
				Escribir Sin Saltar  " = ",matriz[i,j]
			SiNo
				Si j == 0
					Escribir Sin Saltar  matriz[i,j]	
				SiNo
					Escribir Sin Saltar  " + ",matriz[i,j]
				FinSi
				
			FinSi
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso