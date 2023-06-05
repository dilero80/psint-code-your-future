Funcion esimpar <- digitosImpar(num)
	Definir esimpar Como Logico
	Definir cont, cont1,  temp, digito Como Entero
	cont = 0
	cont1 = 0
	temp = num
	//divido entre 10 el numero tantas veces como sea posible antes que el numero temporal que tenga sea mayor a 10
	Hacer
		//saco el ultimo digito del numero antes de dividirlo y trucarlo donde lo voy eliminando, Es decir si el numero 
		//inicial es 123 al dividirlo por 10 tenfo como resultado 12 y como residuo 3
		digito = (temp % 10)
		//si el digito es impar sumo contador 1
		Si ( digito % 2 <> 0) 
			cont = cont + 1
		FinSi
		temp = trunc(temp / 10)
		cont1 = cont1 + 1
	Mientras Que No temp < 10
	
	cont1 = cont1+1
	Si (temp % 2 <> 0) 
		cont = cont + 1
	FinSi
	
	esimpar = (cont == cont1) 
	
FinFuncion

Algoritmo funcionNumImpar
//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//	tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//	numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//	Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
//	realizar el ejercicio.	
	Definir num Como Entero
	Escribir "Digite un numero entero"
	Leer num
	
	Escribir "Para el numero ", num," se puede decir que es ", digitosImpar(num), " que tenga todos sus digitos Impares"
	//Escribir digitosImpar(num)
	
FinAlgoritmo

