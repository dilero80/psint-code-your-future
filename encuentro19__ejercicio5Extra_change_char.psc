Algoritmo cambio_caracter_vector
//	Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la función Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
//	posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
	Definir frase, fraseVector, char Como Caracter
	Definir pos, i Como Entero
	Definir flag Como Logico
	Escribir "Digite una frase"
	Hacer
		Leer  frase
	Mientras Que Longitud(frase)>20
	
	
	Dimension fraseVector[20]
	Para i <- 0 hasta Longitud(frase)-1 Hacer
		fraseVector[i] = Subcadena(frase,i,i)
	FinPara
	Para i <- Longitud(frase) hasta 19 Hacer
		fraseVector[i] = " "
	FinPara
	MostrarFrase(frase, fraseVector)
	
	Hacer
	
		Escribir "Que caracter desea incluir"
		Leer char
		Escribir "En que posicion? "
		Leer pos
		
		Si modificar(char,pos, fraseVector) Entonces
			Escribir "Cambio correcto"
			MostrarFrase(frase, fraseVector)
			flag = Falso
		SiNo
			Escribir "intente de nuevo"
			MostrarFrase(frase, fraseVector)
			flag = Verdadero
		FinSi
	Mientras que flag
FinAlgoritmo

SubProceso MostrarFrase(frase, fraseVector Por Referencia)
	Definir i Como Entero
	Para i <- 0 hasta 19 Hacer
		Escribir Sin Saltar "[ ",fraseVector[i]," ]"
	FinPara
	Escribir ""
	Para i <- 0 hasta 19 Hacer
		Si i < 10 Entonces
			Escribir Sin Saltar "[ ",i," ]"	
		SiNo
			Escribir Sin Saltar "[",i," ]"	
		FinSi
	FinPara
	Escribir ""
FinSubProceso

Funcion cambio <- modificar(char, pos, fraseVector Por Referencia)
	Definir cambio Como Logico
	Definir i, posVacioDer, posVacioIzq Como Entero
	posVacioDer = 0
	posVacioIzq = 0
	i = 0
	Si fraseVector[pos] = " " Entonces
		fraseVector[pos] = char
		cambio = Verdadero
	SiNo
		i = pos + i
		Hacer		
			posVacioDer = posVacioDer + 1
			i = i + 1
		Mientras Que NO (fraseVector[i] = " " O i == 19)
		i = pos
		Hacer		
			posVacioIzq = posVacioIzq + 1
			i = i - 1
		Mientras Que NO (fraseVector[i] = " " O i == 0)
		
			
		
		Si posVacioDer > posVacioIzq	
			
			Para i <- 0 Hasta pos - 1 Hacer
				fraseVector[i] = fraseVector[i+1]
			FinPara
			fraseVector[pos] = char
		SiNo
			Para i <- 19 Hasta pos + 1 Con Paso -1 Hacer
				fraseVector[i] = fraseVector[i-1]
			FinPara
			fraseVector[pos] = char
		FinSi
		
		
		cambio = Verdadero
	FinSi
	
FinSubProceso