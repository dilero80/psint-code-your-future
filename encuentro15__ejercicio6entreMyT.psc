Algoritmo entreMyT
//	Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//			letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
//			Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
	Definir letra Como Caracter
	
	Escribir "Digite una letra"
	
	Hacer
		Leer letra
		letra = Mayusculas(letra)
		Si NO (Longitud(letra) == 1 Y (letra >= "A" Y letra <= "Z"))
			Escribir "debe ser una letra"
		FinSi
	Mientras Que NO (Longitud(letra) = 1 Y (letra >= "A" Y letra <= "Z"))  
	
	entreMT(letra)
	

	
FinAlgoritmo

SubProceso entreMT(letra)
	Si (letra >= "M" Y letra <= "T") Entonces
		Escribir "Si esta entre M y T"
	SiNo
		Escribir "NO esta entre M y T"
		
	FinSi
	FinSubProceso
	