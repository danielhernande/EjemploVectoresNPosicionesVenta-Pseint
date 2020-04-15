//Opcion1:
//Nombre del empleado
//C�dula
//Opci�n2:
//preguntar la C�dula
// si existe la c�dula, se solicita horas trabajadas y valor hora
// se genera otro vector para vincular el salario calculado con la 
//c�dula que previamente se haya consultado
//Opci�n3 : 
// listar los empleados registrados con el salario aplicado
//Opci�n4 : Salir del Programa.
Proceso sin_titulo
	Definir  opcionMenuPrincipal, vectorNombreEmpleado, decision,respuesta,nombre como texto;
	Definir  vectorCedula,cedula, horasTrabajadas, valorHora,i, salario,vectorSalario ,conta1 como numerico;
	Definir  menu , opcionRepetirDecision, opcion2 como logico;
	
	Dimension vectorNombreEmpleado[1000];
	Dimension vectorCedula[1000];
	Dimension vectorSalario[1000];
	conta1=0;
	
	menu=verdadero;
	
	Mientras menu = verdadero hacer
		Limpiar Pantalla;
		
		Escribir "Men� Principal.";
		Escribir "";
		Escribir "1. Registro de Empleados.";
		Escribir "2. Salario Empleado.";
		Escribir "3. Consulta de Registros Guardados.";
		Escribir "4. Salir.";
		leer opcionMenuPrincipal;
		
		Segun opcionMenuPrincipal Hacer
			
			
			"1": //Opcion para Registro de Empleados.
				
				Limpiar Pantalla;
				
				respuesta="S";
				
				Escribir "OPCI�N: Registro de Empleados";
				Escribir "";
				Escribir "Ingresa los Empleados de la Empresa";
				Escribir "";
				
				Mientras respuesta = "S" hacer
					Limpiar Pantalla;
					
					Escribir "Registrar Nombre de Persona # ",conta1+1;
					Leer nombre;
					vectorNombreEmpleado[conta1]=nombre;
					
					Escribir "Ingresa la C�dula del Empleado # ",conta1+1;
					Leer cedula;
					vectorCedula[conta1]=cedula;
					vectorSalario[conta1]=0;
					conta1=conta1+1;
					
					Escribir "";
					Escribir "Desea Registrar Otro Empleado? :";
					Escribir "S Para COnfirmar.";
					Escribir "N para no agregar.";
					Leer respuesta;
					
					respuesta=mayusculas(respuesta);
					
				FinMientras
				
			"2": //Opcion Calcular Salario Empleado.
				
				
				Limpiar Pantalla;
				
				opcion2=verdadero;
				
				Mientras  opcion2 = verdadero hacer 
					
					Limpiar Pantalla;
					
					Escribir "OPCI�N: Calcular Salario Empleado ";
					Escribir "";
					
					Escribir "Ingrese la C�dula a Buscar: ";
					leer cedula;
					
					Para i=0 hasta conta1-1 con paso 1 hacer
						
						
						si cedula = vectorCedula[i] entonces
							
							
							Escribir "Cuantas Horas Trabajadas Realiz�: ";
							Leer horasTrabajadas;
							
							Escribir "Cuanto es el Valor de la Hora: ";
							Leer valorHora;
							
							salario=horasTrabajadas * valorHora;
							vectorSalario[i]=salario;
							
							Escribir "";
							Escribir "El salario a pagar al Empleado ", vectorNombreEmpleado[i], " es: ",salario;
							
							
						FinSi
						
					FinPara
					
					opcionRepetirDecision = verdadero;
					
					Mientras opcionRepetirDecision = verdadero hacer
						
						Escribir "";
						Escribir "1. Repetir Proceso.";
						Escribir "2. Volver al Men� Principal";
						Escribir "3. Salir.";
						leer decision;
						
						Segun decision hacer 
							
							"1":
								
								opcion2=verdadero;
								menu=falso;
								opcionRepetirDecision=falso;
							"2":
								opcion2=falso;
								menu=Verdadero;
								opcionRepetirDecision=falso;
								
							"3":
								opcion2=falso;
								menu=falso;
								opcionRepetirDecision=falso;
								Escribir "Gracias Por Utilizar Nuetro Programa";
								Esperar 5 Segundos;
								
							De Otro Modo:
								
								Escribir "Opci�n Incorrecta, Intente de Nuevo.";
								Esperar 5 Segundos;
								opcionRepetirDecision=Verdadero;
								
						finsegun
						
					FinMientras
					
				FinMientras
			"3"://Opci�n de Consulta de Registros Guardados.
				Limpiar Pantalla;
				
				Si conta1 =0 Entonces 
					
					Escribir "No hay Registros Almacenados.";
					Escribir "Vuelve al Men� Principal para Agregar registros.";
					
					opcionRepetirDecision = verdadero;
					
					Mientras opcionRepetirDecision = verdadero hacer
						
						
						Escribir "";
						Escribir "1. Volver a Men� Principal";
						Escribir "2. Salir";
						leer decision;
						
						Segun decision hacer 
							
							"1":
								
								menu=verdadero;
								opcionRepetirDecision=falso;
							"2":
								menu=falso;
								opcionRepetirDecision=falso;
								Escribir"Gracias por Utilizar este Programa";
								
								De otro modo;
								
								Escribir "Opci�n Incorrecta, Intente de Nuevo.";
								Esperar 5 segundos;
								opcionRepetirDecision= verdadero;
						finsegun
					FinMientras
					
				SiNo
					
					
					Escribir "OPCI�N: Consulta de Registros Guardados";
					Escribir "";
					Escribir "Mira los Registros Guardados.";
					Escribir "";
					
					
					para i=0 hasta conta1-1 con paso 1 hacer
						
						Escribir "C�dula: ", vectorCedula[i];
						Escribir "Nombre: ", vectorNombreEmpleado[i];
						Escribir "Salario pagado: ", vectorSalario[i];
						Escribir "";
					FinPara
					
					opcionRepetirDecision = verdadero;
					
					Mientras opcionRepetirDecision = verdadero hacer
						
						Escribir "";
						Escribir "";
						Escribir "1. Volver a Men� Principal";
						Escribir "2. Salir";
						leer decision;
						
						Segun decision hacer 
							
							"1":
								
								menu=verdadero;
								opcionRepetirDecision=falso;
							"2":
								
								menu=falso;
								opcionRepetirDecision=falso;
								Escribir "Gracias por Usar Nuestro Porgama";
								Esperar 5 Segundos;
								
								De otro modo;
								Escribir "Opci�n Incorrecta, Intente de Nuevo.";
								Esperar 5 segundos;
								opcionRepetirDecision= verdadero;
								
						finsegun
					FinMientras
				FinSi
				
			"4"://Salir del Programa.
				Limpiar Pantalla;
				menu=falso;
				Escribir "Gracias por utilizar Nuestro Programa";
				
				
			De Otro Modo:// En caso de que no seleccione alguna opci�n anterior.
				Limpiar Pantalla;
				
				Escribir "Opci�n Incorrecta, Intente de Nuevo.";
				Esperar 5 segundos;
				menu=falso;
				
				
		FinSegun
	FinMientras
FinProceso
