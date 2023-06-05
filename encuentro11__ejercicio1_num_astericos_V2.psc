Algoritmo num_astericos_V2
	Definir num, i, j, k Como Entero
	Dimension num[5]
	
	Para i <- 0 Hasta 4 Hacer
		
		Hacer
			Escribir "Digite un numero entero"
			leer num[i]
			
		Mientras Que NO(num[i] < 21)
	FinPara
	
	Para j<-0 Hasta 4 Hacer
		Escribir Sin Saltar num[j]," "
		Para k<-0 hasta num[j] Hacer
			Escribir sin saltar "*"
			
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
