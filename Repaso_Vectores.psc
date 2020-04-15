//Realice un algoritmo que tenga un menú de opciones , el cual , cada opción
//tiene las siguientes funcionalidades:
//1. Vector con 5 posiciones ingresados por el usuario.
//2. vector que al indicar 3 datos guardados en el se genere promedio de los valores.
//adicional, cada opción ingresada, despues de realizar el proceso esperado, se deberia mostrar
//A. Repetir proceso.
//B. Volver al menú principal.
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
		
		"1"://Opción de Ingreso de datos.
			
			opcion1=Verdadero;
			
			Mientras opcion1 = verdadero hacer
			Limpiar Pantalla;
			Escribir "Opción : INGRESO DE DATOS A VECTOR";
			Escribir "";
			Escribir "";
			para i=0 hasta 4 con paso 1 hacer
				
				Escribir "Ingrese el Número ",i+1;
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
			Escribir "Qué deseas hacer?";
			Escribir "";
			Escribir "A. Repetir cálculo.";
			Escribir "B. Regresar al menú principal.";
			Escribir "C. Salir.";
			
			Leer desicion;
			
			desicion = Mayusculas(desicion);
			
			Segun desicion hacer
				
				"A": //Opción Repetir ejercicio.
					
					opcion1 = Verdadero;
					
				"B": //Opción de Ir al menú principal.
					
					opcion1 = Falso;
					menuPrincial= Verdadero;
					
				"C": //Opción de Salir del Programa.
					
					opcion1 = Falso;
					menuPrincial = Falso;
					Limpiar Pantalla;
					Escribir "Gracias Por Utilizar Nuestro Software";
					esperar 5 segundos;
				
					
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "Opción incorrecta, El sistema se Cerrará";
					opcion1 = Falso;
					menu = Falso;
					Esperar 5 Segundos;
					
					
			FinSegun
			
		FinMientras
			
		"2"://Opción Promedio de datos en Vector.
			
			opcion2= Verdadero;			
			Mientras opcion2 = verdadero hacer
				
			
			Limpiar Pantalla;
			Escribir "Opción : PROMEDIO DE DATOS EN VECTOR";
			Escribir "";
			Escribir "";
			
			acum=0;
			para i=0 hasta 2 con paso 1 hacer
				
				Escribir "Ingrese el Dato Número", i+1;
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
			Escribir "Qué deseas hacer?";
			Escribir "";
			Escribir "A. Repetir cálculo.";
			Escribir "B. Regresar al menú principal.";
			Escribir "C. Salir.";
			
			Leer desicion;
			
			desicion = Mayusculas(desicion);
			
			Segun desicion hacer
				
				"A": //Opción Repetir ejercicio.
					
					opcion2 = Verdadero;
					
				"B": //Opción de Ir al menú principal.
					
					opcion2 = Falso;
					menuPrincial= Verdadero;
					
				"C": //Opción de Salir del Programa.
					
					opcion2 = Falso;
					menuPrincial = Falso;
					Limpiar Pantalla;
					Escribir "Gracias Por Utilizar Nuestro Software";
					esperar 5 segundos;
					
					
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "Opción incorrecta, El sistema se Cerrará";
					opcion2 = Falso;
					menu = Falso;
					Esperar 5 Segundos;
					
					
			FinSegun
		FinMientras
			
		"3"://Opción Salir del Programa
			menuPrincipal = falso;
			Limpiar Pantalla;
			Escribir "Gracias Por Utilizar Nuestro Software";
			Esperar 5 segundos;
	
			
		de otro modo://En caso de ser diferente la opción.
			
			menuPrincipal = falso;
			Limpiar Pantalla;
			Escribir "Opción incorrecta, El sistema se Cerrará";
			Esperar 5 Segundos;
		
	FinSegun
	
	FinMientras	
FinProceso
