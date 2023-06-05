Algoritmo notas
//	Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
//	N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
//	Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves
	//de sus estudiantes:
//	Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
//	reprueba el curso si tiene una nota final inferior a 6.5
//		? Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//		? La mayor nota obtenida en las exposiciones.
//		? Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//		El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
//		las 3 notas y calculará todos informes claves que requiere el docente.
	
	Definir nota_trabajo,nota_expo, nota_parcial, cant_reprueba, prom_reprueba, porcen_integrador, max_expo, estu_4075 Como Real
	Definir cant_estudiantes, i Como Entero
	// inicializo variables contadores a 0
	max_expo = 0
	estu_4075 = 0 
	porcen_integrador = 0
	prom_reprueba = 0
	cant_reprueba = 0
	Escribir "Cantidad de estudiantes:"
	Leer cant_estudiantes
	
	Para i <- 0 Hasta cant_estudiantes -1 Hacer
		Escribir "Para Estudiante #",i+1
		Escribir "Ingrese nota trabajo práctico Integrador (35%)"
		Hacer
			Leer nota_trabajo
		Mientras Que NO(nota_trabajo >=0 Y nota_trabajo <=10) 
		
		Escribir "Ingrese nota Exposición (25%)"
		Hacer
			Leer nota_expo
		Mientras Que NO(nota_expo >=0 Y nota_expo <=10) 
		
		Escribir "Ingrese nota Parcial (40%)"
		Hacer
			Leer nota_parcial
		Mientras Que NO(nota_parcial >=0 Y nota_parcial<=10)
		
		Si nota_expo > max_expo
			max_expo = nota_expo
		FinSi
		Si nota_parcial >= 4.0 y nota_parcial <=7.5 Entonces
			estu_4075 = estu_4075 + 1
		FinSi
		si nota_trabajo >= 7.5 Entonces
			porcen_integrador = porcen_integrador + 1
		FinSi
		nota_final = (nota_trabajo*.35)+(nota_parcial*.4)+(nota_expo*.25)
		Si nota_final < 6.5 Entonces
			cant_reprueba = cant_reprueba + 1
			prom_reprueba = (prom_reprueba + nota_final)
			
		FinSi
	FinPara
	
	Escribir "Nota promedio final de los estudiantes que reprobaron el curso: ", prom_reprueba / cant_reprueba
	Escribir "Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5 es ",(porcen_integrador/cant_estudiantes)*100,"%"
	Escribir "La mayor nota obtenida en las exposiciones es ", max_expo
	Escribir "Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5 son: ", estu_4075
	
	
	
FinAlgoritmo
