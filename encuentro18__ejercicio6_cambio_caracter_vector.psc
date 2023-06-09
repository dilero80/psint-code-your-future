Algoritmo cambio_caracter_vector
//	Disponemos de un vector unidimensional de 20 elementos de tipo car�cter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la funci�n Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un car�cter cualquiera y una
//	posici�n dentro del arreglo, y el programa debe intentar ingresar el car�cter en la
//	posici�n indicada, si es que hay lugar (es decir la posici�n est� vac�a o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el car�cter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posici�n estaba ocupada.
	Definir frase, fraseVector, char Como Caracter
	Definir pos, i Como Entero
	Definir flag Como Logico
	Escribir "Digite una frase"
	Leer  frase
	
	Dimension fraseVector[Longitud(frase)]
	Para i <- 0 hasta Longitud(frase)-1 Hacer
		fraseVector[i] = Subcadena(frase,i,i)
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
	Para i <- 0 hasta Longitud(frase)-1 Hacer
		Escribir Sin Saltar "[ ",fraseVector[i]," ]"
	FinPara
	Escribir ""
	Para i <- 0 hasta Longitud(frase)-1 Hacer
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
	Si fraseVector[pos] = " " Entonces
		fraseVector[pos] = char
		cambio = Verdadero
	SiNo
		Escribir "Esa posicion esta ocupada"
		cambio = Falso
	FinSi
	
FinSubProceso