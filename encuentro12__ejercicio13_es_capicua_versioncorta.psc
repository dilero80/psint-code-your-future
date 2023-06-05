Funcion capicua <- esCapicua ( nro )
	Definir capicua Como Logico
	Definir nroOriginal, aux, acumulador Como Entero
	aux = nro
	nroOriginal = nro
	acumulador = 0
	
	Mientras nro > 0 Hacer
		aux = nro % 10
		nro = trunc(nro / 10) 
		acumulador = acumulador * 10 + aux
	Fin Mientras
	
	capicua = nroOriginal == acumulador
		
Fin Funcion
	
Algoritmo sin_titulo
	Definir nro, aux, acumulador Como Entero
	
	Escribir "Ingrese un numero para saber si es capicua: "
	leer nro
	
	Escribir esCapicua(nro)
		
FinAlgoritmo

