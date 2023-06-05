Algoritmo names_long
//	Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//	almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//	debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//		Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.
	Definir n, i, arrayLongitud Como Entero
	Definir arrayNombres Como Caracter
	Escribir "Cuantos nombres desea escribir"
	Hacer
		Leer n
	Mientras Que NO n > 0
	
	Dimension arrayLongitud[n]
	Dimension arrayNombres[n]
	
	llenarNombres(arrayNombres, n)
	leerLongitud(arrayNombres, arrayLongitud, n)
	
	Para i <- 0 Hasta n-1 Hacer
		Escribir "La posicion ",i ," es " arrayNombres[i]," y es de Longitud ", arrayLongitud[i]
		
	FinPara
	
	
FinAlgoritmo


SubProceso llenarNombres(array Por Referencia, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Escribir "Digite el nombre #",i
		Leer array[i]
	FinPara
FinSubProceso

SubProceso leerLongitud(arrayA, arrayB, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		arrayB[i] = Longitud(arrayA[i])
	FinPara
FinSubProceso
	