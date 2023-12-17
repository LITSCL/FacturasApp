Algoritmo main
	
	Definir __monto_factura Como Numero
	
	Dimension __facturas[1000]
	
	__seguir = Verdadero
	__opcion = ""
	__contador = 1
	Mientras __seguir == Verdadero Hacer	
		Escribir "Ingrese monto de la factura:"
		Leer __monto_factura
		__facturas[__contador] = __monto_factura
		Si __contador == 1000 Entonces 
			__seguir = Falso
		FinSi
		Si __seguir <> Falso Entonces 
			Escribir "¿Desea ingresar otro monto? (Si/No)"
			Leer __opcion
		FinSi
		Si __opcion <> "SI" y __opcion <>"si" y __opcion <> "Si" y __opcion <> "sI" Entonces
			__seguir = Falso
		FinSi
		Si __seguir == Falso Entonces
			__calcular_y_mostrar(__facturas)
		FinSi
		__contador = __contador + 1
	FinMientras
	
FinAlgoritmo

Funcion __calcular_y_mostrar(__facturas)
	Dimension __descuentos[4]
	Para i = 1 Hasta 1000 Con Paso 1 Hacer
		Si __facturas[i] >= 1 y __facturas[i] <= 150000 Entonces
			__descuentos[1] = __descuentos[1] + 1
		FinSi
		Si __facturas[i] >= 150000 y __facturas[i] <= 299999 Entonces
			__descuentos[2] = __descuentos[2] + 1
		FinSi
		Si __facturas[i] >= 300000 y __facturas[i] <= 600000 Entonces
			__descuentos[3] = __descuentos[3] + 1
		FinSi
		Si __facturas[i] > 600000 Entonces
			__descuentos[4] = __descuentos[4] + 1
		FinSi
	FinPara
	Escribir "Cantidad de clientes ingresados que clasifican con 05%: " , __descuentos[1]
	Escribir "Cantidad de clientes ingresados que clasifican con 15%: " , __descuentos[2]
	Escribir "Cantidad de clientes ingresados que clasifican con 25%: " , __descuentos[3]
	Escribir "Cantidad de clientes ingresados que clasifican con 45%: " , __descuentos[4]
FinFuncion