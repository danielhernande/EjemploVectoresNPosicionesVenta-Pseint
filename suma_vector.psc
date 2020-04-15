Proceso suma_arreglo
	
	definir acum , t,i como numerico;
	definir arreglo como numerico;
	
	Dimension arreglo[200];
	
	acum=0;
	escribir " El tamanio del vector";
	leer t;
	
	para i=1 hasta t con paso 1 Hacer
		escribir " Ingrese los datos del vector";
		
		leer arreglo[i];
		
		acum= acum+arreglo[i];
		
	FinPara
	
	para i=1 hasta t con paso 1 hacer 
		
		escribir "La suma de : ", arreglo[i];
	FinPara
	
	escribir "Es : ",acum;
	
FinProceso
