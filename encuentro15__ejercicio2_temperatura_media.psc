Algoritmo temp_media
//	Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//	máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya
//	pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//	programa pedirá el número de días que se van a introducir.
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
