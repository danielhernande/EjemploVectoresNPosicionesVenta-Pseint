//4. Sumar todos los elementos de un vector de tamaño 5.
Proceso ejercicio_4_taller1
	
	Definir acum , i ,arreglo , num como numerico;
	
	Dimension arreglo[5];
	acum=0;
	i=0;
	Escribir "INGRESO DE 5 NÚMEROS A VECTOR";
	Escribir "";
	
	para i=0 hasta 4 con paso 1 Hacer
		
	Escribir "Ingrese por favor el Número: ",i+1;
	leer arreglo[i];
	
	acum=acum+arreglo[i];
	
	FinPara
	
	Limpiar Pantalla;
	para i=0 hasta 4 con paso 1 hacer 
		escribir "La suma de : ", arreglo[i];
	FinPara

	escribir "Es : ",acum;
	
FinProceso
