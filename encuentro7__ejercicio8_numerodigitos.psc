Algoritmo sin_titulo
//	Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero positivo sin
//convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//		investigar la funci�n trunc().
	Definir num,contador Como Entero;
	Escribir "Digite un numero"
	leer num;
	
	contador=0
	
	Mientras num>=1 Hacer
		num=trunc(num/10);
		contador=contador+1
	Fin Mientras
	
	Escribir "Numero de digitos del numero es ", contador
FinAlgoritmo
