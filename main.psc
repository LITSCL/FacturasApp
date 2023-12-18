Algoritmo main
	
	Definir __monto_factura Como Numero
	
	Dimension __facturas[1000, 3]
	
	__seguir = Verdadero
	__opcion = ""
	__contador = 1
	Mientras __seguir == Verdadero Hacer	
		Escribir "Ingrese monto de la factura:"
		Leer __monto_factura
		__facturas[__contador, 1] = __monto_factura
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
		Si __facturas[i, 1] >= 1 y __facturas[i, 1] <= 150000 Entonces
			__descuentos[1] = __descuentos[1] + 1
			__facturas[i, 2] = 5
			__facturas[i, 3] = __facturas[i, 1] * 0.95
		FinSi
		Si __facturas[i, 1] >= 150000 y __facturas[i, 1] <= 299999 Entonces
			__descuentos[2] = __descuentos[2] + 1
			__facturas[i, 2] = 15
			__facturas[i, 3] = __facturas[i, 1] * 0.85
		FinSi
		Si __facturas[i, 1] >= 300000 y __facturas[i, 1] <= 600000 Entonces
			__descuentos[3] = __descuentos[3] + 1
			__facturas[i, 2] = 25
			__facturas[i, 3] = __facturas[i, 1] * 0.75
		FinSi
		Si __facturas[i, 1] > 600000 Entonces
			__descuentos[4] = __descuentos[4] + 1
			__facturas[i, 2] = 45
			__facturas[i, 3] = __facturas[i, 1] * 0.55
		FinSi
	FinPara
	Escribir "Cantidad de clientes ingresados que clasifican con 05%: " , __descuentos[1]
	Escribir "Cantidad de clientes ingresados que clasifican con 15%: " , __descuentos[2]
	Escribir "Cantidad de clientes ingresados que clasifican con 25%: " , __descuentos[3]
	Escribir "Cantidad de clientes ingresados que clasifican con 45%: " , __descuentos[4]
	Escribir "--------------------------------------------------------"
	Para i = 1 Hasta 1000 Con Paso 1 Hacer
		Si __facturas[i, 1] <> 0 Entonces
			Escribir "Facturación: " , "$" , __facturas[i, 1] , " | Porcentaje: " , __facturas[i, 2] , "%" , " | Total: " , __facturas[i, 3]
		FinSi
	FinPara
FinFuncion