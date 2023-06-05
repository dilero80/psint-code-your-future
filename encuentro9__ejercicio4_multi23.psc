Algoritmo multi23
//	Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3
//	comprendidos entre 1 y 100.
	Definir i, multi2, multi3 Como Entero
	multi2 = 0 
	multi3 = 0
	Para i <- 0 Hasta 99 Hacer
		Si i%2 == 0 Entonces
			multi2 = multi2 + 1
			
		FinSi
		Si i%3 == 0 Entonces
			multi3 = multi3 + 1
			
		FinSi
		
	FinPara
	Escribir "Cantidad de numeros multiplos de 2 son ", multi2
	Escribir "Cantidad de numeros multiplos de 3 son ", multi3
FinAlgoritmo
