Algoritmo gradoEficiencia
//	Escriba un programa para obtener el grado de eficiencia de un operario de una f�brica de
//	tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un per�odo
//	de prueba:
//	x Producir menos de 200 tornillos defectuosos.
//	x Producir m�s de 10000 tornillos sin defectos.
//	x El grado de eficiencia se determina de la siguiente manera:
//	x Si no cumple ninguna de las condiciones, grado 5.
//	x Si s�lo cumple la primera condici�n, grado 6.
//	x Si s�lo cumple la segunda condici�n, grado 7.
//	x Si cumple las dos condiciones, grado 8
	Definir defect, sinDefect Como Entero
	Definir var1,var2 Como Logico
	
	Leer defect,sinDefect
	
	var1=defect<200
	var2=sinDefect>1000
	
	Si var1 Entonces
		Si var2 Entonces
			Escribir "Grado 8"
		SiNo
			Escribir "Grado 6"
		FinSi
	Sino
		Si var2 Entonces
			Escribir "Grado 7"
		SiNo
			Escribir "Grado 5"
		FinSi
	FinSi
FinAlgoritmo
