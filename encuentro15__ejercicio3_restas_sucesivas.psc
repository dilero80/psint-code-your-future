Algoritmo restas_sucesivas
//	Realizar un procedimiento que permita realizar la divisi�n entre dos n�meros y muestre el
//	cociente y el resto utilizando el m�todo de restas sucesivas.
//	El m�todo de divisi�n por restas sucesivas consiste en restar el dividendo con el divisor hasta
//	obtener un resultado menor que el divisor, este resultado es el residuo, y el n�mero de restas
//realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
	
	Definir num, div Como Entero
	Escribir "Digite dos numeros, el primero debe ser mayor que el segundo "
	Hacer 
		Leer num, div 
	Mientras Que num < div
		
	
	
	RestasSuc(num, div)
	
FinAlgoritmo


SubProceso RestasSuc(num Por Valor, div Por Valor)
	Definir resta , residuo Como Entero
	resta = 0
	residuo = num
	Hacer
		residuo = residuo - div
		resta = resta +1 
		Escribir num," - ", div, " = ", residuo
	Mientras Que residuo > div
	
	Escribir "Dado que ", residuo," es menor que ", div, " entonces: el residuo es ", residuo," y el conciente es ",resta
	
	
FinSubProceso
	