Algoritmo cantidaddigitos
//	Escribir un programa que lea un n�mero entero y devuelva el n�mero de d�gitos que
//	componen ese n�mero. Por ejemplo, si introducimos el n�mero 12345, el programa
//		deber� devolver 5. Calcular la cantidad de d�gitos matem�ticamente utilizando el operador
//	de divisi�n. Nota: recordar que las variables de tipo entero truncan los n�meros o
	//		resultados.
	
	Definir num, cont Como Entero
    
    Escribir "Por favor, ingrese un numero entero:"
    Leer num
    
    cont <- 0
    
    Mientras num > 0 Hacer
		num <-  trunc(num / 10)
        cont <- cont + 1
    Fin Mientras
    
    Escribir "El numero que usted ingres� tiene ", cont, " digitos."
	
FinAlgoritmo
