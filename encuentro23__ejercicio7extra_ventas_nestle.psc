Algoritmo ventas_nestle
//	Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//ofreciendo sus vendedores. Para tareas administrativas el país está dividido en cinco zonas:
//		Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//		estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
	//		c) el total de ventas de todos los representantes.	
	Definir total, ventas, n, m, ventasxzona, salesConsulta, i, zonasVent como Entero
	Definir salir Como Logico
	n = 5
	m = 6
	Dimension ventas(n,m)
	Definir vendedores, zonas, menu, zonaConsulta Como Caracter
	Dimension vendedores(5)
	Dimension zonas(6)
	
	Dimension total(n,m)
	vendedores[0] = "VENDEDOR 1"
	vendedores[1] = "VENDEDOR 2"
	vendedores[2] = "VENDEDOR 3"
	vendedores[3] = "VENDEDOR 4"
	vendedores[4]= "TOTAL"
	zonas[0] = "NORTE"
	zonas[1] = "SUR"
	zonas[2] = "ESTE"
	zonas[3] = "OESTE"
	zonas[4] = "CENTRO"
	zonas[5] = "TOTAL ZONA"
	
	
	llenarDatos(ventas, total, precios, vendedores, zonas, n, m)
	Escribir " "
	showMatrix(ventas, vendedores, zonas, n , m, "Ventas")
	Escribir " "
	salir = Falso
	Hacer
		Escribir "Desea saber:"
		Escribir " a) el total de ventas de una zona"
		Escribir " b) el total de ventas de un vendedor cada una de las zonas"
		Escribir " c) el total de ventas de todos los representantes."
		Escribir " d) Salir"
		
		Hacer
			leer menu
			menu = Minusculas(menu)
		Mientras Que NO (menu >= "a" Y menu <= "d" )
		
		Segun menu
			"a":
				Escribir "Digite zona a consultar"
				Hacer
					leer zonaConsulta
					zonaConsulta = Mayusculas(zonaConsulta)
				Mientras Que NO (zonaConsulta == "NORTE" O zonaConsulta == "SUR" O zonaConsulta == "ESTE" O zonaConsulta == "OESTE" O zonaConsulta == "CENTRO")
				ventasxzona = ventasZona(ventas, zonas, zonaConsulta)
				Escribir "La cantidad de ventas de la zona ", zonaConsulta, " es $",ventasxzona 
			"b":
				Escribir "Digite vendedor a consultar ( 1 / 2 / 3 / 4 )"
				Hacer
					leer salesConsulta
				Mientras Que NO (salesConsulta >= 1 Y salesConsulta <= 4) 
				Para i <- 0 Hasta 4 Hacer
					zonasVent = ventasVend(ventas, i, salesConsulta)
					Escribir "La cantidad de ventas para Vendedor ",salesConsulta," de la zona ", zonas[i], " es $",zonasVent
				FinPara
			"c":
				Escribir "El total de ventas de todos es $ ",ventas[5,6]
			"d":
				salir = Verdadero
		FinSegun
	
Mientras Que salir = Falso	
	
FinAlgoritmo

SubProceso llenarDatos(matriz Por Referencia, total Por Referencia,  precios Por Referencia, vendedores Por Referencia, zonas Por Referencia, n, m)
	Definir i, j, k, sum,  num Como Entero
	sum = 0
	
	
	Para j <- 0 Hasta m-1 Hacer
		Para i <- 0 Hasta n-1 Hacer
			Si j < m-1 Y i < n-1
				Escribir "Digite cantidad de ventas de ", vendedores[i] ," de la zona ", zonas[j]
				//Leer num
				num = Aleatorio(0,100)
				matriz[i,j] = num
				//total[i,j] = num * precios[j]
				sum = sum + num
				//sumventas = sumventas + (num * precios[j])
				
			SiNo
				Si i == n-1 Entonces
					matriz[i,j] = sum
					//total[i,j] = sumventas
					
					sum = 0
				FinSi
				
			FinSi
			
		FinPara
		
		sum = 0
	FinPara
	sum = 0
	
	Para i <- 0 Hasta n-1 Hacer
		//Si i < n-1 Entonces
			Para j <- 0 Hasta m-1 Hacer
				Si j < m-1
					sum = matriz[i,j] + sum
					
				SiNo
					matriz[i,j] = sum
					
				FinSi
			FinPara
			sum = 0
		//FinSi
	FinPara
FinSubProceso


SubProceso showMatrix(matriz Por Referencia, vendedores Por Referencia, zonas Por Referencia, n, m, name)
	Definir i, j, k, largo Como Entero
	Escribir SIN SALTAR  name," =             "
	
	Para i <- 0 Hasta m-1 Hacer
		Escribir Sin Saltar "["
		Para k <- 0 Hasta (15 - Longitud(zonas[i]))/2
			Escribir Sin Saltar " "
		FinPara
		Escribir Sin Saltar zonas[i]
		Para k <- 0 Hasta (16 - Longitud(zonas[i]))/2
			Escribir Sin Saltar " "
		FinPara
		Escribir Sin Saltar "]"
		
		
	FinPara
	Escribir ""	
	Para i <- 0 Hasta n-1 Hacer
		Escribir Sin Saltar vendedores[i]
		Para k <- 0 Hasta (20 - Longitud(vendedores[i]))
			Escribir Sin Saltar " "
		FinPara
		Para j <- 0 Hasta m-1 Hacer
			largo = Longitud(ConvertirATexto(matriz[i,j]))
			Escribir Sin Saltar "["
			Para k <- 0 Hasta (16 - largo)/2
				Escribir Sin Saltar " "
			FinPara
			Escribir Sin Saltar matriz[i,j]
			Para k <- 0 Hasta (15 - largo)/2
				Escribir Sin Saltar " "
			FinPara
			Escribir Sin Saltar "]"
		FinPara
		Escribir ""
	FinPara
FinSubProceso


Funcion totalsales <- ventasZona(ventas Por Referencia, zonas Por Referencia, zonaConsulta)
	Definir totalsales, i Como Entero
	Para i <- 0 Hasta 4 Hacer
		Si zonaConsulta = zonas[i]
			totalsales = ventas[4,i]
		FinSi
	FinPara
FinFuncion

Funcion vendxzona <- ventasVend(ventas Por Referencia, zona, salesConsulta)
	Definir vendxzona como Entero
	vendxzona = ventas[salesConsulta, zona]
FinFuncion
