*>Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
*>almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
*>Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
*>10% al precio anterior.
*>Por ejemplo:
*>○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
*>aumento de precio del producto 10382 no supera el 10%”
*>○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
*>aumento de precio del producto 32767 es superior al 10%”




IDENTIFICATION DIVISION.
PROGRAM-ID. Productos.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 cod     PIC 9(7) value 0.
        01 PrecioA PIC 9(6)v9(3).
        01 PrecioN PIC 9(6)v9(3).
        01 Porcent PIC 9(3)v99.
PROCEDURE DIVISION.
    Perform Until cod = 32767
        DISPLAY "Ingrese Codigo de Producto: "
        Accept cod
        DISPLAY "Ingrese el precio actual de Producto: "
        Accept PrecioA
        DISPLAY "Ingrese el nuevo precio de Producto: "
        Accept PrecioN
        Compute Porcent=((PrecioN - PrecioA)/PrecioA)*100
        Display Porcent
        If Porcent > 10 Then
            Display "El aumento de precio del producto "cod " es superior al 10%"
        Else
            Display "El aumento de precio del producto "cod " no es superior al 10%"
        End-If
    End-Perform
STOP RUN.
