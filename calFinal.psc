Algoritmo calFinal
	Definir final, cal_par1, cal_par2, cal_par3, cal_exam, cal_trab Como Real
	Escribir "Digita tus tres calificaciones parciales: "
	Leer cal_par1,cal_par2, cal_par3
	
	Escribir "Digita tu calificacion del Examen Final: "
	Leer cal_exam
	
	Escribir "Digita tu calificacion del trabajo Final: "
	Leer cal_trab
	
	final = (((cal_par1 + cal_par2 + cal_par3)/3)*.55) + (cal_exam * .3) + (cal_trab *.15)
	
	Escribir "Tu nota es:" , final
	
	
FinAlgoritmo
