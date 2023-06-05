Algoritmo arreglo_sum_res_mult
//	Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//	muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//	arreglo.
	Definir array, i Como Reales
	Dimension array[10]
	
	Escribir "DIGITE 10 NUMEROS ENTEROS"
	Para i <- 0 Hasta 9 Hacer
		Hacer
			Leer array[i]
		Mientras Que NO array[i] > 0
	FinPara
	
	Escribir " El resultado es:"
	Para i<-0 Hasta 9 Hacer
		Escribir Sin Saltar "  ",i,"  "
	FinPara
	Escribir ""
	Para i<-0 Hasta 9 Hacer
		
		Escribir Sin Saltar "[ ",array[i]," ]"
	FinPara
	Escribir ""
	Escribir "La suma de su valores es ", Suma(array)
	Escribir ""
	Escribir "La resta de su valores es ", Resta(array)
	Escribir ""
	Escribir "La Multiplicacion de su valores es ", Multi(array)
	
FinAlgoritmo

Funcion sumar <- Suma(array Por Referencia)
	Definir sumar Como Real
	Definir i Como Entero
	sumar = 0
	Para i<-0 Hasta 9 Hacer
		sumar = sumar + array[i]
	FinPara
FinFuncion

Funcion restar <- Resta(array Por Referencia)
	Definir restar Como Real
	Definir i Como Entero
	restar = 0
	Para i<-0 Hasta 9 Hacer
		restar = restar - array[i]
	FinPara
FinFuncion

Funcion mult <- Multi(array Por Referencia)
	Definir mult Como Real
	Definir i Como Entero
	mult = 1
	Para i<-0 Hasta 9 Hacer
		mult = mult * array[i]
	FinPara
FinFuncion



