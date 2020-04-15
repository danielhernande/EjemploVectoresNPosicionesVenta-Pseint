//2.	Crear un vector de 5 posiciones y llénelo con los números que el usuario desee.
Proceso ejercicio_2_taller1
	
	definir vectorValor ,num ,i como numerico;
	
	Dimension vectorValor[5];
	
	Escribir "INGRESO DE DATOS A VECTOR.";
	Escribir "";
	Escribir "Favor ingrese 5 Números:";
	Escribir "";
	para i=0 hasta 4 con paso 1 hacer
		
		Escribir "Ingrese el Número ",i+1;
		leer num;
		vectorValor[i] = num;
	FinPara
	Escribir "";
	Escribir "VALOR DE DATOS INGRESADOS.";
	Escribir "";
	Escribir "";
	Escribir "Los Valores Ingresados Son: ";
	Escribir "";
	para i=0 hasta 4 con paso 1 Hacer
		
		Escribir  vectorValor[i];
		
	FinPara
	
	
FinProceso
