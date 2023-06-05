Algoritmo apocalipsis_zombie
	Definir genetics, sequence Como Caracter
	Definir n Como Entero
	Definir GenZ, letraOk Como Logico
	
	
//	Escribir "Digite Secuencia"
//	Hacer
//		Leer sequence
//		Si Longitud(sequence) <> 9 O Longitud(sequence) <> 16 O Longitud(sequence) <> 1369
//			Escribir "Digita una cadena valida"
//		FinSi
//	Mientras Que Longitud(sequence) <> 9 O Longitud(sequence) <> 16 O Longitud(sequence) <> 1369
	Hacer
		sequence = "ACCDBBADDDCCBACABDCBDCBADBDACBBBBDAABBCCBAACCABDBDCDDABDBDADAAACBBBBCDDDCBBBDDCDABBDDABDBDBBACADCDAAADACDDDACCDCACDDABACDCCCAABDDCCACDADDBCBAACCDBCBCDDDCAACCBAADCBBBCDCBBACBDCCDDADBABCAABBACABDCAACCBDADDCAAACCDBDBBCDDDDDACBCDDADDDDCBADADBDCADDABBCDAACBCCDDDADDADADAACCACDCDDABCCCADABBACDACCAADDBCBCCDADBCCADAAABDDDAABBABCADDCCAADDCDDCDCACBADADACADDAADCBDBCDBDDACDCBCDCCABBDCBACDDACCCDADBCADCACAAABBBCADDDDBCBACDBDAAADDDACCDACBBBADACCCDCACCBACDADBCBBDADACABAACBCCADDCCCCACCCCADBCCDAADCAABBABAADDBDADDABABCCABBCDDACCADAAADBBCCDBADCADCBBDADACCDDBCAAABBBDCAAAACBAADBABBABACDDBBCBDCDCADABABBDADCBADAACDBCBDABADBCBADCACADAABCDDCABACDDBDCBCBDCAAACBDABBCACBACCCBACACDCADBDCDCDDCAACDBDCBACDBBDAABDBBCBAAADBABDBAACAAACDCDAAABABDDDBCACADCBBAADCCDABCCCBBCACCBAABDAADDDCDACDDDBCDCCBABDABACCDCDCDABAABCABBADADCBDDACDDCDDCDACDADADCACBCDABABDDCCDBCCDABACDBDAABDBDDDBADDBACABDCDDBACDDBBDDBBACBCCAACABBDADDBCAACCBCCDADDBCAADDADCCCBAAABABBBBBCABAACADBCBBABACCABCDAABADCCCCDCCADDDCCABBDDDAAADDADACBBBCBDAADACABABBAACCCADADDABDBCADDDCCDBBCCBCDCDBDDDDCACDACDBBBDDBADDACADDADDABCACDCBBADDABBBDCBBDCDAABADDDDDBCACCCCAAACBCBCDBACCCDACCCDBCBDCBADBCDDACCDBDBDBCAAACDDCBAABDBCAADCADDBABABDCBCBCBBBCACBCADDCAAAAAACBBACBBCCACBDCDDDDADCAAACBABDDBDADBAADCBABDDBCDBABDBAADDDBACBBBCCCDBDDBDDAADBBADADDDCBCACBABCDBBABAADABCABCDBACBBBCDBADADDBDCBDABBDDDCDDCCACDCBDCADABAABCDCAACCDDBADBDBCDACAAACBCADCCCBAC"
		Si NO(Longitud(sequence) = 9 O Longitud(sequence) = 16 O Longitud(sequence) = 1369)
			Escribir "Digita una cadena valida"
		FinSi
		letraOk = comproletra(sequence)
		Si NO letraOk Entonces
			Escribir "Es correcto"
		SiNo
			Escribir "Hay letras erradas"
			
		FinSi
	Mientras Que NO(Longitud(sequence) = 9 O Longitud(sequence) = 16 O Longitud(sequence) = 1369)
	
	
	
	n= raiz(Longitud(sequence))
	Escribir (n)
	Dimension genetics(n,n)
	
	Llenarmatrix(genetics, n, sequence)
	showMatrix(genetics, n, n, "Secuencia")
	
	GenZ=comproZombie(genetics, n)
	
	Si GenZ Entonces
		Escribir "Si tiene el Gen Z"
	SiNo
		Escribir "Es Zombie"
	FinSi
	
	
	
	
	
FinAlgoritmo


SubProceso Llenarmatrix(matriz Por Referencia, n, secuencia)
	Definir i, j, conta Como Entero
	conta = 0
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta n-1 Hacer
			matriz(i,j) = Subcadena(secuencia,conta,conta)
			conta = conta + 1
		FinPara
	FinPara
FinSubProceso

Funcion esZombie <- comproZombie(matriz Por Referencia, n)
	Definir i, conta Como Entero
	Definir cadenatemp Como Caracter
	Definir esZombie Como Logico
	esZombie = Verdadero
	conta = 0
	Hacer
		Escribir "Diagonal 1"
		Para i <- 0 Hasta n-1 Hacer
			
			Escribir Sin Saltar matriz(i,i)
			
			Si i = 0 Entonces
				cadenatemp = matriz(i,i)
			SiNo
				Si cadenatemp <> matriz(i,i)
					esZombie = Falso
				FinSi
			FinSi
			conta = conta + 1
		FinPara
		Escribir ""
		Escribir "Diagonal 2"
		Para i <- 0 Hasta n-1 Hacer
			Escribir Sin Saltar matriz(i,(n-1)-i)
			
			Si i = 0 Entonces
				cadenatemp = matriz(i,(n-1)-i)
			SiNo
				Si cadenatemp <> matriz(i,(n-1)-i)
					esZombie = Falso
				FinSi
			FinSi
			conta = conta + 1
			
		FinPara
		Escribir ""
		
	Mientras Que NO(esZombie O conta = n*2)
	
	
	
FinSubProceso

SubProceso showMatrix(matriz Por Referencia, n,m, name)
	Definir i, j Como Entero
	Para i <- 0 Hasta n-1 Hacer
		Si i == 0 Entonces
			Escribir Sin Saltar name," = "
			Escribir ""
			Escribir Sin Saltar "    "
		SiNo
			Escribir Sin Saltar "    "
			
		FinSi
		Para j <- 0 Hasta m-1 Hacer
			Escribir Sin Saltar "[  " ,matriz[i,j], "  ]"
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion resp <- comproletra(muestra)
	Definir resp Como Logico
	Definir letra Como Caracter
	Definir i Como Entero
	
	para i <- 0 Hasta (Longitud(muestra)-1) Hacer
		letra= Subcadena(muestra,i,i)
		Si letra<>"A" Y letra<>"B" Y letra<>"C" Y letra<>"D" Entonces
			Escribir letra
			resp=Falso
			
			i=Longitud(muestra)-1
		FinSi
	FinPara
FinFuncion
	