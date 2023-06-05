Algoritmo vocalConsonante
	Definir letra Como Caracter
	
	Escribir "digite un caracter: "
	leer letra
	
	letra = Minusculas(letra)
	
	Si letra>='a' Y letra<='z' Entonces
		
		Si letra == 'a' O letra == 'e' O letra == 'i' O letra == 'o' O letra == 'u' Entonces
		Escribir "Es una vocal"
		FinSi
	
		Si NO(letra == 'a' O letra == 'e' O letra == 'i' O letra == 'o' O letra == 'u') Entonces
			Escribir "Es una consonante"
		FinSi
		
	FinSI
	
	
FinAlgoritmo
