Algoritmo usercode
//	Realizar un programa que solicite al usuario su código de usuario (un número entero
//	mayor que cero) y su contraseña numérica (otro número entero positivo). El programa no
//	le debe permitir continuar hasta que introduzca como código 1024 y como contraseña
//	4567. El programa finaliza cuando ingresa los datos correctos.	
	Definir code, pass Como entero
	
	Hacer
		Escribir "Ingrese codigo:"
		Leer code
	Mientras Que code <>1024
	
	Hacer
		Escribir "Ingrese contraseña:"
		Leer pass
		
	Mientras Que pass <>4567
	
	Escribir "Datos Correctos"
FinAlgoritmo
