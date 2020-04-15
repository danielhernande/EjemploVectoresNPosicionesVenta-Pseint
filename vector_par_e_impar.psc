//Realizar un algoritmo que permita leer un vector de 10 posiciones 
//donde, el usuario, ingrese datos. el algoritmo deberá vrear un vector
//para guardar los números pares y otro para 
Proceso vector_par_e_impar
	definir num , conta_par , i,vectorNum, vectorpar, vectorimpar , conta_impar como numerico;
	definir valordimensionpar , valordimensionimpar como numerico;
	//crear vector al limite mensionado
	dimension vectorNum[10];
	
	
	conta_impar=0;
	conta_par=0;
	num=0;
	Escribir"Ingresa 10 Números";//agregar numero al vector
	escribir"";
	para i=0 hasta 9 con paso 1 hacer
		
		Escribir "Ingresa un Número ", i+1," :";
		leer num;
		
		mientras num=0 hacer
			escribir"Ingrese el Número", i+1;
			leer num;
		FinMientras
		
		vectorNum[i]=num;
	FinPara
	
	//identificando cuantos numeros hay pares e impares
	para i=0 hasta 9 con paso 1 Hacer
		
		si (vectorNum[i] mod 2)=0 entonces
			
			conta_par=conta_par+1;
			
		sino 
			conta_impar=conta_impar+1;
			
		FinSi
	FinPara
	
	//llenar vectores pares e impares de acuerdo al cáculo del mod.
	Escribir "La Cantidad de Números pares es : ", conta_par;
	Escribir "La Cantidad de Números Impares es : ", conta_impar;
	
	valordimensionpar=0;
	valordimensionimpar=0;
	Dimension vectorpar[conta_par];
	Dimension vectorimpar[conta_impar];

	para i=0 hasta 9 con paso 1 Hacer
		
		si (vectorNum[i] mod 2)=0 entonces
			
			vectorpar[valordimensionpar] = vectornum[i];
			valordimensionpar=valordimensionpar+1;
		sino 
			vectorimpar[valordimensionimpar] = vectornum[i];
			valordimensionimpar=valordimensionimpar+1;
			
		FinSi
	FinPara
	
	Escribir"Los Números pares son : ";
	
	para i =0 hasta conta_par-1 con paso 1 hacer
		
		escribir vectorpar[i];
	
	FinPara
	
	Escribir"Los Números pares son : ";
	para i =0 hasta conta_impar-1 con paso 1 hacer
		
		escribir vectorimpar[i];
		
	FinPara
	

FinProceso
