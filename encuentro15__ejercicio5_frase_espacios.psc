Algoritmo frase_espacios
//	Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//	una cadena con un espacio adicional tras cada letra.
//	Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
	//	dicho procedimiento.
	Definir frase Como Caracter
	Escribir "Digite una frase"
	Leer frase
	
	
	Spaces(frase)
	Escribir frase
	
FinAlgoritmo

SubProceso Spaces(frase Por Referencia)
	Definir fraseTemp, letra Como Caracter
	Definir i Como Entero
	fraseTemp = ""
	Para i <- 0 hasta Longitud(frase) Hacer
		letra = subcadena(frase,i,i)
		
		fraseTemp = Concatenar(fraseTemp, letra)
		fraseTemp = Concatenar(fraseTemp, " ")
	FinPara
	frase = fraseTemp
FinSubProceso