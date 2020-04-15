// Realizar un programa que permita lo siguiente
//A. Registrar Producto.
//B. Realizar Venta de Producto.
//C. Ver Ventas del D�a.
//D. Salir.
//En registrar ventas, se debe almacenar el C�digo de Producto
//En la Segunda Opcion se debe Guardar el C�digo del Producto, Precio, Cantidad
//y Venta Realizada.
// En la tercera Opci�n se debe Visualizar cada una de las Ventas que se hayan
//Realizado en la Opci�n 2
//En la Cuarta opci�n Se Sale del Programa

Proceso VectorVentaNposiciones
	
	Definir venta, totalVenta,i,vectorCodigoProducto,vectorCodigoProductoVendido,vectorPrecio,vectorPrecioProductoVendido,vectorCantidadProductoVendido ,vectorVenta, conta1,conta2,codigo,precio,cantidad,venta como numerico;
	Definir vectorNombreProductoVendido,vectorNombreProducto, nombre,opcionMenuPrincipal,respuesta como texto;
	Definir menu Como Logico;
	
	Dimension vectorCodigoProducto[10000];
	Dimension vectorNombreProducto[10000];
	Dimension vectorPrecio[10000];
	
	Dimension vectorCodigoProductoVendido[10000] ;
	Dimension vectorPrecioProductoVendido[10000];
	Dimension vectorCantidadProductoVendido[10000];
	Dimension vectorNombreProductoVendido[10000] ;
	Dimension vectorVenta[10000];
	Dimension totalVenta[10000];
	conta1=0;
	conta2=0;
	
	menu = Verdadero;
	
	Mientras menu = Verdadero Hacer
		
		Limpiar Pantalla;
		
		Escribir "----------------S.I Tienda Don Saim�n------------------";
		Escribir "";
		Escribir "Men� Principal";
		Escribir "";
		Escribir "A. Registro de Producto.";
		Escribir "B. Realizar Venta de Producto.";
		Escribir "C. Ver Ventas del D�a.";
		Escribir "D. Salir.";
		Leer opcionMenuPrincipal;
		
		opcionMenuPrincipal= Mayusculas(opcionMenuPrincipal);
		
		Segun opcionMenuPrincipal Hacer
			
			"A"://Opci�n Registrar Productos.
				Limpiar Pantalla;
				
				Escribir "OPCION: Registro de Productos.";
				Escribir "";
				Escribir "Ingresa El C�digo de 3 cifras y Nombre de Producto";
				Escribir "";
				
				respuesta="S";
				
				Mientras respuesta ="S" Hacer
					Limpiar Pantalla;
					
					Escribir "Ingresa El C�digo del Producto # ", conta1 + 1 ;
					leer codigo;
					vectorCodigoProducto[conta1]=codigo;
					
					Escribir "Ingresa El Nombre del Producto # ", conta1 + 1 ;
					leer nombre;
					vectorNombreProducto[conta1]=nombre;
					
					Escribir "Ingresa El Precio del Producto # ", conta1 + 1 ;
					leer precio;
					vectorPrecio[conta1]=precio;
					
					conta1= conta1 + 1;
					
					Escribir "";
					Escribir "S - Para Registar otro Producto.";
					Escribir "N - Para Regresar al Men� Principal.";
					Leer respuesta;
					
					respuesta = Mayusculas(respuesta);
					
				FinMientras
			"B"://Opci�n Registar Venta de Producto.
			
				respuesta="S";
				
				Mientras respuesta ="S" Hacer
					Limpiar Pantalla;
					
					Escribir "OPCION: REALIZAR VENTA DE PRODUCTOS.";
					Escribir "";
					Escribir "Registra la Venta de Productos Guardados en el Sistema";
					Escribir "";
					Escribir "PRODUCTOS EN EL SISTEMA.";
					Escribir "";
					Escribir "    CODIGO          -       NOMBRE       -     Precio";
					
					para i=0 hasta conta1 - 1 con paso 1 hacer
						
						Escribir "      ",vectorCodigoProducto[i] ,"         -      ",vectorNombreProducto[i],"        -    ",vectorPrecio[i];
						
					FinPara
					Escribir "";
					Escribir "Ingresa el C�digo de Producto a Comprar";
					leer codigo;
					
					para i=0 hasta conta1 - 1 con paso 1 hacer
						
						Si codigo = vectorCodigoProducto[i] entonces
							
							Escribir "Ingresa La Cantidad a Comprar:", conta2 + 1;
							leer cantidad;
							
							venta= cantidad * vectorPrecio[i];
							
							vectorCodigoProductoVendido[conta2]=vectorCodigoProducto[i];
							vectorNombreProductoVendido[conta2]=vectorNombreProducto[i];
							vectorPrecioProductoVendido[conta2]=vectorPrecio[i];
							vectorCantidadProductoVendido[conta2]=cantidad;
							vectorVenta[conta2]=venta;
							
							conta2=conta2 + 1;
							
							Escribir "";
							Escribir "S - Para Registar otro Producto.";
							Escribir "N - Para Regresar al Men� Principal.";
							Leer respuesta;
							
							respuesta = Mayusculas(respuesta);
							
						FinSi
					FinPara
				FinMientras
			"C"://Opci�n Ver Ventas.
				Limpiar Pantalla;
				totalVenta=0;
				Escribir "OPCION: VER VENTAS DEL D�A.";
				Escribir "";
				Escribir "visualiza la Cantidad de Ventas del D�a ";
				Escribir "";
				Escribir "";
				
				Escribir "    C�digo Producto    -     Precio     -     Cantidad     -     Venta  ";
				
				para i = 0 hasta conta2 -1 con paso 1 hacer 
					
					Escribir "     ", vectorCodigoProductoVendido[i],"    -     ", vectorNombreProductoVendido[i]  ,"    -     ", vectorPrecioProductoVendido[i],  "    -     ", vectorCantidadProductoVendido[i],  "    -     ",vectorVenta[i];
					totalVenta = totalVenta + vectorVenta[i];
					
				FinPara
				
				Escribir "";
				Escribir "";
				Escribir " Presiona una tecla para ir al menu principal ";
				Esperar Tecla;
				
			"D"://Opci�n Salir.
				
				menu = Falso;
				Escribir "Gracias por utilizar éste Software.";
				Esperar 5 segundos;
				
			De Otro Modo:  //En caso de que no se seleccione alguna opción anterior
				
				Escribir "Opci�n Incorrecta.";
				Esperar 5 segundos;
				
				
				
		FinSegun
	FinMientras
FinProceso
