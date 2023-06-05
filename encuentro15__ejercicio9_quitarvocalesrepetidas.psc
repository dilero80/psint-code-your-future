Algoritmo quitar_vocales_repetidas
//	Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
//	repetidas. Al final el procedimiento mostrará la frase final.
//Por ejemplo:
//Entrada: "Habia una vez un barco"
//Salida: "Habi un vez n brco"
//	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan
//		al no estar repetidas.
	Definir frase Como Caracter
	
	
	Escribir "Digite una frase"
	Leer frase
	
	supRepetidas(frase)
	
FinAlgoritmo

SubProceso supRepetidas(frase)
	Definir i Como Entero
	Definir aflag,iflag,eflag,oflag,uflag  Como Logico
	Definir letra, frasetemp, letratemp Como Caracter
	
	frasetemp = ""
	aflag = Falso
	eflag = Falso
	iflag = Falso
	oflag = Falso
	uflag = Falso
		
	Para i <- 0 Hasta Longitud(frase) Hacer
		letra = Minusculas(Subcadena(frase,i,i))
		letratemp = Subcadena(frase,i,i)
		Si (letra == "a" Y aflag == Verdadero) O (letra == "e" Y eflag == Verdadero) O (letra == "i" Y iflag == Verdadero) O (letra == "o" Y oflag == Verdadero) O (letra == "u" Y uflag == Verdadero) Entonces
			letratemp =""
		SiNo
			
			Si (letra = "a" Y aflag = Falso)
				aflag = Verdadero
			FinSi
			Si (letra = "e" y eflag == Falso)
				eflag = Verdadero
			FinSi
			Si (letra = "i" y eflag == Falso)
				iflag = Verdadero
			FinSi
			Si (letra = "o" y oflag == Falso)
				oflag = Verdadero
			FinSi
			Si (letra = "u" y uflag == Falso)
				uflag = Verdadero
			FinSi
			
		FinSi
		frasetemp = Concatenar(frasetemp ,letratemp)
		
	FinPara
	Escribir frasetemp
FinSubProceso
