//1. Crear un vector llamado num que almacene
//los siguientes datos: 20, 14, 8, 0, 5, 19 y 24.
//2.	Crear un vector de 5 posiciones y llénelo con los números
//que el usuario desee.
//3. Crear dos vectores uno que almacene 2 nombres y otro que almacene 3 números.
//4. Sumar todos los elementos de un vector de tamaño 5.
//5. Sumar los elementos de dos vectores, cada uno de 5 posiciones 
//y guardar el resultado en otro vector en 1 posición.
//todas las anteriores opciones deben contar con las desiciones 
//A. Repetir Proceso
//B. Volver al Menú Principal.
//C. Salir
Proceso Taller1
	
	Definir num1 , num, i,j ,acum ,arreglo ,vectorNum,vectorValor,suma, num2, num3 como numerico;
	Dimension num1[7] , vectorValor[5], vectorNombre[2], vectorNum[3], arreglo[5],suma[1],num2[5],num3[5];
	Definir menuPrincipal,opcion1,opcion2,opcion3,opcion4, opcion5 como logico;
	Definir vectorNombre, nom ,respuesta , opcionMenuPrincipal, decision como texto;
	menuPrincipal=verdadero;
	
	Mientras menuPrincipal = Verdadero Hacer
		
		Limpiar Pantalla;
		
		Escribir "Menú Principal.";
		Escribir "";
		Escribir "1. Almacenacenamiento de Datos Directo.";
		Escribir "2. Almacenamiento de Datos por Usuario.";
		Escribir "3. Almacenar Nombres y Números.";
		Escribir "4. Suma de Números de 1 Vector.";
		Escribir "5. Suma de Números de 2 Vectores.";
		Escribir "6. Salir.";
		leer opcionMenuPrincipal;
		
		Segun opcionMenuPrincipal hacer
			
			"1"://Opción Menú Principal Para Almacenacenamiento de Datos Directo
				
				opcion1 = Verdadero;
				Mientras opcion1 = verdadero Hacer
					
					Limpiar Pantalla;
					
					Escribir "Opción: Almacenacenamiento de Datos .";
					Escribir"";
					Escribir " Almacenacenamiento de Datos: 20, 14, 8, 0, 5, 19 y 24";
					Escribir"";
					
					num1[0] = 20;
					num1[1] = 14;
					num1[2] = 8;
					num1[3] = 0;
					num1[4] = 5;
					num1[5] = 19;
					num1[6] = 24;
					
					Escribir"El Número que Usted ingreso en la Posicion 1 es: ", num1[0];
					Escribir"El Número que Usted ingreso en la Posicion 2 es: ", num1[1];
					Escribir"El Número que Usted ingreso en la Posicion 3 es: ", num1[2];
					Escribir"El Número que Usted ingreso en la Posicion 4 es: ", num1[3];
					Escribir"El Número que Usted ingreso en la Posicion 5 es: ", num1[4];
					Escribir"El Número que Usted ingreso en la Posicion 6 es: ", num1[5];
					Escribir"El Número que Usted ingreso en la Posicion 7 es: ", num1[6];
					
					Escribir "";
					Escribir "";
					Escribir "Qué deseas hacer?";
					Escribir "";
					Escribir "A. Repetir cálculo.";
					Escribir "B. Regresar al menú principal.";
					Escribir "C. Salir.";
					
					Leer decision;
					
					decision = Mayusculas(decision);
					
					Segun decision hacer
						
						"A": //Opción Repetir ejercicio.
							
							opcion1 = Verdadero;
							
							Limpiar Pantalla;
							Esperar 3 Segundos;
						"B": //Opción de Ir al menú principal.
							
							opcion1 = Falso;
							menuPrincipal= Verdadero;
							
						"C": //Opción de Salir del Programa.
							Limpiar Pantalla;
							opcion1 = Falso;
							menuPrincipal = Falso;
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
				
			"2"://Opción del Menú Principal para Almacenamiento de Datos por Usuario
				
				opcion2 = Verdadero;
				
				Mientras opcion2 = Verdadero Hacer
					Limpiar Pantalla;
					
					Escribir "INGRESO DE DATOS A VECTOR.";
					Escribir "";
					Escribir "Favor ingrese 5 Números:";
					Escribir "";
					//se agregan los valores por el usuario 
					para i=0 hasta 4 con paso 1 hacer
						
						Escribir "Ingrese el Número ",i+1;
						leer num;
						vectorValor[i] = num;
					FinPara
					Escribir "";
					Escribir "VALOR DE DATOS INGRESADOS.";
					Escribir "";
					Escribir "";
					Escribir "Los Valores Ingresados Son: ";
					Escribir "";
					//leer los valores ingresados
					para i=0 hasta 4 con paso 1 Hacer
						
						Escribir  vectorValor[i];
						
					FinPara
					Escribir "";
					Escribir "Qué deseas hacer?";
					Escribir "";
					Escribir "A. Repetir cálculo.";
					Escribir "B. Regresar al menú principal.";
					Escribir "C. Salir.";
					
					Leer decision;
					
					decision = Mayusculas(decision);
					
					Segun decision hacer
						
						"A": //Opción Repetir ejercicio.
							
							opcion2 = Verdadero;
							
						"B": //Opción de Ir al menú principal.
							
							opcion2 = Falso;
							menuPrincipal= Verdadero;
							
						"C": //Opción de Salir del Programa.
							
							opcion2 = Falso;
							menuPrincipal = Falso;
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
				
			"3"://Opción Menú Principal para Almacenar Nombres y Números.
				opcion3 = Verdadero;
				
				Mientras opcion3 = Verdadero Hacer
					
					Limpiar Pantalla;
					Escribir "INGRESO DE DATOS A VECTOR.";
					Escribir "";
					Escribir "Favor ingrese 2 Nombres :";
					Escribir "";
					
					para j=0 hasta 1 con paso 1 hacer
						
						Escribir "Ingrese un Nombre ", j+1;
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
						
						Escribir "Ingrese un Número: ", i+1;
						leer num;
						vectorNum[i] = num;
					FinPara
					
					Escribir "";
					Escribir "LOS DATOS INGRESADOS SON:";
					Escribir "";
					
					para i=0 hasta 2 con paso 1 Hacer
						
						Escribir  vectorNum[i];
						
					FinPara
					Escribir "";
					Escribir "Qué deseas hacer?";
					Escribir "";
					Escribir "A. Repetir cálculo.";
					Escribir "B. Regresar al menú principal.";
					Escribir "C. Salir.";
					
					Leer decision;
					
					decision = Mayusculas(decision);
					
					Segun decision hacer
						
						"A": //Opción Repetir ejercicio.
							
							opcion3 = Verdadero;
							
						"B": //Opción de Ir al menú principal.
							
							opcion3 = Falso;
							menuPrincipal= Verdadero;
							
						"C": //Opción de Salir del Programa.
							
							opcion3 = Falso;
							menuPrincipal = Falso;
							Limpiar Pantalla;
							Escribir "Gracias Por Utilizar Nuestro Software";
							esperar 5 segundos;
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción incorrecta, El sistema se Cerrará";
							opcion3 = Falso;
							menu = Falso;
							Esperar 5 Segundos;
					FinSegun
				FinMientras
				
				
			"4"://Opción Menú Principal para Suma de Números de 1 Vector.
				opcion4 = Verdadero;
				
				Mientras opcion4 = Verdadero Hacer
					Limpiar Pantalla;
					acum=0;
					i=0;
					Escribir "INGRESO DE 5 NÚMEROS A VECTOR";
					Escribir "";
					
					para i=0 hasta 4 con paso 1 Hacer
						
						Escribir "Ingrese por favor el Número: ",i+1;
						leer arreglo[i];
						
						acum=acum+arreglo[i];
						
					FinPara
					
					Limpiar Pantalla;
					para i=0 hasta 4 con paso 1 hacer 
						escribir "La suma de : ", arreglo[i];
					FinPara
					
					escribir "Es : ",acum;
					
					Escribir "";
					Escribir "Qué deseas hacer?";
					Escribir "";
					Escribir "A. Repetir cálculo.";
					Escribir "B. Regresar al menú principal.";
					Escribir "C. Salir.";
					
					Leer decision;
					
					decision = Mayusculas(decision);
					
					Segun decision hacer
						
						"A": //Opción Repetir ejercicio.
							Limpiar Pantalla;
							opcion4 = Verdadero;
							
						"B": //Opción de Ir al menú principal.
							
							opcion4 = Falso;
							menuPrincipal= Verdadero;
							
						"C": //Opción de Salir del Programa.
							
							opcion4 = Falso;
							menuPrincipal = Falso;
							Limpiar Pantalla;
							Escribir "Gracias Por Utilizar Nuestro Software";
							esperar 5 segundos;
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción incorrecta, El sistema se Cerrará";
							opcion4 = Falso;
							menu = Falso;
							Esperar 5 Segundos;
					FinSegun
					
				FinMientras
				
			"5"://Opción Menú Principal para Suma de Números de 2 Vectores.
				
				opcion5 = Verdadero;
				Mientras opcion5 = Verdadero Hacer
					
					Limpiar Pantalla;
					
					Escribir "INGRESO DE 5 NÚMEROS A VECTOR";
					Escribir "";
					Escribir "Favor ingrese los Números para el Primer Vector:";
					Escribir "";
					i=0;
					para i=0 hasta 4 con paso 1 Hacer// ingreso de datos para el primer vector llamado num2
						
						Escribir "Ingrese por favor el Número: ",i+1;
						leer num;
						
						num2[i]=num;
						
					FinPara
					
					Escribir "";
					Escribir "Favor ingrese los Números para el Segundo Vector:";
					Escribir "";
					i=0;
					para i=0 hasta 4 con paso 1 Hacer// ingreso de datos para el segundo vector llamado num3
						
						Escribir "Ingrese por favor el Número: ",i+1;
						leer num;
						
						num3[i]=num;
						
					FinPara
					
					Escribir "";
					Escribir "Suma de las respectivas Posiciones del Vector : ";
					Escribir "";
					Escribir "";
					i=0;
					para i=0 hasta 4 con paso 1 Hacer// suma las respectivas posiciones de los vectores.(num1[0] + num2[0]).
						
						suma[0]=num2[0]+num3[0]+num2[1]+num3[1]+num2[2]+num3[2]+num2[3]+num3[3]+num2[4]+num3[4];
					FinPara
					//muestra el resultado de la suma para la respectiva posición de los 2 vectores (num1 y num2).
					Escribir "La suma de la posición [0] Es :",suma[0];
					
					
					Escribir "";
					Escribir "Qué deseas hacer?";
					Escribir "";
					Escribir "A. Repetir cálculo.";
					Escribir "B. Regresar al menú principal.";
					Escribir "C. Salir.";
					
					Leer decision;
					
					decision = Mayusculas(decision);
					
					Segun decision hacer
						
						"A": //Opción Repetir ejercicio.
							Limpiar Pantalla;
							opcion5 = Verdadero;
							
						"B": //Opción de Ir al menú principal.
							
							opcion5 = Falso;
							menuPrincipal= Verdadero;
							
						"C": //Opción de Salir del Programa.
							
							opcion5 = Falso;
							menuPrincipal = Falso;
							Limpiar Pantalla;
							Escribir "Gracias Por Utilizar Nuestro Software";
							esperar 5 segundos;
							
						De Otro Modo:
							Limpiar Pantalla;
							Escribir "Opción incorrecta, El sistema se Cerrará";
							opcion5 = Falso;
							menu = Falso;
							Esperar 5 Segundos;
					FinSegun
					
					
					
				FinMientras
				
				
			"6"://Opción Menú Principal para Salir
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
