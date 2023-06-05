Algoritmo encuentro6EjercicioExtra2
	
	//Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
	//10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
	//mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
	//debe cobrar al cliente e imprimirlo por pantalla.
	
	definir mes Como Caracter
	definir importe como real
	
	Escribir "Ingrese el mes:"
	leer mes
	Escribir "Ingrese monto:"
	leer importe
	
	si (mes == "septiembre" o mes == "octubre" o mes = "noviembre") Entonces
		escribir "El monto es ", importe*0.9
	SiNo
		escribir "El monto es ", importe
	FinSi
	
FinAlgoritmo