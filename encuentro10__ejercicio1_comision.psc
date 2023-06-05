// ******************** BUCLES ANIDADOS ****************
//Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
//m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
//recibe un sueldo base m�s un 10% extrca por comisiones de sus ventas. El gerente de la
//compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
//deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por cada venta.
Algoritmo calcularComision
	Definir sueldoBase,  valorVenta , acumuladoValorVenta Como Real
	Definir numVendedores, numVentas , i , j Como Entero
	sueldoBase = 0
	numVentas = 0
	valorVenta = 0
	acumuladoValorVenta = 0
	Escribir "Ingrese la cantidad de vendedores que desea calcular comision y salario total"
	Leer numVendedores
	
	Para i<- 1 Hasta numVendedores Con Paso 1 Hacer
			
		Escribir "Ingrese el salario base del vendedor # " i
		leer sueldoBase
		Escribir "Cuantas ventas realizo el vendedor # ?" i
		leer numVentas
		// calcular comisiones
		Para j<- 1 Hasta numVentas Con Paso 1 Hacer
			Escribir "Ingresa el valor de la venta #" j
			leer valorVenta
			acumuladoValorVenta = acumuladoValorVenta + valorVenta
		Fin Para
		Escribir "La comision del vendedor #" i " Es $" acumuladoValorVenta*.1
		Escribir "El Sueldo total del vendedor# " i " Es $" sueldoBase + acumuladoValorVenta*.1
		acumuladoValorVenta = 0
	Fin Para
	
FinAlgoritmo
