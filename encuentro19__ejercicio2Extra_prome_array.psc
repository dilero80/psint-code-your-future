Algoritmo prome_array
//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados
	Definir i, n, array, num Como Entero
	Definir prom Como Real
	
	Escribir "Que tamaño es el vector"
	Hacer
		Leer n
	Mientras Que NO n > 0
	
	Dimension array[n]
	
	Para i <- 0 Hasta n-1 Hacer
		Escribir "Digite la posicion ",i," del Vector"
			Leer array[i]
	FinPara
	imprima_arreglo(array,n,"A")
	prom = Promedio(array,n)
	Escribir "El promedio de sus valores es ",prom
FinAlgoritmo


Funcion prome <- Promedio(array,n)
	Definir prome Como Real
	Definir i Como Entero
	prome = 0
	Para i <- 0 Hasta n-1 Hacer
		prome = prome + array[i]
	FinPara
	prome = prome / n 
FinFuncion

SubProceso imprima_arreglo(array Por Referencia,n por valor,arrayNumber por valor)
	Definir i Como Entero
	Escribir Sin Saltar "Arreglo "+arrayNumber," "
	Para i <- 0 hasta n-1 Hacer
		Si array[i] < 0 O array[i] > 99 Entonces
			Escribir Sin Saltar "[",array[i],"]"
		SiNo
			Si array[i] > 0 Y array[i] < 10 Entonces
				Escribir Sin Saltar "[ ",array[i]," ]"
			SiNo
				Escribir Sin Saltar "[",array[i]," ]"
			FinSi	
		FinSi
		
	FinPara
	Escribir ""
	Escribir Sin Saltar "Posicion  "
	Para i <- 0 hasta n-1 Hacer
		Si i < 10 Entonces
			Escribir Sin Saltar "[ ",i," ]"	
		SiNo
			Escribir Sin Saltar "[",i," ]"	
		FinSi
	FinPara
	Escribir ""
FinSubProceso

