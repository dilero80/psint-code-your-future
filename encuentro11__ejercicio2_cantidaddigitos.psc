Algoritmo cantidaddigitos
//	Escribir un programa que lea un número entero y devuelva el número de dígitos que
//	componen ese número. Por ejemplo, si introducimos el número 12345, el programa
//		deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
//	de división. Nota: recordar que las variables de tipo entero truncan los números o
	//		resultados.
	
	Definir num, cont Como Entero
    
    Escribir "Por favor, ingrese un numero entero:"
    Leer num
    
    cont <- 0
    
    Mientras num > 0 Hacer
		num <-  trunc(num / 10)
        cont <- cont + 1
    Fin Mientras
    
    Escribir "El numero que usted ingresó tiene ", cont, " digitos."
	
FinAlgoritmo
