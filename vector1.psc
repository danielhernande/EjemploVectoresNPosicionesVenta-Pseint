// relaizar un algoritmo que permita crear un vector de 3 posiciones 
//y pueda leer los datos del vector.
Proceso ejemplo_vector1
	
	definir nombre como texto; // definimos el tipo de dato de la variable que va a ser vector
	definir i como numerico;
	
	dimension nombre[5];// se indica la variable que va a ser vector
	
	
	nombre[0]= "Sigifredo Hern�ndez";
	nombre[1]="jennifer Hern�ndez";
	nombre[2] = "Daniel Hern�ndez";
	nombre[3]="Stella Salazar";
	nombre[4]="Sofia Quiceno";

	
	
	//escribir "el nombre de la primera  posici�n del vector es: ",nombre[0];
	//escribir"";
	//esperar 2 segundos;
	//escribir "el nombre de la segunda  posici�n del vector es: ",nombre[1];
	//escribir"";
	//esperar 2 segundos;
	//escribir "el nombre de la tercera  posici�n del vector es: ",nombre[2];
	//escribir"";
	//esperar 2 segundos;
	//escribir "el nombre de la cuarta  posici�n del vector es: ",nombre[3];
	//esperar 2 segundos;
	
	para i=0 hasta 4 con paso 1 hacer
		
		Escribir "El nombre en la primera posici�n " ,i ," es : ",nombre[i];
		
		
		
	FinPara
	
	
FinProceso
