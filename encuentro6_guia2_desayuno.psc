Algoritmo desayuno
	//	Es tu turno, diseña un condicional anidado que le pregunte al usuario si quiere tomar té o café y
	//	en caso de que quiera tomar café, preguntar si solo o cortado y en caso de ser cortado, si
	//	prefiere leche vegetal.
	Definir breakfast, coffee Como Caracter
	
	Escribir "Que deseas de desayuno?"
	Escribir "A --> té"
	Escribir "B --> café"
	Leer breakfast
	
	si breakfast == 'B'
		Escribir "A --> Solo"
		Escribir "B --> Cortado"
		Leer coffee
		Si coffee == 'B'
			Escribir "A --> Leche Vegetal"
			Escribir "B --> Leche Desalactosada"
			leer coffee
			Si coffee == 'A'
				Escribir "Sale Cafe Cortado con Leche Vegetal"
			SiNo
				Escribir "Sale Cafe Cortado con Leche Deslactosada"
			FinSi
			
		SiNo
			Escribir "Sale Cafe Solo"
		FinSi
	SiNo
		Escribir "Sale Te"
	FinSi
	
	
	
	
	
	
FinAlgoritmo
