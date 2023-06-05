Algoritmo tieneTresDig
	Definir num Como Entero
	
	Escribir "Escribe un numero de 3 digitos"
	Leer num
	
	Si num > 99 Y num < 1000 y Longitud(ConvertirATexto(num)) = 3 Entonces
		Escribir "Si es un numero de 3 digitos"
	SiNo
		Escribir "No tiene 3 digitos. Numero no valido"
		
	FinSi
	
FinAlgoritmo
