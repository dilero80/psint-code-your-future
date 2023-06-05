Algoritmo capicua
	Definir cifra1, cifra2, cifra3, aux, capi Como Entero
	Escribir "Digite un numero de 3 cifras"
	Leer capi
	
	cifra1 = capi mod 10
	
	cifra3 = trunc(capi/100)
	
	Si cifra1 == cifra3 Entonces
		Escribir "Capicua"
		
	FinSi
	
	
FinAlgoritmo
