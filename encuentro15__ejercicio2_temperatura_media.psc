Algoritmo temp_media
//	Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//	m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya
//	pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
//	programa pedir� el n�mero de d�as que se van a introducir.
	Definir dias Como Entero
	
	Escribir "Digita el numero de dias a calcular"
	Leer dias
	
	Definir min, max, media Como Real
	Definir i Como Entero	
	Para i <- 1 Hasta dias Hacer
		Escribir "Para el dia ", i, " digite la temperatura maxima"
		Leer max
		
		Escribir "Para el dia ", i, " digite la temperatura minima"
		Leer min
		
		MediaTemp(min,max, media)
		
		Escribir "La temperatura media para el dia", i," fue de ",media
		
		
	FinPara
	
	
FinAlgoritmo

SubProceso MediaTemp(min, max, media Por Referencia)
	media = (min + max)/2
	
	
FinSubProceso
