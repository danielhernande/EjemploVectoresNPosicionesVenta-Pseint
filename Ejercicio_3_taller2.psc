//3. Crear dos vectores uno que almacene 2 nombres y otro que almacene 3 números.
Proceso ejercicio_3_taller1
	
	Definir vectorNombre , nom como texto;
	Definir vectorNum ,num, i , j como numerico;
	
	Dimension vectorNombre[2];
	Dimension vectorNum[3];

	
	Escribir "INGRESO DE DATOS A VECTOR.";
	Escribir "";
	Escribir "Favor ingrese 2 Nombres :";
	Escribir "";

	
	para j=0 hasta 1 con paso 1 hacer
		
		Escribir "Ingrese un Nombre ";
		leer nom;
		vectorNombre[j] = nom;
	FinPara
	Limpiar Pantalla;
	Escribir "";
	Escribir "LOS DATOS INGRESADOS SON:";
	Escribir "";
	
	para j=0 hasta 1 con paso 1 Hacer
		
		Escribir  vectorNombre[j];
		
	FinPara
	Escribir "";
	
	Escribir "INGRESO DE NÚMEROS AL VECTOR.";
	Escribir "";
	Escribir "Favor ingrese 3 Números :";
	Escribir "";
	
	i=0;
	para i=0 hasta 2 con paso 1 hacer
		
		Escribir "Ingrese un Número: ";
		leer num;
		vectorNum[i] = num;
	FinPara
	
	Escribir "";
	Escribir "LOS DATOS INGRESADOS SON:";
	Escribir "";
	
	para i=0 hasta 2 con paso 1 Hacer
		
		Escribir  vectorNum[i];
		
	FinPara
	
FinProceso
