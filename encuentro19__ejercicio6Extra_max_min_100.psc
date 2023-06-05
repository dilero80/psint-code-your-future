Algoritmo max_min_100
//	Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
//	su valor más grande.
	Definir array, i, max, min, n Como Entero
	n = 100
	Dimension array[n]
	
	Para i <- 0 Hasta n-1 Hacer
		array[i] = Aleatorio(0,99)
	FinPara
	max = array[0]
	min = array[0]
	Para i <- 0 Hasta n-1 Hacer
		Si array[i] < min
			min = array[i]
		FinSi
		Si array[i] > max
			max = array[i]
		FinSi
	FinPara
	
	Escribir "El Mayor es ", max
	Escribir "El Menos es ", min
	Escribir "La diferencia es ", max - min
FinAlgoritmo
