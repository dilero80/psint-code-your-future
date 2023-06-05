Algoritmo clasi_estudiantes
//	Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//	20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20
	Definir arrayNotas, i, EstuD, EstuR, EstuB, EstuE Como Entero
	Dimension arrayNotas[100]
	
	Para i <- 0 Hasta 99 Hacer
		arrayNotas[i] = Aleatorio(0,20)
	FinPara
	
	Escribir "La cantidad de estudiantes Deficientes es ", NumEstu(arrayNotas,0,5)
	Escribir "La cantidad de estudiantes Regulares es ", NumEstu(arrayNotas,6,10)
	Escribir "La cantidad de estudiantes Buenos es ", NumEstu(arrayNotas,11,15)
	Escribir "La cantidad de estudiantes Excelentes es ", NumEstu(arrayNotas,16,20)
	
	
	
	
	
FinAlgoritmo


Funcion cantidad <- NumEstu(array Por Referencia, min, max)
	Definir cantidad, i Como Entero
	cantidad = 0
	Para i <- 0 Hasta 99 Hacer
		Si array[i] >= min Y array[i] <= max Entonces
			cantidad = cantidad + 1
		FinSi
	FinPara
FinFuncion
	