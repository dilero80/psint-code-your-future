Funcion multiplex <- EsMultiplo (num1, num2)
	Definir multiplex Como Logico
	Si num1 % num2 = 0
		multiplex = Verdadero
	SiNo
		multiplex = Falso
	FinSi
FinFuncion

Algoritmo esmultiplo1de2
//	Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//	que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
	//		múltiplo del segundo, sino es múltiplo que devuelva falso.	
	Definir num1, num2 Como Entero
	Escribir "Digite dos numeros"
	Leer num1, num2
	
	Escribir "El numero ", num1, " es multiplo de ", num2, " es ", EsMultiplo(num1, num2)
	
FinAlgoritmo
