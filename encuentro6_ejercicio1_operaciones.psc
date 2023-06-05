Algoritmo menuMat
	Definir operacion Como Caracter
	Definir num1, num2 Como Entero
	
	Escribir "Ingresa una operacion:"
	Escribir "para Suma digita S"
	Escribir "para Resta digita R"
	Escribir "para Multiplicacion digita M"
	Escribir "para Division digita D"
	Leer operacion
	
	Escribir "Digita 2 numeros de 2 digitos:"
	Leer num1, num2
	
	operacion = Minusculas(operacion)
	Si Longitud(ConvertirATexto(num1)) > 2 O Longitud(ConvertirATexto(num2)) > 2 Entonces
		Escribir "Deben ser numeros de 2 digitos maximo"
	SiNo
		Segun operacion Hacer
		"s":
			Escribir "El resultado es: ",num1 + num2
		"r":
			Escribir "El resultado es: ",num1 - num2
		"m":
			Escribir "El resultado es: ",num1 * num2
		"d":
			Escribir "El resultado es: ",num1 / num2
		De Otro Modo:
			Escribir "No es una opcion valida"
				
		FinSegun
	FinSi
	
	
FinAlgoritmo
