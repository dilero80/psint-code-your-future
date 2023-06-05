Funcion digit <- PasaraDigito(num)
	Definir digit, i, temp Como Entero
//	digit= 0
//	Para i <-0 Hasta 2 Hacer
//		
//		digit= num + ((num(i) -  48)*(10^i))
//		
//	FinPara
	digit= ConvertirANumero(num)
	
	
FinFuncion
Algoritmo leo_num_texto
//	Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).
	Definir num Como Caracter
	Definir num1 Como Entero
	Escribir "Digite un numero de maximo 3 digitos"
	Leer num
	
	num1 = PasaraDigito(num)
	Escribir num1
FinAlgoritmo
