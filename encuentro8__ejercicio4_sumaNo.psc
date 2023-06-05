Algoritmo PidaEntero
//Se debe realizar un programa que:
//	1o) Pida por teclado un número (entero positivo).
//	2o) Pregunte al usuario si desea introducir o no otro número.
//		3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//		4o) Muestre por pantalla la suma de los números introducidos por el usuario.
	Definir num Como Caracter 
	Definir sum Como Entero
	sum = 0
	Hacer
		Escribir "Digite un numero, (para salir digite n/N)"
		Leer num
		
		Si NO(num == 'n' O num == 'N')
			sum = sum + ConvertirANumero(num)
			
		FinSi
		
	Mientras Que NO(num == "n" O num == "N")
	
	
	Escribir "La suma da:" , sum
	
FinAlgoritmo
