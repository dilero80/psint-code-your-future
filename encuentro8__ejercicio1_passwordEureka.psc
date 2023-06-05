Algoritmo passwordEureka
	Definir pass Como Caracter
	Definir cont Como Entero
	cont = 0
	
	Hacer
		Escribir "Ingrese la clave:"
		Leer pass
		cont = cont + 1
	Mientras Que NO(pass =="eureka" O cont==3) 
	
	Si cont == 3 Entonces
		Escribir "Agostaste los 3 intentos"
	SiNo
		Escribir "Has entrado correctamente"
	FinSi
	
FinAlgoritmo
