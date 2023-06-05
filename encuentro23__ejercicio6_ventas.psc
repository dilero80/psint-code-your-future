Algoritmo ventas_matriz
//	Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//	realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.
	Definir total, ventas, precios, n, m como Entero
	n = 7
	m = 6
	Dimension ventas(n,m)
	Definir productos, dias, masvendido Como Caracter
	Dimension productos(7)
	Dimension precios(7)
	Dimension dias(6)
	Dimension masvendido(6)
	Dimension total(n,m)
	productos[0] = "EARPODS"
	productos[1] = "AKG TIPO C"
	productos[2] = "BATERIA SAMSUNG"
	productos[3] = "CARGADOR APPLE"
	productos[4]= "CARGADOR SAMSUNG"
	productos[5]= "TOTAL SEMANA"
	productos[6]= "PRODUCTO MAS VENDIDO"
	precios[0] = 85000
	precios[1] = 50000
	precios[2] = 190000
	precios[3] = 140000
	precios[4] = 80000
	dias[0] = "LUNES"
	dias[1] = "MARTES"
	dias[2] = "MIERCOLES"
	dias[3] = "JUEVES"
	dias[4] = "VIERNES"
	dias[5] = "TOTAL PRODUCTO"
	
	
	llenarDatos(ventas, total, precios, productos, dias, n, m)
	
	showMatrix(ventas, productos, dias, n , m, "Ventas")
	Escribir " "
	showMatrix(total, productos, dias, n , m, "Total ")
	
	
	
FinAlgoritmo

SubProceso llenarDatos(matriz Por Referencia, total Por Referencia,  precios Por Referencia, productos Por Referencia, dias Por Referencia, n, m)
	Definir i, j, k, sum, sumventas, num, elmas, elmaspos Como Entero
	sum = 0
	sumventas = 0
	elmas = 0
	elmaspos = 0
	Para j <- 0 Hasta m-1 Hacer
		Para i <- 0 Hasta n-1 Hacer
			Si j < m-1 Y i < n-2
				Escribir "Digite cantidad de ventas de ", productos[i] ," del dia ", dias[j]
				Leer num
				matriz[i,j] = num
				total[i,j] = num * precios[j]
				sum = sum + num
				sumventas = sumventas + (num * precios[j])
				si num > elmas Entonces
					elmas = num
					elmaspos = i
				FinSi
			SiNo
				Si i == n-2 Entonces
					matriz[i,j] = sum
					total[i,j] = sumventas
					sumventas = 0
					sum = 0
				SiNo 
					Si i == n-1 Entonces
						matriz[i,j] = elmaspos
						total[i,j] = elmaspos
						elmas = 0
						elmaspos = 0
					FinSi
				FinSi
			FinSi
			
		FinPara
		elmas = 0
		elmaspos = 0
		sum = 0
	FinPara
	sum = 0
	sumventas = 0
	Para i <- 0 Hasta n-1 Hacer
		Si i < n-1 Entonces
			Para j <- 0 Hasta m-1 Hacer
				Si j < m-1
					sum = matriz[i,j] + sum
					sumventas = total[i,j] + sumventas
				SiNo
					matriz[i,j] = sum
					total[i,j] = sumventas
				FinSi
			FinPara
			sum = 0
		SiNo
			elmaspos = 0
			elmas = 0
			Para k <- 0 Hasta n-3 Hacer
				Si matriz[k, m - 1] > elmas Entonces
					elmas = matriz[k, m - 1]
					elmaspos = k
				FinSi
			FinPara
		matriz[i, m-1] = elmaspos
		total[i, m-1] = elmaspos
		FinSi
			
	FinPara
FinSubProceso


SubProceso showMatrix(matriz Por Referencia, productos Por Referencia, dias Por Referencia, n, m, name)
	Definir i, j, k, largo Como Entero
	Escribir SIN SALTAR  name," =             "
	
	Para i <- 0 Hasta m-1 Hacer
		Escribir Sin Saltar "["
		Para k <- 0 Hasta (15 - Longitud(dias[i]))/2
			Escribir Sin Saltar " "
		FinPara
		Escribir Sin Saltar dias[i]
		Para k <- 0 Hasta (16 - Longitud(dias[i]))/2
			Escribir Sin Saltar " "
		FinPara
		Escribir Sin Saltar "]"
		
		
	FinPara
	Escribir ""	
	Para i <- 0 Hasta n-1 Hacer
		Escribir Sin Saltar productos[i]
		Para k <- 0 Hasta (20 - Longitud(productos[i]))
			Escribir Sin Saltar " "
		FinPara
		Para j <- 0 Hasta m-1 Hacer
			Si i < n-1 Entonces
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
				
				
			SiNo
				Escribir Sin Saltar "["
				Segun matriz[i,j] Hacer
					0:
						Para k <- 0 Hasta (16 - Longitud(productos[0]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar productos[0]
						Para k <- 0 Hasta (15 - Longitud(productos[0]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar "]"
						
					1:
						Para k <- 0 Hasta (16 - Longitud(productos[1]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar productos[1]
						Para k <- 0 Hasta (15 - Longitud(productos[1]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar "]"
						
					2:
						Para k <- 0 Hasta (16 - Longitud(productos[2]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar productos[2]
						Para k <- 0 Hasta (15 - Longitud(productos[2]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar "]"
						
					3:
						Para k <- 0 Hasta (16 - Longitud(productos[3]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar productos[3]
						Para k <- 0 Hasta (15 - Longitud(productos[3]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar "]"
						
					4:
						Para k <- 0 Hasta (16 - Longitud(productos[4]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar productos[4]
						Para k <- 0 Hasta (15 - Longitud(productos[4]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar "]"
						
					5:
						Para k <- 0 Hasta (16 - Longitud(productos[5]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar productos[5]
						Para k <- 0 Hasta (15 - Longitud(productos[5]))/2
							Escribir Sin Saltar " "
						FinPara
						Escribir Sin Saltar "]"
						
						
				FinSegun
			FinSi
			
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	

