Algoritmo cuadradoAsteriscos
//	Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree
//	un cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
//* * * *
//*     *
//*     *
//* * * *
	Definir num, i, j Como Entero
	Escribir "Ingrese el tama�o" 
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
