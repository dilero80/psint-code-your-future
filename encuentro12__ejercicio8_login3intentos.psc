Funcion logged <- Login(user, pass, cont Por Referencia)
	Definir logged	Como Logico
	
	Si (user == "usuario1" Y pass == "asdasd") Entonces
		logged = Verdadero
	SiNo
		cont= cont +1
		logged = Falso
		
	FinSi
FinFuncion


Algoritmo login_3intentos
//	Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
//	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd".
//	Adem�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos
//	solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.
	Definir user, pass Como Caracter
	Definir cont Como Entero
	Definir log Como Logico
	cont = 0
	Hacer
		Escribir "Digite su usuario"
		Leer user
		Escribir "Digite su password"
		Leer pass
		log = Login(user,pass, cont)
		Escribir "En el intento ",cont," su Login fue ", log 
	Mientras Que (NO log Y cont < 3)  
	
	
	
FinAlgoritmo
