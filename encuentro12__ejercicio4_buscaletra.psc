Funcion cantidad <- buscarLetra(frase, letra)
	Definir cantidad, i Como Entero
	cantidad = 0
	Para i <- 0 Hasta Longitud(frase)-1
		Si Subcadena(frase, i , i) == letra Entonces
			cantidad = cantidad + 1 
		FinSi
	FinPara
FinFuncion


Algoritmo buscaletrita
//	Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
	//	función Subcadena().	
	Definir frase, letra Como Caracter
	Definir cantLetras Como Entero
	Escribir "Digite una frase"
	Leer frase
	
	Escribir " Digite la letra a buscar"
	Leer letra
	
	cantLetras = buscarLetra(frase, letra)
	Escribir "la letra " , letra, " esta ",cantLetras," en la frase"
	
	
FinAlgoritmo
