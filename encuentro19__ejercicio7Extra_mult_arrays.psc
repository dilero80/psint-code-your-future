Algoritmo sin_titulo
//	Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//		imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
	//			igual a (V[1]*V[2]*V[3]*V[4])
	
	Definir array, n, i, mulVector Como Entero
	
	Escribir "Digite la dimension del arreglo"
	Hacer
		Leer n
	Mientras Que NO n > 0 
	
	Dimension array[n]
	
	Para i <- 0 Hasta n-1 Hacer
		array[i] = Aleatorio(1,99)
	FinPara
	
	imprima_arreglo(array,n,"A")
	mulVector = multiply(array,n)
	
	Escribir "El valor de la multiplicacion es ", mulVector
	
	
	
FinAlgoritmo


funcion product <- multiply(array,n)
	Definir product, i Como Entero
	product = 1 
	Para i <- 0 Hasta n-1 Hacer
		product = array[i] * product
		
	FinPara	
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


	