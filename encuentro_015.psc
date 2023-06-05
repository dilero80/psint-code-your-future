//// Encuentro 15

//// Ej. 2
//Algoritmo ej_2
//	Definir entry, i Como Entero
//	Escribir "Ingrese la cantidad de días a analizar su temp media."
//	Leer entry
//	Para i = 1 Hasta entry Hacer
//		mediaTemp(i)
//	FinPara
//	
//FinAlgoritmo
//
//SubProceso mediaTemp(dia)
//	Definir min, max Como Entero
//	Escribir "Ingrese la temp. min y max del dia ", dia, "."
//	Leer min, max
//	Escribir "La temperatura media del día ", dia, " es ", (min + max) / 2
//FinSubProceso

//// Ej.3
//Algoritmo ej_3
//	Definir n1, n2 Como Entero
//	Escribir "Ingrese los numeros a dividir."
//	Leer n1, n2
//	divisionPrimaria(n1, n2)	
//FinAlgoritmo
//
//SubProceso divisionPrimaria(n1, n2)
//	Definir i Como Entero
//	i=0
//	Mientras n1 >= n2 Hacer
//		i=i+1
//		Escribir n1, " - ", n2, " = ", n1-n2, " / ", i, " resta realizada."
//		n1=n1-n2
//	FinMientras
//	Escribir "Cociente => ", i
//	Escribir "Residuo  => ", n1
//FinSubProceso

//// Ej.4
//Algoritmo ej_4
//	Definir entry Como Caracter
//	Escribir "Ingrese el texto a codificar."
//	Leer entry
//	codificar(entry)
//FinAlgoritmo
//
//SubProceso codificar(string)
//	Definir i Como Entero
//	Para i = 0 Hasta Longitud(string) Hacer
//		Segun Minusculas(Subcadena(string, i, i))
//			"a":
//				Escribir Sin Saltar "@"
//			"e":
//				Escribir Sin Saltar "#"
//			"i":
//				Escribir Sin Saltar "$"
//			"o":
//				Escribir Sin Saltar "%"
//			"u":
//				Escribir Sin Saltar "*"
//			De Otro Modo:
//				Escribir Sin Saltar Subcadena(string, i, i)
//		FinSegun
//	FinPara
//	Escribir ""
//FinSubProceso

//// Ej.5
//Algoritmo ej_5
//	Definir entry Como Caracter
//	Escribir "Ingrese la cadena."
//	Leer entry
//	convertirEspaciado(entry)
//FinAlgoritmo
//
//SubProceso convertirEspaciado(string)
//	Definir i Como Entero
//	Definir c Como Caracter
//	Para i = 0 Hasta Longitud(string) Hacer
//		c = Minusculas(Subcadena(string, i, i))
//		Si (c >= "a" y c <= "z") o (c >= "A" y c <= "Z")  Entonces
//			Escribir Sin Saltar Subcadena(string, i, i), " "
//		SiNo
//			Escribir Sin Saltar Subcadena(string, i, i)
//		FinSi
//	FinPara
//FinSubProceso

//// Ej.6
Algoritmo ej_6
	
FinAlgoritmo











