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
//	Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s debemos pensar en el
//		resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.
	Definir num Como Entero
 	Escribir "Digite un numero"
	Leer num
	
	Escribir "Los digitos del numero ",num," suman ", SumaDigitos(num)
	
	
FinAlgoritmo

