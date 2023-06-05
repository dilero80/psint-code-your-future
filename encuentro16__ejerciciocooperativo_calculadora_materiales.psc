Algoritmo calculadora_materiales
	menu()
FinAlgoritmo

SubProceso menu()
	Definir menuOption Como Entero
	
	Hacer
		Escribir "Escoja la tarea"
		Escribir "1.! Calcular muro de ladrillo"
		Escribir "2.! Calcular viga de hormigón"
		Escribir "3.! Calcular columnas de hormigón"
		Escribir "4.! Calcular contrapisos"
		Escribir "5.! Calcular techo"
		Escribir "6.! Calcular pisos"
		Escribir "7.! Calcular pintura"
		Escribir "8.! Calcular iluminación"
		Escribir "9.! Salir"
		
		Leer menuOption
		
		Segun menuOption
			1:
				calcularMuro()
			2:
				calcularViga()
			3:
				calcularColumna()
			4:
				calcularContrapisos()
			5:
				calcularTecho()
			6:
				calcularPisos()
			7:
				calcularPintura()
			8:
				calcularIluminacion()
			9:	
				Escribir "Gracias"
				
				
		FinSegun
	Mientras Que NO (menuOption ==9 Y (menuOption > 0 Y menuOption < 10))
FinSubProceso

Funcion superficie <- calcularSuperficie (alto,largo)
	Definir superficie Como Real
	superficie = alto * largo
FinFuncion

Funcion volumen <- calcularVolumen (largo,ancho,alto)
	Definir volumen Como Real
	volumen = alto * largo * ancho
FinFuncion
	

SubProceso calcularMuro()
//	Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. Luego el largo y el alto. A partir
//	de estos datos se debe mostrar al usuario la superficie del muro y la cantidad de materiales que
//	necesitaremos para construirlo.
//	Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena
//	y 120 ladrillos.
//	Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena
	//	y 90 ladrillos
	Definir area, largo, alto, tipoMuro Como Real
	
	Escribir "Que tipo de muro tiene"
	Escribir "1. 30cm"
	Escribir "2. 20cm"
	Hacer
		Leer tipoMuro
	Mientras Que  NO(tipoMuro = 0 O tipoMuro = 2)
	Escribir "Digite la altura del Muro"
	Leer alto
	Escribir "Digite largo del Muro"
	Leer largo
	area = calcularSuperficie(alto,largo)
	Si tipoMuro == 1
		Escribir "La superficie del muro es de ",area,"m2"
		Escribir "Se requieren ",area*15.2, "kg de Cemento"
		Escribir "Se requieren ",area*0.115, "m3 de Arena"
		Escribir "Se requieren ",area * 120, " ladrillos"
	SiNo
		Escribir "La superficie del muro es de ",area,"m2"
		Escribir "Se requieren ",area*10.9, "kg de Cemento"
		Escribir "Se requieren ",area*0.09, "m3 de Arena"
		Escribir "Se requieren ",area * 90, " ladrillos"
	FinSi
FinSubProceso

SubProceso calcularViga()
	Definir alto Como Real
	
	Escribir "Digite el alto de la columna en metros"
	
	Hacer
		Leer alto
	Mientras Que  No alto > 0 
	
	Escribir "Se requieren ",alto*9, "kg de Cemento"
	Escribir "Se requieren ",alto*0.02, "m2 de Arena"
	Escribir "Se requieren ",alto*0.02, "m2 de Piedra"
	Escribir "Se requieren ",alto* 4, " metros de hierro del 8"
	Escribir "Se requieren ",alto* 3, " metros de hierro del 4"
FinSubProceso

SubProceso calcularColumna()
	Definir alto Como Real
	
	Escribir "Digite el alto de la columna en metros"
	
	Hacer
		Leer alto
	Mientras Que NO alto > 0 
	
	Escribir "Se requieren ",alto*7.5, "kg de Cemento"
	Escribir "Se requieren ",alto*0.016, "m2 de Piedra"
	Escribir "Se requieren ",alto* 6, " metros de hierro del 10"
	Escribir "Se requieren ",alto* 3, " metros de hierro del 4"
FinSubProceso


SubProceso calcularContrapisos()
//	Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
//Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de
//	piedra.
//	Debemos mostrar al usuario la cantidad de materiales necesaria.	
	Definir volumen, alto, ancho, profundidad Como Real
	Escribir "Digite la altura del Contrapiso"
	Leer alto
	Escribir "Digite largo del contrapiso"
	Leer ancho
	Escribir "Digite la profundidad del Contrapiso"
	Leer profundidad
	
	
 	volumen = calcularVolumen(largo, ancho, profundidad)
	
	Escribir "Se requieren ",volumen * 7.5, "kg de Cemento"
	Escribir "Se requieren ",volumen * 0.45, "m3 de Arena"
	Escribir "Se requieren ",volumen * 0.9, " m3 de Piedra"
	
FinSubProceso

SubProceso calcularTecho()
	Definir volumen, alto, ancho, profundidad Como Real
	Escribir "Digite la altura del Contrapiso"
	Leer alto
	Escribir "Digite largo del contrapiso"
	Leer ancho
	Escribir "Digite la profundidad del Contrapiso"
	Leer profundidad
	
	area = calcularSuperficie(alto, ancho)
	
	Escribir "Se requieren ",area * 33, "kg de Cemento"
	Escribir "Se requieren ",area * 0.072, "m3 de Arena"
	Escribir "Se requieren ",area * 0.072, " m3 de Piedra"
	Escribir "Se requieren ",area * 7, "m de hierro del 8 "
	Escribir "Se requieren ",area * 4, " m de hierro del 6"
FinSubProceso


SubProceso calcularPisos()
//	Nos debe pedir ancho y largo del paño de piso a colocar. Teniendo esos datos se debe calcular la
//	superficie y añadirle un 10% extra por recortes
	//	Mostrar el resultado en m2
	Definir area, largo, alto Como Real
	Escribir "Digite la ancho del Piso"
	Leer alto
	Escribir "Digite largo del Piso"
	Leer largo
	area = calcularSuperficie(alto,largo)
	
	Escribir "La cantidad de piso necesario es ",area*1.1,"m2"

FinSubProceso


SubProceso calcularPintura()
	//Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en cuenta
	//que rinde 6 m2 por litro de pintura.
	Definir area, largo, alto Como Real
	Escribir "Digite la ancho de la pared"
	Leer alto
	Escribir "Digite alto de la pared "
	Leer largo
	area = calcularSuperficie(alto,largo)
	
	Escribir "La cantidad de pintura necesaria es ",area/6,"litros"
	
FinSubProceso


SubProceso calcularIluminacion()
//Nos debe pedir la superficie de la habitación. La iluminación la calculamos de la siguiente forma:
//	superficie * 0.20. Eso nos da la cantidad mínima de superficie de iluminación natural (ventanas y
	//	puertas de vidrio). Mostrar resultado
	Definir area, largo, alto Como Real
	Escribir "Digite el ancho de la habitacion"
	Leer alto
	Escribir "Digite el largo de la habitacion "
	Leer largo
	area = calcularSuperficie(alto,largo)
	
	Escribir "La cantidad de iluminacion necesaria es ",area*.20,"m2"
	
	
FinSubProceso
