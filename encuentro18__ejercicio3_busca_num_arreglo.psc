Algoritmo busca_num_arreglo
//	Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//	usuario. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a buscar
//	tambi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n donde se
//	encuentra el valor. En caso que el n�mero se encuentre repetido dentro del arreglo se deben
//	imprimir todas las posiciones donde se encuentra ese valor.
//	Finalmente, en caso que el n�mero a buscar no est� adentro del arreglo se debe mostrar un
//mensaje.
	Definir n, num, temp, i Como Entero
	
	Escribir "Cuantos Numeros desea ingresar?"
	Hacer
		Leer n
	Mientras Que NO n > 0 
	
	Dimension num[n]
	LlenarDatos(num,n)
	
	Escribir "Que valor desea buscar?"
	Leer temp
	
	BuscarDato(num, temp,n)
	
FinAlgoritmo

SubProceso LlenarDatos(num Por Referencia,n Por Valor)
	Definir temp, i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Escribir "Digite el valor de posicion ",i," del arreglo"
		Leer temp
		num[i] = temp
	FinPara
FinSubProceso

SubProceso BuscarDato(num Por Referencia, dato Por Valor, n Por Valor)
	Definir i Como Entero
	Definir flag Como Logico
	flag = Falso
	Para i <-0 Hasta n-1 Hacer
		Si dato == num[i] Entonces
			Escribir "Se encuentra en la posicion ",i
			flag = Verdadero
			
		FinSi
	
	FinPara
	Si NO flag Entonces
		Escribir " El dato no esta dentro del arreglo"
	FinSi
	
FinSubProceso
	