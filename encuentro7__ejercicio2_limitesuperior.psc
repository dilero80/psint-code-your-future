Algoritmo limitePositivo
//	Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n
//	solicite n�meros al usuario hasta que la suma de los n�meros introducidos supere el
//	l�mite inicial.
	Definir limite, sum, num Como Entero
	sum = 0
	Escribir "Digite limite"
	leer limite
	
	Mientras sum <= limite Hacer
		Escribir "Digite un numero"
		Leer num
		sum = sum + num
		
	FinMientras
	Escribir "Paso el limite"
FinAlgoritmo
