Algoritmo sin_titulo
//	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
//calcula seg�n el siguiente criterio: la parte pr�ctica vale el 10%; la parte de problemas
//	vale el 50% y la parte te�rica el 40%. El programa leer� el nombre del alumno, las tres
//	notas obtenidas, mostrar� el resultado por pantalla, y a continuaci�n volver� a pedir los
//	datos del siguiente alumno hasta que el nombre sea una cadena vac�a. Las notas deben
//	estar comprendidas entre 0 y 10, y si no est�n dentro de ese rango no se imprimir� el
	//		promedio y se mostrar� un mensaje de error.
	
	Definir nombrealum Como Caracter
	Definir notafinal, notaprac, notapro, notateorica Como Real
	
	
	Escribir "Digite nombre"
	Leer nombrealum
	
	Mientras nombrealum <> "" Hacer
		Escribir "Digite nota Practicas"
		Leer notaprac
		Escribir "Digite nota Problemas"
		Leer notapro
		Escribir "Digite nota Teorica"
		Leer notateorica
		notafinal = notaprac * .1 + notapro *.5 + notateorica * .4
		Escribir "Tu nota final es: ", notafinal
		Escribir "Digite siguiente nombre"
		Leer nombrealum
		
	FinMientras
	
FinAlgoritmo
