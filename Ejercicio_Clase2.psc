//Realizar un programa que contenga 2 opciones , siendo la siguientes:
//1. Algoritmo que solicite 3 notas de estudiantes , estas nota 
//se guardara en un vector. al finalizar la recepcion de datos ,
//se deber� calcular el promedio de las notas.
//tenga encuenta mostrar las calificaciones ingresadas 
//y el promedio.
//2. Algoritmo que permita ingresar N valores a un vector, esta informaci�n
//se controla preguntandole al usuario si desea ingresar otro dato.
//tenga en cuenta mostrar los numeros ingresados por el usuario.
//cada proceso debe tener las opciones de :
//A. Repetir proceso.
//B. Volver al Men� Principal.
//C. Salir del sistema.
Proceso Taller1
	
	Definir nota, prom , vectorNotas, vectorNvalores, num , i, acum como Numerico;
	Definir respuesta , opcionMenuPrincipal, decision como texto;
	Definir menuPrincipal ,opcion1, opcion2, opcion3 como logica;
	Dimension vectorNotas[3];//Defino el tama�o del Vector.
	dimension vectorNvalores[1000];//se define vector con un valor muy alto
	menuPrincipal = verdadero;
	
	Mientras menuPrincipal =Verdadero Hacer
		
		Limpiar Pantalla;
	
	Escribir "Men� Principal.";
	Escribir "";
	Escribir "1. Promedio de 3 Notas.";
	Escribir "2. Ingreso de N datos";
	Escribir "3. Salir.";
	leer opcionMenuPrincipal;
	
	Segun opcionMenuPrincipal hacer
		
		"1":// Opci�n del Men� Principal para Calcular promedio de 3 notas
			opcion1 = verdadero;
			
			Mientras opcion1 = verdadero hacer
			
			Limpiar Pantalla;
			
			Escribir "Opci�n: Promedio de 3 notas";
			Escribir"";
			Escribir "Calcular el Promedio de Calificaciones de un Estudiante";
			Escribir"";
			Escribir "";
			acum=0;
			//Ciclo para ingresar datos
			Para i=0 hasta 2 con paso 1 hacer 
				
				Escribir "Ingresa la Nota ", i+1;
				leer nota;
				vectorNotas[i]=nota;
				
				acum = acum + vectorNotas[i];
				
			FinPara
			
			prom = acum/3;
			Escribir "";
			Escribir "Las Notas ingresadas por el estudiante son :";
			Escribir "";
			//Ciclo para leer las posiciones del vector.
			Para i=0 hasta 2 con paso 1 hacer 
				
				Escribir vectorNotas[i];
				
			FinPara
			Escribir "";
			Escribir "El Promedio de las notas es : ", prom;
			
			Escribir "";
			Escribir "";
			Escribir "Qu� deseas hacer?";
			Escribir "";
			Escribir "A. Repetir c�lculo.";
			Escribir "B. Regresar al men� principal.";
			Escribir "C. Salir.";
			
			Leer decision;
			
			decision = Mayusculas(decision);
			
			Segun decision hacer
				
				"A": //Opci�n Repetir ejercicio.
					
					opcion1 = Verdadero;
					
				"B": //Opci�n de Ir al men� principal.
					
					opcion1 = Falso;
					menuPrincipal= Verdadero;
					
				"C": //Opci�n de Salir del Programa.
					Limpiar Pantalla;
					opcion1 = Falso;
					menuPrincipal = Falso;
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
			
			
		"2"://Opci�n del Men� Principal para Ingreso de N datos
			opcion2=verdadero;
			
			Mientras opcion2 = verdadero hacer
				
			
			Escribir "Opci�n: Ingreso de N datos.";
			Escribir"";
			Escribir "Crear un Vector de N Posiciones de acuerdo al usuario";
			Escribir"";
			Escribir "";
			
			respuesta ="S";
			i=0;
			//se agrean los valores ingresados por el usuario al vector
			//estamos identificando cuantas posiciones reales se usan.
			Limpiar Pantalla;
			Mientras respuesta = "S" hacer
			
			escribir"Ingresa un N�mero: ";	
			leer num;
			
			vectorNvalores[i]=num;
			i=i+1;
			
			Escribir"Deseas agregar otro dato";
			Escribir"S. Para agreagar otro N�mero.";
			Escribir"N. Para Ver los N�meros.";
			leer respuesta;
			respuesta=mayusculas(respuesta);
			
		FinMientras
	
		Escribir"";
		Escribir"Los valores ingresados son: ";
			// Leer el vector de N posiciones
			para i=0 hasta i-1 con paso 1 hacer
				Escribir vectorNvalores[i];
				
			FinPara
			
			Escribir "";
			Escribir "";
			Escribir "Qu� deseas hacer?";
			Escribir "";
			Escribir "A. Repetir c�lculo.";
			Escribir "B. Regresar al men� principal.";
			Escribir "C. Salir.";
			
			Leer decision;
			
			decision = Mayusculas(decision);
			
			Segun decision hacer
				
				"A": //Opci�n Repetir ejercicio.
					
					opcion2 = Verdadero;
					
				"B": //Opci�n de Ir al men� principal.
					
					opcion2 = Falso;
					menuPrincipal= Verdadero;
					
				"C": //Opci�n de Salir del Programa.
					
					opcion2 = Falso;
					menuPrincipal = Falso;
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
		
			
		"3"://Opci�n del Men� Principal para Salir
			
			menuPrincipal = falso;
			Limpiar Pantalla;
			Escribir "Gracias Por Utilizar Nuestro Software";
			Esperar 4 segundos;
			
			
		de otro modo://En caso de ser diferente la opci�n.
			
			menuPrincipal = falso;
			Limpiar Pantalla;
			Escribir "Opci�n incorrecta, El sistema se Cerrar�";
			Esperar 5 Segundos;
		
	FinSegun
	
FinMientras
	
FinProceso
