Algoritmo VocalSecreta
	Definir secretvocal, vocal Como Caracter
	secretvocal = 'a'
	vocal = ''
	Mientras  vocal <> secretvocal
		Escribir "Adivina la vocal"
		Leer vocal
		vocal = Minusculas(vocal)
	FinMientras
	Escribir "La encontraste"
	
	
FinAlgoritmo
