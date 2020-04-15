//Realizar un algoritmo que permita crear un vector de 7 posiciones
//y pueda leer los datos del vector.

Proceso vector1
	
	Definir nombre como Texto; //Definir el tipo de dato la variable que va a ser vector.
	Definir i como Numerico;
	Definir numero1 como numerico;
	Definir numero2, suma como Numerico;
	
	
	Dimension nombre[7]; //Se indica a la variable que va a ser un vector.
	
	nombre[0] = "Juana";
	nombre[1] = "Fulano";
	nombre[2] = "Pedro";
	nombre[3] = "Doña Marina";
	nombre[4] = "Don ramón";
	nombre[5] = "Señor barriga";
	nombre[6] = "Doña Cleotilde";
	
	Dimension numero1[1];
	Dimension numero2[1];
	
	numero1[0] = 5;
	numero2[0] = 3;
//	Escribir "El nombre en la primera posición del vector es ", nombre[0];
//	Escribir "El nombre en la segunda posición del vector es ", nombre[1];
//	Escribir "El nombre en la tercera posición del vector es ", nombre[2];
//	Escribir "El nombre en la cuarta posición del vector es ", nombre[3];
	
	
	
	suma = numero1[0] + numero2[0];
	
	Para i=0 hasta 6 Con Paso 1 Hacer
		Escribir nombre[i];
	FinPara
	
		Escribir "La suma de los vectores es ", suma;

FinProceso
