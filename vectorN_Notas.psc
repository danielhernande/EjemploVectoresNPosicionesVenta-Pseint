Proceso Vector_Notas
	
	Definir VectorNotas,  nota , i, prom , conta1, acum,vectorCedula,cedula como numerico;
	Definir respuesta,vectorNombre, opcionMenuPrincipal,nombre, decision  como texto;
	Definir menu,opcionRepetirDecision , opcion2 Como Logico;
	
	Dimension vectorNotas[100];
	Dimension vectorNombreEstudiante[100];
	Dimension vectorProm[100];
	
	menu=Verdadero;
	
	Mientras menu = verdadero hacer
		Limpiar Pantalla;
		
		Escribir "Men� Principal.";
		Escribir "";
		Escribir "1. Registro de Estudiantes.";
		Escribir "2. Registro de Nota.";
		Escribir "3. Consulta de Registros Guardados.";
		Escribir "4. Salir.";
		leer opcionMenuPrincipal;
		
		Segun opcionMenuPrincipal hacer
			
			"1"://Opci�n para registar al estudiante.
				Limpiar Pantalla;
				Mientras respuesta = "S" Hacer
					
					Escribir "Registrar Nombre del Estudiante : # ",conta1+1;
					Leer nombre;
					vectorNombreEstudiante[conta1]=nombre;
					
					Escribir "Ingresa la C�dula del Empleado # ",conta1+1;
					Leer cedula;
					vectorCedula[conta1]=cedula;
					vectorNotas[conta1]=0;
					conta1=conta1+1;
					Escribir "";
					Escribir "Desea regitrar otro empleado?:";
					Escribir "S para confirmar";
					Escribir "N para no agregar registro";
					Leer respuesta;
					
					respuesta = Mayusculas(respuesta);
				FinMientras
				
				
				
			"2"://Opci�n Registro de Notas.
				Limpiar Pantalla;
				
				opcion2 = Verdadero;
				
				Mientras opcion2 = Verdadero Hacer
					
					Escribir "OPCION: Calcular Promedio de Notas";
					Escribir "";
					
					Escribir "Ingrese la C�dula a buscar";
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
					
				FinMientras
				
				
				
			"3"://Opcion Consulta de Registros, podra ver la nota en Promedio , de acuerdo a las ingresadas.
				Limpiar Pantalla;
				
				si conta1=0 Entonces
					
					Escribir "No hay registros almacenados.";
					Escribir "Vuelve al Men� Principal para agregar Registros a trav�s de la Opci�n 1";
					
					opcionRepetirDecision = Verdadero;
					
					Mientras opcionRepetirDecision = Verdadero Hacer
						
						Escribir "";
						Escribir "1. Volver al Men� Principal.";
						Escribir "2. Salir";
						Leer decision;
						
						Segun decision Hacer
							
							"1": 
								
								menu = Verdadero;
								opcionRepetirDecision = Falso;
								
							"2":
								
								menu = Falso;
								opcionRepetirDecision = Falso;
								Escribir "Gracias por utilizar Este Software.";
								Esperar 5 segundos;
								
							De Otro Modo:
								
								Escribir "Opci�n Incorrecta, Intente de Nuevo.";
								Esperar 5 segundos;
								opcionRepetirDecision = Verdadero;
								
						FinSegun
						
					FinMientras
				SiNo
					
					
					Escribir "OPCION: Consulta de Registros Guardados";
					Escribir "";
					Escribir " Mira los Registros Almacenados.";
					Escribir "";
					Escribir "";
					
					Para i=0 hasta contador1-1 Con Paso 1 Hacer
						
						Escribir "C�dula; ", vectorCedula[i];
						Escribir "Nombre: ", vectorNombreEstudiante[i];
						Escribir "El promedio : ", vectorProm[i];
						Escribir "";
						
					FinPara
					
					opcionRepetirDecision = Verdadero;
					
					Mientras opcionRepetirDecision = Verdadero Hacer
						
						Escribir "";
						Escribir "";
						Escribir "1. Volver al Men� Principal.";
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
				
			"4":// Opci�n Salir Del Programa.
				
				Limpiar Pantalla;
				menu=falso;
				Escribir "Gracias por utilizar Nuestro Programa";
				
				
			De Otro Modo:// En caso de que no seleccione alguna opci�n anterior.
				Limpiar Pantalla;
				
				Escribir "Opci�n Incorrecta, Intente de Nuevo.";
				Esperar 5 segundos;
				menu=falso;
				
		FinSegun
		
		Mientras
FinProceso
