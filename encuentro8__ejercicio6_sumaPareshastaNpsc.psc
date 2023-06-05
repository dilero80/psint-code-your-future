Algoritmo suma_n_pares
	Definir n, sum, cont Como Entero
	cont = 0
	sum = 0
	
	Escribir "Digite la cantidad de numeros pares que desea sumar"
	Leer n
	
	Hacer
		cont = cont + 1
		
		Si cont % 2 = 0 Entonces
			sum = sum + cont
		FinSi
		
	Mientras Que NO (cont = n)
	
	
	Escribir "La suma de numeros pares hasta ",n," es ",sum
	
	
FinAlgoritmo
