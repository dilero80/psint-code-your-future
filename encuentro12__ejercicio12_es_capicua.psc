Funcion sicapicua <- Capicua(num)
	Definir sicapicua Como Logico
	Definir temp, temp1,  cont, largo, cifraInicial, cifraFinal, i Como Entero
	
	cont = 0
	temp = num
	temp1 = num
	largo = 0
	cifraInicial = temp % 10
	
	Hacer
		temp = trunc(temp / 10)
		cont = cont + 1
	Mientras Que No temp < 10
	cont = cont + 1 
	cifraFinal = temp % 10
	sicapicua = (cifraInicial == cifraFinal)
	largo = cont
	//Escribir "el largo es ", largo
	temp = num
	
	Para i <- 1 Hasta trunc(largo/2) Hacer
		cifraInicial = temp % 10 
		Hacer
			
			temp = trunc(temp / 10)
			 
		Mientras Que No (temp < 10 )
		cifraFinal = temp % 10 
		cont = cont - 1
		
		Si sicapicua Entonces
			temp1 = trunc(temp1 / 10)
			temp1 = temp1 % (10^(cont-1))
			temp = temp1
		SiNo
			sicapicua = Falso
			
		FinSi
		
	FinPara
FinFuncion

Algoritmo es_capicua
//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//	capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//			transformar el numero a cadena para realizar el ejercicio.
	Definir num Como Entero
	
	Escribir "Digite un numero"
	Leer num
	
	
	Escribir "El numero es Capicua es: ",Capicua(num)
	
FinAlgoritmo
