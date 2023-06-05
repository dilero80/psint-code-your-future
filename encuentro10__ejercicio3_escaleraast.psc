Algoritmo sin_titulo
//	Escriba un programa que lea un número entero (altura) y a partir de él cree una escalera
//	invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
//	deberá mostrar:
//		*****
//		****
//		***
//		**
//		*
	Definir num, i, j Como Entero
	Escribir "Ingrese la altura" 
	Leer num
	
	Para j<-0 Hasta num-1 Hacer
		Para i <- num-1 Hasta j Con Paso -1 Hacer
			Escribir Sin Saltar "*"	
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
