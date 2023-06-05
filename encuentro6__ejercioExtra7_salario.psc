Algoritmo sueldos
	Definir tipo Como Caracter
	Definir extra, comision, hora, valorhora, ventas Como Entero
	
	Escribir "Que tipo de contrato tienes:"
	Escribir "A --> Comision"
	Escribir "B --> salario fijo + comision"
	Escribir "C --> Salario Fijo"
	Leer tipo
	tipo = Mayusculas(tipo)
	
	Si Longitud(tipo) == 1 Entonces
		Segun tipo
			'A':
				Escribir "Monto total de ventas:"
				Leer ventas
				Escribir "Tu salario sera :" ventas *0.40
			'B':
				Escribir "Valor hora:"
				Leer valorhora
				Escribir "Cantidad de horas"
				Leer hora
				Escribir "Ventas totales"
				Leer ventas
				Si hora >40 Entonces
					hora = 40
				FinSi
				Escribir "TU salario es $",hora * valorhora + ventas*.25
			'C':
				Escribir "Valor hora:"
				Leer valorhora
				Escribir "Cantidad de horas"
				Leer hora
				Si hora >40 Entonces
					extra = (hora-40) * (valorhora*0.5)
				SiNo
					extra = 0 
				FinSi
				Escribir "TU salario es $",(hora * valorhora) + extra
			De Otro Modo:
				Escribir "No es una opcion valida"
				
				
		FinSegun
	FinSi
	
	
FinAlgoritmo
