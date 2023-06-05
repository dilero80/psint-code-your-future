Algoritmo factorial
	//	La función factorial se aplica a números enteros positivos. El factorial de un número
	//entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
	//	n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
	//	Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
	//hasta el 5. El programa deberá mostrar la siguiente salida:
	//	!1 = 1
	//	!2 = 1*2 = 2
	//	...
	//	!5 = 1*2*3*4*5 = 120	
	
	Definir i, j, fact, n Como Entero
	fact = 1
	n = 5 
	Para i<-1 Hasta n Hacer
		Escribir Sin Saltar "!",i," = "
		Para j<-1 Hasta i Hacer
			Si (i <> 1 Y i<> j) Entonces
				Escribir Sin Saltar j,"*"
			SiNo
				Si (j = i Y i <>1) Entonces
					Escribir Sin Saltar j, " = "				
				FinSi
			FinSi
			fact = fact * j
		FinPara
		
		Escribir  fact 
		fact = 1	
	FinPara
	Escribir ""
	
FinAlgoritmo
