Proceso buscar_vector
	
	definir i,j,z, buscar como numerico;
	definir datos como numerico;
	
	Dimension datos[4];
	i=0;
	buscar=0;
	//captura de datos
	para i=0 hasta 3 con paso 1 hacer
		
		escribir"Digite un valor para la Posición :" ,i;
		leer datos[i];	
	FinPara
	
	// proceso para mostrar e imprimir datos 
	
	para j=3 hasta 1 con paso -1 Hacer
		escribir"El valor guardado en la posición : " , j, " es :",datos[j];
	FinPara
	
	//para la busqueda
	escribir "Favor ingrese dato a Buscar en el vector: ";
	leer buscar;
	
	para z = 1 hasta 3 con paso 1 hacer 
		si buscar=datos[z] entonces
			Escribir "El valor guardado esta en la posición : ", z;
			z=3;
		FinSi
	FinPara
	
	
FinProceso
