*>Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
*>se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
*>- Los códigos de los dos productos más baratos.
*>- La cantidad de productos de más de 16 pesos con código par.


IDENTIFICATION DIVISION.
PROGRAM-ID. Ejercicio14.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 cod    PIC 9(5).
        01 Precio PIC 9(8)v99.
        01 MINN   PIC 9(6) value 999999.
        01 MINN2  PIC 9(6) value 999999.
        01 cant   PIC 9(6) value 0.
PROCEDURE DIVISION.
    Perform 4 TIMES    
        Display "Ingrese codigo de producto: "
        Accept cod
        Display "Ingrese Precio de producto: "
        Accept Precio
        If Precio > 16 Then
            Compute cant =(cant + 1)
        End-If
        
        If Precio < MINN Then
            Move cod to MINN
        End-If
        
        IF Precio < MINN2 Then
            Move cod to MINN2
        End-If
        
    End-Perform
    Display "Productos mas baratos : "MINN " y "MINN2 " Productos de mas de 16 pesos: "cant
STOP RUN.
