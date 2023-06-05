Algoritmo max_vector
	Definir array, n Como Entero
	Escribir "Digite el tamaño del vector"
	Hacer
		Leer n
	Mientras Que NO n > 0 
	
	Dimension array[n]
	LlenarDatos(array,n)
	Escribir "El valor maximo es ", MaxData(array,n)
FinAlgoritmo


SubProceso LlenarDatos(array Por Referencia,n)
	Definir i Como Entero
	
	Para i <- 0 Hasta n-1 Hacer
		Escribir "Digite el dato ",i+1
		Leer array[i]
	FinPara
FinSubProceso

Funcion max <- MaxData(array Por Referencia,n)
	Definir i, max Como Entero
	max = 0
	Para i <- 0 Hasta n-1 Hacer
		Si array[i] > max Entonces
			max = array[i]
		FinSi
	FinPara
FinSubProceso
	