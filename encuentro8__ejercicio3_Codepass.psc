Algoritmo usercode
//	Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero
//	mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa no
//	le debe permitir continuar hasta que introduzca como c�digo 1024 y como contrase�a
//	4567. El programa finaliza cuando ingresa los datos correctos.	
	Definir code, pass Como entero
	
	Hacer
		Escribir "Ingrese codigo:"
		Leer code
	Mientras Que code <>1024
	
	Hacer
		Escribir "Ingrese contrase�a:"
		Leer pass
		
	Mientras Que pass <>4567
	
	Escribir "Datos Correctos"
FinAlgoritmo
