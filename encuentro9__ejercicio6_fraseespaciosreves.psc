Algoritmo fraseespaciosreves
	//	Realizar un programa que pida una frase y el programa deber� mostrar la frase con un
	//espacio entre cada letra. La frase se mostrar� as�: H o l a. Nota: recordar el
	//		funcionamiento de la funci�n Subcadena().
	Definir frase como cadena
	Definir i Como Entero
	
	Escribir "Escriba una frase"
	Leer frase
	
	Para i <- Longitud(frase) -1 Hasta 0 Con Paso -1 Hacer
		Escribir Sin Saltar subcadena(frase,i,i)," "
	FinPara
	
FinAlgoritmo
