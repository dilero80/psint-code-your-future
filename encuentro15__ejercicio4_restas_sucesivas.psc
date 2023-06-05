Algoritmo codificar_frase
//	Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//	cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.	
	
	//	a e i o u
	//	@ # $ % *
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
//	correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
	Definir frase Como Caracter
	
	Escribir "Digite una frase a codificar"
	Leer frase
	
	CodificarFrase(frase)
	
	Escribir frase
FinAlgoritmo

SubProceso CodificarFrase(frase Por Referencia)
	Definir fraseTemp, letra Como Caracter
	Definir i Como Entero
	fraseTemp = ""
	Para i <- 0 hasta Longitud(frase) Hacer
		letra = subcadena(frase,i,i)
		Segun letra
			"a":
				letra = "@"
			"e":
				letra = "#"
			"i":
				letra = "$"
			"o":
				letra = "%"
			"u":
				letra = "*"
			De Otro Modo:
				letra = letra
				
		FinSegun
		fraseTemp = Concatenar(fraseTemp, letra)
		
	FinPara
	frase = fraseTemp
FinSubProceso
	