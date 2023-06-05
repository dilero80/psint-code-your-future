Algoritmo fecha
	Definir day, month, year Como Entero
	Definir monthtext Como Caracter
	Definir bandera Como Logico
	
	
	Escribir "Digite el año: (aaaa)"
	leer year
	Escribir "Digite el mes: (mm)"
	Leer month
	Escribir "Digite el dia: (dd)"
	Leer day
	
	Si Longitud(ConvertirATexto(year)) == 4 Y month < 12 Y month > 1 Y day > 1 Y day < 31 Entonces
		bandera = Verdadero
	SiNo
		Si month == 2 Entonces
			Si day > 28 Entonces
				Escribir "No es una fecha valida"
				bandera = Falso
			SiNo
				Si month == 4 O month ==6 O month == 9 O month == 11 Entonces
					Si day > 30
						Escribir "No es una fecha valida"
						bandera = Falso
					FinSi
				
				FinSi
			FinSi
		FinSi
	Escribir "No es una fecha valida"
	bandera = Falso
	FinSi
	
	Si bandera Entonces
		Segun month Hacer
			1:
				monthtext = "Enero"
			2:
				monthtext = "Febrero"
			3:
				monthtext = "Marzo"
			4:
				monthtext = "Abril"
			5:
				monthtext = "Mayo"
			6:
				monthtext = "Junio"
			7:
				monthtext = "Julio"
			8:
				monthtext = "Agosto"
			9:
				monthtext = "Septiembre"
			10:
				monthtext = "Octubre"
			11: 
				monthtext = "Noviembre"
			12:
				monthtext ="Diciebmre"								
		FinSegun
		Escribir day, " ", monthtext, " ",year
	FinSi
	
	
	
	
	
FinAlgoritmo
