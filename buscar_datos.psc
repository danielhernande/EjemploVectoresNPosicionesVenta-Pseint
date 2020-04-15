Proceso buscar_vector
	
	definir i,j,z como numerico;
	definir datos ,buscar como texto;
	
	Dimension datos[4];
	i=0;
	
	//captura de datos
	para i=0 hasta 3 con paso 1 hacer
		
		escribir"Digite un valor para la Posición :" ,i;
		leer datos[i];	
	FinPara
	
	// proceso para mostrar e imprimir datos 
	
	para j=0 hasta 3 con paso 1 Hacer
		escribir"El valor guardado en la posición : " , j, " es :",datos[j];
	FinPara
	
	//para la busqueda
	escribir "Favor ingrese dato a Buscar en el vector: ";
	leer buscar;
	
	para z = 0 hasta 3 con paso 1 hacer 
		si buscar = datos[z] entonces
			Escribir "El valor guardado esta en la posición : ", z;
		FinSi
	FinPara
	
	
FinProceso