*>Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo cantidades
*>iguales entre todos los clientes. Los que le sobren se los quedará para él.
*>a. Realice un programa que lea la cantidad de caramelos que posee el kiosquero (X), la
*>cantidad de clientes (Y), e imprima en pantalla un mensaje informando la cantidad de
*>caramelos que le corresponderá a cada cliente, y la cantidad de caramelos que se
*>quedará para sí mismo.
*>b. Imprima en pantalla el dinero que deberá cobrar el kiosquero si cada caramelo tiene un
*>valor de $1.60.



IDENTIFICATION DIVISION.
PROGRAM-ID. Kiosko.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 cantidad  PIC 9(6).
        01 clientes  PIC 9(6).
        01 Resto     PIC 9(6).
        01 Precio    PIC 9(7)v99.
PROCEDURE DIVISION.
    Display "Ingrese cantidad de caramelos: "
    accept   cantidad
    Display "Ingrese cantidad de clientes: "
    accept   clientes
    divide  cantidad by clientes giving cantidad Remainder Resto
    Compute Precio = (1.60 * (cantidad * clientes))
    multiply cantidad by clientes giving cantidad
    Display "El sobrante es : " Resto 
    Display "El caramelos vendidos: " cantidad 
    Display "El Precio es :" Precio
STOP RUN.
