Algoritmo arrivalTime
	Definir departure_hh, departure_mm, departure_ss, arrival_hh, arrival_mm, arrival_ss, time_elapsed Como Entero
	arrival_hh = 0
	arrival_mm = 0
	arrival_ss = 0
	Escribir "Digite la hora de salida:" 
	Leer departure_hh
	Escribir "Digite minutos de salida:" 
	Leer departure_mm
	Escribir "Digite segundos de salida:" 
	Leer departure_ss
	
	Escribir "Cuanto tiempo tardo en segundos:"
	Leer time_elapsed
	
	arrival_ss = (departure_ss + trunc((time_elapsed % 3600)%60))
	Si arrival_ss > 60
		arrival_ss = arrival_ss - 60
		arrival_mm = arrival_mm + 1
	FinSi
	
	arrival_mm = arrival_mm + (departure_mm + trunc((time_elapsed % 3600)/60))
	Si arrival_mm > 60
		arrival_mm = arrival_mm - 60
		arrival_hh = arrival_hh + 1
	FinSi
	arrival_hh = arrival_hh + (departure_hh + trunc(time_elapsed/3600))
	Escribir "Hora de llegada:", arrival_hh  
	Escribir "Minutos de llegada:", arrival_mm	  
	Escribir "Segundos de salida:", arrival_ss
	
	
	
	
FinAlgoritmo
