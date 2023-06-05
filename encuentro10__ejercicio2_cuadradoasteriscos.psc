Algoritmo cuadradoAsteriscos
//	Realizar un programa que lea un número entero (tamaño del lado) y a partir de él cree
//	un cuadrado de asteriscos de ese tamaño. Los asteriscos sólo se verán en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el número 4 se debe mostrar:
//* * * *
//*     *
//*     *
//* * * *
	Definir num, i, j Como Entero
	Escribir "Ingrese el tamaño" 
	Leer num
	
	Para i <- 0 Hasta num - 1 Hacer
		Para j <- 0 Hasta num -1 Hacer
			Si (i == 0 O i == num -1) Entonces
				Escribir Sin Saltar "* "	
			SiNo
				Si (j == 0 O j == num -1) Entonces
					Escribir Sin Saltar "* "
				SiNo
					Escribir Sin Saltar "  "
				FinSi
			FinSi
			
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
