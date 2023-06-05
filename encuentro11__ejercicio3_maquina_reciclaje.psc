Algoritmo maquina_reciclaje
//	Necesitamos crear un sistema para una máquina de reciclaje de botellas automática. Dicha
//		máquina nos pagará dinero por la cantidad de plástico reciclado. Tenemos que ingresar
//		nuestro usuario y contraseña para que se nos cargue el saldo por sistema a nuestra
//			cuenta.
	
	Definir user, pass, res  Como Caracter
	Definir login Como Logico
	Definir cont, op, botellas, peso, pesoTot, saldo, saldoTot, i Como Entero
	
	login = Falso
	cont = 0
//Condición simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//		verdadero, validaremos si la contraseña es "caramelosDeLimon". Si la contraseña es
//				correcta haremos que una variable llamada Login sea verdadera.
	
		
			
	
					
	saldoTot = 0
	cont = 0
	login = Falso
	Escribir 'Ingrese su usuario'
	Leer user
	Si user == 'Albus_D'
		Mientras cont < 3 y no(login)
			Escribir 'Ingrese su contraseña'
			Leer pass
			Si pass == 'caramelosDeLimon'
				login = Verdadero
			FinSi
			cont = cont + 1
		FinMientras
	FinSi
	
	Mientras login
		Escribir '1. Ingresar botellas'
		Escribir '2. Consultar saldo'
		Escribir '0. Salir'
		Leer op
		
		Si op == 1
			
			Escribir 'Ingrese cantidad de botellas'
			Leer botellas
			
			saldo = 0
			pesoTot = 0
			Para i = 1 Hasta botellas Hacer
				peso = Aleatorio(100, 3000)
				pesoTot = pesoTot + peso
				
			FinPara
			
			Si pesoTot <= 500
				saldo = saldo + 50
			SiNo
				Si pesoTot > 500 y pesoTot <= 1500
					saldo = saldo + 125
				SiNo
					saldo = saldo + 200
				FinSi
			FinSi
			Escribir 'Se le ofrece $', saldo, '. Acepta la oferta. (S/N)'
			Leer res
			res = Mayusculas(res)
			Si res == 'S'
				saldoTot = saldoTot + saldo
				Escribir ''
			SiNo
				Escribir 'Devolviendo material'
				Escribir ''
			FinSi
		SiNo
			Si op == 2
				Escribir 'Su saldo total es de $', saldoTot
				Escribir ''
			SiNo
				Si op == 0
					login = Falso
				SiNo
					Escribir 'ERROR. No ingreso una opcion valida'
				FinSi
			FinSi
		FinSi
		
	FinMientras
	
	
FinAlgoritmo
		
			

		
		
		
		
		
	
	
	
	
	
