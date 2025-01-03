*>Implemente un programa que lea dos números reales e imprima el resultado de la división de
*>los mismos con una precisión de dos decimales. Por ejemplo, si se ingresan los valores 4,5 y 7,2,
*>debe imprimir: El resultado de dividir 4,5 por 7,2 es 0,62

 





IDENTIFICATION DIVISION.
PROGRAM-ID. Decimales.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero1     PIC 9(6)v9(4).
        01 numero2     PIC 9(6)v9(4).
        01 resultado   PIC 9(6)v9(2).
PROCEDURE DIVISION.
    Display "Ingrese un valor: "
    accept  numero1
    Display "Ingrese un valor: "
    accept  numero2
    divide numero1 by numero2 giving resultado
    Display "El resultado de la divicion de : " numero1 " y " numero2 " es: "resultado
STOP RUN.
