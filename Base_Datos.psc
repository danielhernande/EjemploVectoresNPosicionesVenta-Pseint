
Proceso Base_datos
	
	Definir vectorNombre, nombre,opcionMenuPrincipal, desicion como texto;
	Definir vectorCed, ced , i como numerico;
	Definir menu, opcionCed, opcionValida como logico;
	
	Dimension vectorNombre[2];
	Dimension vectorCed[2];
	
	menu = verdadero;
	
	Mientras menu = verdadero hacer
		
		Limpiar Pantalla;
		Escribir "Sistema de Información PQEK";
		Escribir"";
		Escribir"1. Ingresar Cédulas.(2)";
		Escribir"2. Asociar Nombre de Personas a Cédulas.(2)";
		Escribir"3. Ver Registros.(2)";
		Escribir"4. Salir.(2)";
		leer opcionMenuPrincipal;
		
		Segun opcionMenuPrincipal hacer
			
			"1"://Opción Menú Principal Ingreso de Cédulas
				
				Limpiar Pantalla;
				
				Escribir "OPCIÓN INGRESO DE CÉDULAS";
				Escribir "";
				
				para i=0 hasta 1 con paso 1 hacer
					
					Escribir "Ingrese Cédulas # " ,i+1; 
					leer ced;
					
					vectorCed[i]= ced;
				FinPara
				
				Escribir "Se ha ingresado la Información Correctamente.";
				Escribir "";
				Escribir "Seras redirigido al Menú Principal para ingresar Nombre.";
				
				Esperar 3 segundos;
				menu=verdadero;
				
			"2"://Opción Menú Principal Asociar Nombre a Cédulas.
				opcionced=verdadero;
				
				Mientras opcionCed = verdadero hacer
					
					Limpiar Pantalla;
					
					Escribir "OPCIÓN INGRESO DE NOMBRES ";
					Escribir "";
					Escribir "Ingrese Cédula a Buscar";
					leer ced;
					para i=0 hasta 1 con paso 1 hacer
						
						Si vectorCed[i]= ced entonces
							Escribir "Ingrese El Nombre que le Pertenece a la Cédula Ingresada :";
							leer nombre;
							vectorNombre[i]= nombre;
							
						FinSi
						
					FinPara
					
					opcionValida=verdadero;
					Mientras opcionvalida =verdadero hacer
						
						Escribir "";
						Escribir "Que desea Hacer? ";
						Escribir "1. Buscar Otra Cédula. ";
						Escribir "2. Menú Principal. ";
						leer desicion;
						
						Segun desicion hacer
							
							"1":
								opcionCed=verdadero;
								opcionValida = falso;
								
							"2":
								opcionCed=falso;
								menu=Verdadero;
								opcionValida=falso;
								
							De Otro Modo:
								
								opcionValida=verdadero;
								Escribir "Opción Incorrecta, Intente de Nuevo";
								
						FinSegun
					FinMientras
				FinMientras	
				
			"3"://Opción Menú Principal Ver Registros
				
				Limpiar Pantalla;
				
				Escribir "OPCIÓN VER REGISTROS ";
				Escribir "";
				Escribir "listado de los registros guardados en el sistema";
				
				Para i=0 hasta 1 con paso 1 hacer 
					
					Escribir"Cédula: ", vectorCed[i];
					Escribir"Nombre: ", vectorNombre[i];
					escribir"";
				Finpara	
				
				opcionValida=verdadero;
				Mientras opcionvalida =verdadero hacer
					
					escribir"";
					escribir"";
					escribir"Que deseas hacer ?:";
					escribir"1. Ir al Menú Principal";
					escribir"2. Salir";
					leer desicion;
					
					Segun desicion hacer 
						"1":
							opcionValida=falso;
							menu=verdadero;
							
						"2":
							Limpiar Pantalla;
							menu = Falso;
							opcionValida=falso;
							Escribir "Gracias por usar Este Programa";
							Esperar 5 segundos;
							
						De Otro Modo:
							opcionValida= Verdadero;
							Escribir "Opción Incorrecta vuelva a intentarlo" ;
							Esperar 5 segundos;
							
					FinSegun
				FinMientras
				
			"4": // Opcion Menu Principal de Salir.
				Limpiar Pantalla;
				menu = Falso;
				Escribir "Gracias por usar Este Programa";
				Esperar 5 segundos;
				
			De Otro Modo:
				menu= Verdadero;
				Escribir "Opción Incorrecta vuelva a intentarlo" ;
				Esperar 3 segundos;
		FinSegun
	FinMientras
FinProceso
