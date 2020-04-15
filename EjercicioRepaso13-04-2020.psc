Proceso sin_titulo
	
	//Realizar un programa que permita realizar las siguientes operaciones:
	//1. Registrar empleados.
	//2. Vincular salario empleados a través de horas trabajadas y valor hora.
	//3. Consultar registros agregados.
	//4. Salir del programa.
	
	
	Definir opcionMenuPrincipal, vectorNombreEmpleado, respuesta, nombre, decision como Texto;
	Definir vectorCedula, vectorSalario, horasTrabajadas, valorHora, salario, contador1, cedula, i como Numerico;
	Definir menu, opcionRepetirDecision, opcion2 Como Logico;
	
	Dimension vectorNombreEmpleado[1000000];
	Dimension vectorCedula[1000000];
	Dimension vectorSalario[1000000];
	
	contador1 = 0;
	
	menu = Verdadero;
	
	Mientras menu = Verdadero Hacer
		
		Limpiar Pantalla;
		
		
		Escribir "Menú principal";
		Escribir "";
		Escribir "1. Registro de empleados";
		Escribir "2. Salario empleado";
		Escribir "3. Consulta de registros guardados";
		Escribir "4. Salir";
		Leer opcionMenuPrincipal;
		
		Segun opcionMenuPrincipal Hacer
			
			
			"1": //Opción para Registro de empleados
				
				Limpiar Pantalla;
				
				respuesta = "S";
				
				Escribir "OPCION: Registro de empleados";
				Escribir "";
				Escribir "Ingresa los empleados de la empresa";
				Escribir "";
				
				Mientras respuesta = "S" Hacer
					
					Limpiar Pantalla;
					
					Escribir "Registrar nombre de persona # ", contador1+1;
					Leer nombre;
					vectorNombreEmpleado[contador1] = nombre;
					
					Escribir "Ingresa la cédula del empleado # ", contador1+1;
					Leer cedula;
					vectorCedula[contador1] = cedula;
					
					vectorSalario[contador1] = 0;
					
					contador1 = contador1 + 1;
					
					Escribir "";
					Escribir "Desea regitrar otro empleado?:";
					Escribir "S para confirmar";
					Escribir "N para no agregar registro";
					Leer respuesta;
					
					respuesta = Mayusculas(respuesta);
					
				FinMientras
				
				
			"2": //Opción calcular Salario empleado
				
				opcion2 = Verdadero;
				
				Mientras opcion2 = Verdadero Hacer
					
					Limpiar Pantalla;
					
					Escribir "OPCION: Calcular salario empleado";
					Escribir "";
					
					Escribir "Ingrese la cédula a buscar";
					Leer cedula;
					
					Para i=0 hasta contador1-1 Con Paso 1 Hacer
						
						Si cedula = vectorCedula[i] Entonces
							
							Escribir "Cuántas horas trabajadas hizo el empleado";
							Leer horasTrabajadas;
							
							Escribir "Cuánto es el valor de cada hora de trabajo";
							Leer valorHora;
							
							salario = horasTrabajadas * valorHora;
							vectorSalario[i] = salario;
							
							Escribir "";
							Escribir "";
							Escribir "El salario a pagar al empleado ", vectorNombreEmpleado[i], " es ", salario;
							
							
						FinSi
						
					FinPara
					
					
					opcionRepetirDecision = Verdadero;
					
					Mientras opcionRepetirDecision = Verdadero Hacer
						
						Escribir "";
						Escribir "";
						Escribir "1. Repetir proceso.";
						Escribir "2. Volver al menú principal";
						Escribir "3. Salir";
						Leer decision;
						
						Segun decision Hacer
							
							"1": 
								
								opcion2 = Verdadero;
								menu = Falso;
								opcionRepetirDecision = Falso;
								
							"2":
								
								opcion2 = Falso;
								menu = Verdadero;
								opcionRepetirDecision = Falso;
								
							"3":
								
								opcion2 = Falso;
								menu = Falso;
								opcionRepetirDecision = Falso;
								Escribir "Gracias por utilizar éste Software.";
								Esperar 5 segundos;
								
								
							De Otro Modo:
								
								Escribir "Opción incorrecta, intente de nuevo.";
								Esperar 5 segundos;
								opcionRepetirDecision = Verdadero;
								
						FinSegun
						
					FinMientras
					
				FinMientras
				
			"3": //Opción de Consulta de registros guardados
				
				Limpiar Pantalla;
				
				Si contador1 = 0 Entonces
					
					Escribir "No hay registros almacenados.";
					Escribir "Vuelve al menú principal para agregar registros a través de la opción 1";
					
					opcionRepetirDecision = Verdadero;
					
					Mientras opcionRepetirDecision = Verdadero Hacer
						
						Escribir "";
						Escribir "1. Volver al menú principal.";
						Escribir "2. Salir";
						Leer decision;
						
						Segun decision Hacer
							
							"1": 
								
								menu = Verdadero;
								opcionRepetirDecision = Falso;
								
							"2":
								
								menu = Falso;
								opcionRepetirDecision = Falso;
								Escribir "Gracias por utilizar éste Software.";
								Esperar 5 segundos;
								
							De Otro Modo:
								
								Escribir "Opción incorrecta, intente de nuevo.";
								Esperar 5 segundos;
								opcionRepetirDecision = Verdadero;
								
						FinSegun
						
					FinMientras
					
					
				SiNo
					
					
					Escribir "OPCION: Consulta de registros guardados";
					Escribir "";
					Escribir " Mira los registros almacenados en el sistema";
					Escribir "";
					Escribir "";
					
					Para i=0 hasta contador1-1 Con Paso 1 Hacer
						
						Escribir "Cédula; ", vectorCedula[i];
						Escribir "Nombre: ", vectorNombreEmpleado[i];
						Escribir "Salario pagado: ", vectorSalario[i];
						Escribir "";
						
					FinPara
					
					opcionRepetirDecision = Verdadero;
					
					Mientras opcionRepetirDecision = Verdadero Hacer
						
						Escribir "";
						Escribir "";
						Escribir "1. Volver al menú principal.";
						Escribir "2. Salir";
						Leer decision;
						
						Segun decision Hacer
							
							"1": 
								
								menu = Verdadero;
								opcionRepetirDecision = Falso;
								
							"2":
								
								menu = Falso;
								opcionRepetirDecision = Falso;
								Escribir "Gracias por utilizar éste Software.";
								Esperar 5 segundos;
								
							De Otro Modo:
								
								Escribir "Opción incorrecta, intente de nuevo.";
								Esperar 5 segundos;
								opcionRepetirDecision = Verdadero;
								
						FinSegun
						
					FinMientras
					
				FinSi
				
				
			"4": //Opción para salir del programa
				
				menu = Falso;
				Escribir "Gracias por utilizar éste Software.";
				Esperar 5 segundos;
				
			De Otro Modo:  //En caso de que no se seleccione alguna opción anterior
				
				Escribir "Opción incorrecta, intente de nuevo.";
				Esperar 5 segundos;
				menu = Falso;
				
				
		FinSegun
		
	FinMientras
	
FinProceso
