Algoritmo laboralOno
	Definir dia Como Caracter
	
	Escribir "escribe un dia de la semana:"
	Leer dia
	dia = Minusculas(dia)
	
	
	Si dia == "sabado" o dia == "domingo" Entonces
		Escribir "Es fin de semana"
	SiNo
		Escribir "Es dia laboral"
	FinSi
	
FinAlgoritmo
