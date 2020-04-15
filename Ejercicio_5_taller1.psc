//5. Sumar los elementos de dos vectores, cada uno de 5 posiciones 
//y guardar el resultado en otro vector en 1 posición.

Proceso ejercicio_5_taller1
	
	Definir suma, num1, num2,num, i como numerico;
	
	dimension suma[1];
	dimension num1[5];
	dimension num2[5];
	
	Escribir "INGRESO DE 5 NÚMEROS A VECTOR";
	Escribir "";
	Escribir "Favor ingrese los Números para el Primer Vector:";
	Escribir "";
	i=0;
	para i=0 hasta 4 con paso 1 Hacer// ingreso de datos para el primer vector llamado num1
		
		Escribir "Ingrese por favor el Número: ",i+1;
		leer num;
		
		num1[i]=num;
	
	FinPara
	
	Escribir "";
	Escribir "Favor ingrese los Números para el Segundo Vector:";
	Escribir "";
	i=0;
	para i=0 hasta 4 con paso 1 Hacer// ingreso de datos para el segundo vector llamado num2
		
		Escribir "Ingrese por favor el Número: ",i+1;
		leer num;
		
		num2[i]=num;
		
	FinPara
	
	
	Escribir "";
	Escribir "Suma de las respectivas Posiciones del Vector : ";
	Escribir "";
	Escribir "";
	i=0;
	para i=0 hasta 4 con paso 1 Hacer// suma las respectivas posiciones de los vectores.(num1[0] + num2[0]).
		
		suma[0]=num1[0]+num2[0]+num1[1]+num2[1]+num1[2]+num2[2]+num1[3]+num2[3]+num1[4]+num2[4];
	FinPara
	//muestra el resultado de la suma para la respectiva posición de los 2 vectores (num1 y num2).
	Escribir "La suma de la posición [0] Es :",suma[0];
	
	
FinProceso
