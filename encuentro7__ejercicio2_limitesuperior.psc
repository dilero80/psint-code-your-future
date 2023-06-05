Algoritmo limitePositivo
//	Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación
//	solicite números al usuario hasta que la suma de los números introducidos supere el
//	límite inicial.
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
