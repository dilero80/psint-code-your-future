Funcion prime <- esPrime (num)
	Definir prime Como Caracter
	Definir i, cont Como Entero
	cont = 0
	Para i <- 1 Hasta num Hacer
		si num % i = 0
			cont = cont + 1
		FinSi
	FinPara
	
	Si cont == 2 Entonces
		prime = "Primo"
	SiNo
		prime = "No es Primo"
	FinSi
FinFuncion

Algoritmo esPrimo
//	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//	primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
	//	3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
	Definir num Como Entero
	
	Escribir "Digite un numero"
	Leer num
	
	Escribir "el Numero es ", esPrime(num) 

FinAlgoritmo
