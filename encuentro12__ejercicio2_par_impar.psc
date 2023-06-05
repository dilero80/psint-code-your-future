Funcion par <- Espar(num)
	Definir par Como Logico
	Si num % 2 == 0 Entonces
		par = Verdadero
	SiNo
		par = Falso
	FinSi
FinFuncion


Algoritmo par_impar
	Definir num Como Entero
	
	Escribir "Digite un numero"
	Leer num
	
	Si Espar(num) Entonces
		Escribir "Es Par"
	SiNo
		Escribir "Es Impar"
	FinSi
	
	
FinAlgoritmo
