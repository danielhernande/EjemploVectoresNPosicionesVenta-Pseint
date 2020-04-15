//Realice un algoritmo que tenga un men� de opciones , el cual , cada opci�n
//tiene las siguientes funcionalidades:
//1. Vector con 5 posiciones ingresados por el usuario.
//2. vector que al indicar 3 datos guardados en el se genere promedio de los valores.
//adicional, cada opci�n ingresada, despues de realizar el proceso esperado, se deberia mostrar
//A. Repetir proceso.
//B. Volver al men� principal.
//C. salir.
Proceso Repaso_vectores1
	
	Definir opcionMenuPrincipal, desicion como caracter;
	Definir vectorNumero,vectorValores, promedio,i , num, acum como numerico;
	Definir opcion1,opcion2, menuPrincial como logico;
	
	Dimension vectorNumero[5];
	Dimension vectorValores[3];
	menuPrincial = verdadero;
	
	Mientras  menuPrincial hacer
		Limpiar Pantalla;
		
	
	Escribir "Menu Principal";
	Escribir "";
	Escribir "1. Ingreso de datos a Vector.";
	Escribir "2. Promedio de datos de Vector.";
	Escribir "3. Salir.";
	leer opcionMenuPrincipal;
	
	Segun opcionMenuPrincipal hacer
		
		"1"://Opci�n de Ingreso de datos.
			
			opcion1=Verdadero;
			
			Mientras opcion1 = verdadero hacer
			Limpiar Pantalla;
			Escribir "Opci�n : INGRESO DE DATOS A VECTOR";
			Escribir "";
			Escribir "";
			para i=0 hasta 4 con paso 1 hacer
				
				Escribir "Ingrese el N�mero ",i+1;
				leer num;
				vectorNumero[i] = num;
			FinPara
			
			Escribir "Los Valores Ingresados Son: ";
			Escribir "";
			para i=0 hasta 4 con paso 1 Hacer
			
				Escribir  vectorNumero[i];
				
			FinPara
			
			Escribir "";
			Escribir "";
			Escribir "Qu� deseas hacer?";
			Escribir "";
			Escribir "A. Repetir c�lculo.";
			Escribir "B. Regresar al men� principal.";
			Escribir "C. Salir.";
			
			Leer desicion;
			
			desicion = Mayusculas(desicion);
			
			Segun desicion hacer
				
				"A": //Opci�n Repetir ejercicio.
					
					opcion1 = Verdadero;
					
				"B": //Opci�n de Ir al men� principal.
					
					opcion1 = Falso;
					menuPrincial= Verdadero;
					
				"C": //Opci�n de Salir del Programa.
					
					opcion1 = Falso;
					menuPrincial = Falso;
					Limpiar Pantalla;
					Escribir "Gracias Por Utilizar Nuestro Software";
					esperar 5 segundos;
				
					
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "Opci�n incorrecta, El sistema se Cerrar�";
					opcion1 = Falso;
					menu = Falso;
					Esperar 5 Segundos;
					
					
			FinSegun
			
		FinMientras
			
		"2"://Opci�n Promedio de datos en Vector.
			
			opcion2= Verdadero;			
			Mientras opcion2 = verdadero hacer
				
			
			Limpiar Pantalla;
			Escribir "Opci�n : PROMEDIO DE DATOS EN VECTOR";
			Escribir "";
			Escribir "";
			
			acum=0;
			para i=0 hasta 2 con paso 1 hacer
				
				Escribir "Ingrese el Dato N�mero", i+1;
				leer num;
				
				vectorValores[i] = num;
				acum = acum+vectorValores[i];
				
			FinPara
			
			promedio = acum /3;
			Escribir "";
			escribir "Los Valores Ingresados son :";
			
			para i=0 hasta 2 con paso 1 hacer
				
				Escribir vectorValores[i];
			FinPara
			
			Escribir "";
			Escribir "El Promedio de Datos es :  ", promedio;
			
			Escribir "";
			Escribir "";
			Escribir "Qu� deseas hacer?";
			Escribir "";
			Escribir "A. Repetir c�lculo.";
			Escribir "B. Regresar al men� principal.";
			Escribir "C. Salir.";
			
			Leer desicion;
			
			desicion = Mayusculas(desicion);
			
			Segun desicion hacer
				
				"A": //Opci�n Repetir ejercicio.
					
					opcion2 = Verdadero;
					
				"B": //Opci�n de Ir al men� principal.
					
					opcion2 = Falso;
					menuPrincial= Verdadero;
					
				"C": //Opci�n de Salir del Programa.
					
					opcion2 = Falso;
					menuPrincial = Falso;
					Limpiar Pantalla;
					Escribir "Gracias Por Utilizar Nuestro Software";
					esperar 5 segundos;
					
					
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "Opci�n incorrecta, El sistema se Cerrar�";
					opcion2 = Falso;
					menu = Falso;
					Esperar 5 Segundos;
					
					
			FinSegun
		FinMientras
			
		"3"://Opci�n Salir del Programa
			menuPrincipal = falso;
			Limpiar Pantalla;
			Escribir "Gracias Por Utilizar Nuestro Software";
			Esperar 5 segundos;
	
			
		de otro modo://En caso de ser diferente la opci�n.
			
			menuPrincipal = falso;
			Limpiar Pantalla;
			Escribir "Opci�n incorrecta, El sistema se Cerrar�";
			Esperar 5 Segundos;
		
	FinSegun
	
	FinMientras	
FinProceso
