Algoritmo media_par_impar
	Definir num, par, sumapar, sumaimpar, impar, cont Como Entero
	cont = 0
	par = 0 
	impar = 0
	sumaimpar = 0
	sumapar = 0
	Hacer
		cont = cont +1 
		Escribir "Digite un numero"
		Leer num
		Si num % 2 == 0 Entonces
			par = par + 1 
			sumapar = sumapar + num
		SiNo
			impar = impar + 1
			sumaimpar = sumaimpar + num
			
			
		FinSi
	Mientras Que NO cont ==10
	Escribir "Media de numeros pares ingresados es igual a " , sumapar/par
	Escribir "Media de numeros impares ingresados es igual a " , sumaimpar/impar
	
	
FinAlgoritmo
