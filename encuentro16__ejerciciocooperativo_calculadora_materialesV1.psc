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

SubProceso impPant(datos, valor1, valor2)
	Escribir "Se requieren ",valor1 * valor2, " ", datos
FinSubProceso

SubProceso salir()
	definir exit Como Caracter
	Escribir "Digite una tecla para continuar"
	Hacer
		Leer exit
	Mientras Que exit<>""
FinSubProceso

SubProceso calcularMuro()
//	Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. Luego el largo y el alto. A partir
//	de estos datos se debe mostrar al usuario la superficie del muro y la cantidad de materiales que
//	necesitaremos para construirlo.
//	Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena
//	y 120 ladrillos.
//	Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena
	//	y 90 ladrillos
	Definir area, largo, alto, tipoMuro, valores Como Real
	Definir datos Como Caracter
	Definir i Como Entero
	Dimension datos[3]
	Dimension valores[3]
	datos[0] = "kg cemento"
	datos[1] = "m3 de Arena"
	datos[2] = "ladrillos"	
	
	
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
		valores[0]= 15.2
		valores[1]= 0.115
		valores[2]= 120
	SiNo
		valores[0]= 10.9
		valores[1]= 0.09
		valores[2]= 90
	FinSi
	Escribir "La superficie del muro es de ",area,"m2"
	Para i <-0 Hasta 2 Hacer
		impPant(datos[i], area, valores[i])
	FinPara
	salir()
	
FinSubProceso

SubProceso calcularViga()
	Definir alto, valores Como Real
	Definir datos Como Caracter
	Definir i Como Entero
	Dimension datos[5]
	Dimension valores[5]
	datos[0] = "Kg de cemento"
	datos[1] = "m2 de Arena"
	datos[2] = "m2 de Piedra"
	datos[3] = "metros de hierro del 8"
	datos[4] = "metros de hierro del 4"
	valores[0]= 9
	valores[1]= 0.02
	valores[2]= 0.02
	valores[3]= 4
	valores[4]= 3
	
	Escribir "Digite el alto de la columna en metros"
	
	Hacer
		Leer alto
	Mientras Que  No alto > 0 
	
	
	Para i <-0 Hasta 4 Hacer
		impPant(datos[i], alto, valores[i])
	FinPara
	 
	
	
	salir()
FinSubProceso

SubProceso calcularColumna()
//Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
//	m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
//	Debemos mostrar al usuario la cantidad de materiales necesaria.
	Definir alto, valores Como Real
	Definir datos Como Caracter
	Definir i Como Entero
	Dimension datos[5]
	Dimension valores[5]
	datos[0] = "Kg de cemento"
	datos[1] = "m2 de Arena"
	datos[2] = "m2 de Piedra"
	datos[3] = "metros de hierro del 10"
	datos[4] = "metros de hierro del 4"
	valores[0]= 7.5
	valores[1]= 0.016
	valores[2]= 0.016
	valores[3]= 6
	valores[4]= 3
	
	Escribir "Digite el alto de la columna en metros"
	
	Hacer
		Leer alto
	Mientras Que NO alto > 0 
	
	Para i <-0 Hasta 4 Hacer
		impPant(datos[i], alto, valores[i])
	FinPara
	
	
	salir()
FinSubProceso


SubProceso calcularContrapisos()
//	Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
//Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de
//	piedra.
//	Debemos mostrar al usuario la cantidad de materiales necesaria.	
	Definir volumen, alto, ancho, profundidad, valores Como Real
	Definir datos Como Caracter
	Definir i Como Entero
	Dimension datos[3]
	Dimension valores[3]
	datos[0] = "Kg de cemento"
	datos[1] = "m2 de Arena"
	datos[2] = "m2 de Piedra"
	valores[0]= 105
	valores[1]= 0.45
	valores[2]= 0.9
	
	
	
	
	Escribir "Digite la altura del Contrapiso"
	Leer alto
	Escribir "Digite largo del contrapiso"
	Leer ancho
	Escribir "Digite la profundidad del Contrapiso"
	Leer profundidad
	
	
 	volumen = calcularVolumen(alto, ancho, profundidad)
	
	Para i <-0 Hasta 2 Hacer
		impPant(datos[i], volumen, valores[i])
	FinPara
	
	
	salir()
	
FinSubProceso

SubProceso calcularTecho()
	Definir area, alto, ancho, profundidad, valores Como Real
	Definir datos Como Caracter
	Definir i Como Entero
	Dimension datos[5]
	Dimension valores[5]
	datos[0] = "Kg de cemento"
	datos[1] = "m2 de Arena"
	datos[2] = "m2 de Piedra"
	datos[3] = "metros de hierro del 8"
	datos[4] = "metros de hierro del 6"
	valores[0]= 33
	valores[1]= 0.072
	valores[2]= 0.072
	valores[3]= 7
	valores[4]= 4
		
		
	Escribir "Digite la altura del Techo"
	Leer alto
	Escribir "Digite largo del Techo"
	Leer ancho
	Escribir "Digite El espesor del Techo"
	Leer profundidad
	
	area = calcularSuperficie(alto, ancho)
	
	Para i <-0 Hasta 4 Hacer
		impPant(datos[i], area, valores[i])
	FinPara
	
	
	salir()
FinSubProceso


SubProceso calcularPisos()
//	Nos debe pedir ancho y largo del paño de piso a colocar. Teniendo esos datos se debe calcular la
//	superficie y añadirle un 10% extra por recortes
	//	Mostrar el resultado en m2
	Definir area, largo, alto, valores Como Real
	Definir datos Como Caracter

	
	datos = "M2 de piso"
	valores= 1.1
	
	
	
	Escribir "Digite la ancho del Piso"
	Leer alto
	Escribir "Digite largo del Piso"
	Leer largo
	area = calcularSuperficie(alto,largo)
	
	impPant(datos, area, valores)
		
	
	salir()

FinSubProceso


SubProceso calcularPintura()
	//Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en cuenta
	//que rinde 6 m2 por litro de pintura.
	Definir area, largo, alto, valores Como Real
	Definir datos Como Caracter
	
	
	datos ="m2 de pintura"
	valores = 1/6
	
	
	Escribir "Digite la ancho de la pared"
	Leer alto
	Escribir "Digite alto de la pared "
	Leer largo
	area = calcularSuperficie(alto,largo)
	
	impPant(datos, area, valores)
	salir()
FinSubProceso


SubProceso calcularIluminacion()
//Nos debe pedir la superficie de la habitación. La iluminación la calculamos de la siguiente forma:
//	superficie * 0.20. Eso nos da la cantidad mínima de superficie de iluminación natural (ventanas y
	//	puertas de vidrio). Mostrar resultado
	Definir area, largo, alto, valores Como Real
	Definir datos Como Caracter
	
	datos ="m2 de iluminacion"
	valores = .2
		
	Escribir "Digite el ancho de la habitacion"
	Leer alto
	Escribir "Digite el largo de la habitacion "
	Leer largo
	area = calcularSuperficie(alto,largo)
	
	
	impPant(datos, area, valores)
	salir()
FinSubProceso
