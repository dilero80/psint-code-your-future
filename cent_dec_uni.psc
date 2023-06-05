Algoritmo cent_dec_uni
	Definir num Como Entero
	
	Escribir "Digite un numero de tres cifras:"
	Leer num
	
	Escribir "CENTENA: ",trunc(num /100)
	Escribir "DECENA: ", trunc((num % 100)/10)
	Escribir "UNIDAD: ", num % 10
	
	
	
FinAlgoritmo
