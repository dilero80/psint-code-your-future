Funcion suma <- SumaDigitos(num)
	Definir suma, temp Como Entero
	suma = 0
	temp = num
	Hacer
		
		suma = suma + (temp % 10)
		temp = trunc(temp / 10)
		
	Mientras Que No temp < 10
	//Escribir temp
	suma = suma + temp
FinFuncion
Algoritmo suma_digitos
//	Realizar una función que calcule la suma de los dígitos de un número.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
//		resto de una división entre 10. Recordar el uso de la función Mod y Trunc.
	Definir num Como Entero
 	Escribir "Digite un numero"
	Leer num
	
	Escribir "Los digitos del numero ",num," suman ", SumaDigitos(num)
	
	
FinAlgoritmo

