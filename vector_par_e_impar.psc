//Realizar un algoritmo que permita leer un vector de 10 posiciones 
//donde, el usuario, ingrese datos. el algoritmo deber� vrear un vector
//para guardar los n�meros pares y otro para 
Proceso vector_par_e_impar
	definir num , conta_par , i,vectorNum, vectorpar, vectorimpar , conta_impar como numerico;
	definir valordimensionpar , valordimensionimpar como numerico;
	//crear vector al limite mensionado
	dimension vectorNum[10];
	
	
	conta_impar=0;
	conta_par=0;
	num=0;
	Escribir"Ingresa 10 N�meros";//agregar numero al vector
	escribir"";
	para i=0 hasta 9 con paso 1 hacer
		
		Escribir "Ingresa un N�mero ", i+1," :";
		leer num;
		
		mientras num=0 hacer
			escribir"Ingrese el N�mero", i+1;
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
	
	//llenar vectores pares e impares de acuerdo al c�culo del mod.
	Escribir "La Cantidad de N�meros pares es : ", conta_par;
	Escribir "La Cantidad de N�meros Impares es : ", conta_impar;
	
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
	
	Escribir"Los N�meros pares son : ";
	
	para i =0 hasta conta_par-1 con paso 1 hacer
		
		escribir vectorpar[i];
	
	FinPara
	
	Escribir"Los N�meros pares son : ";
	para i =0 hasta conta_impar-1 con paso 1 hacer
		
		escribir vectorimpar[i];
		
	FinPara
	

FinProceso
