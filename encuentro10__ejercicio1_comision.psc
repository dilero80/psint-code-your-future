// ******************** BUCLES ANIDADOS ****************
//Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
//múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
//recibe un sueldo base más un 10% extrca por comisiones de sus ventas. El gerente de la
//compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
//deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por cada venta.
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
