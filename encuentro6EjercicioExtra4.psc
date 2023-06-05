Algoritmo encuentro6EjercicioExtra4
	
	//La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema
	//de tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro
	//de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
	//regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
	//cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
	//40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
	//de $5,20 el minuto de uso. Realice un programa que permita registrar esa información y
	//el total a pagar por el cliente.
	
	definir tiempoHoras,naftaGastada,total Como real
	
	Escribir "Ingrese el tiempo en horas que ha pasado:"
	leer tiempoHoras
	Escribir "Ingrese la cantidad de nafta gastada en litros:"
	leer naftaGastada
	
	
	si (tiempoHoras < 2) Entonces
		escribir "Debes pagar 400$"
	SiNo
		total = (tiempoHoras*60)*5.20 + 40*naftaGastada
		Escribir "Debes pagar ",total,"$"
	FinSi
	
FinAlgoritmo
