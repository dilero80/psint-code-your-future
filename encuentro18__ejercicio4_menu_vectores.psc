Algoritmo menu_vectores
//	Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
//que ingrese la opción Salir:
//	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
	//vez.
	
	Definir menuOption Como Caracter
	Definir vecA, vecB, vecC, n Como Entero
	
	Escribir " Por favor digite el tamaño de los vectores"
	Leer n
	Dimension vecA[n]
	Dimension vecB[n]
	Dimension vecC[n]
	
	Hacer
		Escribir "Escoja la tarea"
		Escribir "A.! Llenar Vector A"
		Escribir "B.! Llenar Vector B"
		Escribir "C.! Llenar Vector C Suma A + B"
		Escribir "D.! Llenar Vector C Resta A - B"
		Escribir "E.! Mostrar Vector"
		Escribir "F.! Salir"
		
		Leer menuOption
		menuOption = Mayusculas(menuOption)
		Segun menuOption
			"A":
				Vector(vecA, n)
			"B":
				Vector(vecB, n)
			"C":
				VectorCsum(vecA, vecB, vecC, n)
			"D":
				VectorCres(vecA, vecB, vecC, n)
			"E":
				showVector(vecA, vecB, vecC, n)
			"F":
				Escribir "Gracias"
				
				
		FinSegun
	Mientras Que NO (menuOption =="F" Y (menuOption >= "A" Y menuOption <= "F"))
	
	
	
FinAlgoritmo

SubProceso Vector(vecA Por Referencia, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		vecA[i] = Aleatorio(-100,100)
	FinPara
	
	Escribir " Vector Lleno"
FinSubProceso

SubProceso VectorCsum(vecA Por Referencia, vecB Por Referencia, vecC Por Referencia, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		vecC[i] = vecA[i]+vecB[i] 
	FinPara
	Escribir " Vector C lleno de Suma de A+B "
FinSubProceso
SubProceso VectorCres(vecA Por Referencia, vecB Por Referencia, vecC Por Referencia, n)
	Definir i Como Entero
	Para i <- 0 Hasta n-1 Hacer
		vecC[i] = vecB[i]-vecA[i] 
	FinPara
	Escribir " Vector C lleno de Resta de B-A "
FinSubProceso

SubProceso showVector(vecA Por Referencia, vecB Por Referencia, vecC Por Referencia, n)
	Definir muestre Como Caracter
	Definir i Como Entero
	Escribir "Que vector quieres ver A / B / C ? "
	Hacer
		Leer muestre
		muestre = Mayusculas(muestre)
	Mientras Que NO muestre >= "A" Y muestre <= "C" 
	
	Si muestre == "A"
		Para i <- 0 Hasta n-1 Hacer
			Escribir Sin Saltar "[ ",vecA[i], " ]"
		FinPara
	FinSi
	Si muestre == "B"
		Para i <- 0 Hasta n-1 Hacer
			Escribir Sin Saltar "[ ",vecB[i], " ]"
		FinPara
	FinSi
	Si muestre == "C"
		Para i <- 0 Hasta n-1 Hacer
			Escribir Sin Saltar "[ ",vecC[i], " ]"
		FinPara
	FinSi
	Escribir ""
	
	salir()
	
FinSubProceso

SubProceso salir()
	definir exit Como Caracter
	Escribir "Digite una tecla para continuar"
	Hacer
		Leer exit
	Mientras Que exit<>""
FinSubProceso
	