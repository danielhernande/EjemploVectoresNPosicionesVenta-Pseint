//Realizar un algoritmo que permita crear un vector de 3 posiciones
//Y pueda leer los datos del vector
Proceso creacionVector1
	
	definir nombre como texto;
	dimension nombre[3];
	
	definir i Como Entero;
	
	i = 0;
	
	//Usando Mientras
	
	Mientras i <= 2 Hacer
		Escribir "Ingrese un nombre: ";
		Leer nombre[i];
		i = i + 1;
	FinMientras
	
	//Mostrando datos
	Limpiar Pantalla;
	
	i = 0;
	
	Escribir "Mostrando datos: ";
	Escribir ""; 
	
	Mientras i <= 2 Hacer
		Escribir nombre[i];
		i = i + 1;
		Esperar 1 segundos;
	FinMientras
	
FinProceso
