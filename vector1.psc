// relaizar un algoritmo que permita crear un vector de 3 posiciones 
//y pueda leer los datos del vector.
Proceso ejemplo_vector1
	
	definir nombre como texto; // definimos el tipo de dato de la variable que va a ser vector
	definir i como numerico;
	
	dimension nombre[5];// se indica la variable que va a ser vector
	
	
	nombre[0]= "Sigifredo Hernández";
	nombre[1]="jennifer Hernández";
	nombre[2] = "Daniel Hernández";
	nombre[3]="Stella Salazar";
	nombre[4]="Sofia Quiceno";

	
	
	//escribir "el nombre de la primera  posición del vector es: ",nombre[0];
	//escribir"";
	//esperar 2 segundos;
	//escribir "el nombre de la segunda  posición del vector es: ",nombre[1];
	//escribir"";
	//esperar 2 segundos;
	//escribir "el nombre de la tercera  posición del vector es: ",nombre[2];
	//escribir"";
	//esperar 2 segundos;
	//escribir "el nombre de la cuarta  posición del vector es: ",nombre[3];
	//esperar 2 segundos;
	
	para i=0 hasta 4 con paso 1 hacer
		
		Escribir "El nombre en la primera posición " ,i ," es : ",nombre[i];
		
		
		
	FinPara
	
	
FinProceso
