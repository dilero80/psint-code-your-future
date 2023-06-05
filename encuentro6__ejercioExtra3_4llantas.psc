Algoritmo llantas
//	Si se compran menos de cinco llantas el precio es de $3000 cada una, si se compran
//			entre 5 y 10 el precio es de $2500, y si se compran más de 10 el precio es $2000.
//				Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las
//				llantas que compra, y el monto total que tiene que pagar por el total de la compra.
	Definir qtyllantas Como Entero
	
	Escribir "Cuantas llantas vas a comprar:"
	Leer qtyllantas
	
	
	Si qtyllantas > 0 Y qtyllantas < 5 Entonces
		Escribir "Cada llanta te vale $3000 para un total de: $ ", qtyllantas * 3000
	SiNo
		Si qtyllantas > 4 Y qtyllantas < 11 Entonces
			Escribir "Cada llanta te vale $2500 para un total de: $ ", qtyllantas * 2500
		FinSi
		Si qtyllantas > 10 Entonces
			Escribir "Cada llanta te vale $2000 para un total de: $ ", qtyllantas * 2000
		FinSi

	FinSi
	
FinAlgoritmo
