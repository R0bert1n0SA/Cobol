*>Implemente un programa que lea el diámetro D de un círculo e imprima:
*>a. El radio (R) del círculo (la mitad del diámetro).
*>b. El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R(2)
*>c. El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula
*>D*PI (o también PI*R*2).




IDENTIFICATION DIVISION.
PROGRAM-ID. Formula-matematica.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 Diametro  PIC 9(6)v9(4).
        01 Radio     PIC 9(6)v9(4).
        01 AreaC     PIC 9(6)v9(2).
        01 Perimetro PIC 9(6)v9(6).
PROCEDURE DIVISION.
    Display "Ingrese Diametro del circulo: "
    accept   Diametro
    divide  Diametro by 2 giving Radio
    multiply Radio by Radio giving AreaC
    multiply 3.14  by AreaC giving AreaC
    multiply 3.14  by Diametro giving Perimetro
    Display "El Radio es: " Radio 
    Display "El Area es: " AreaC 
    Display "El Perimetro es :" Perimetro
STOP RUN.
