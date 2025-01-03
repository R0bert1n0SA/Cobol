*> Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
*>Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10
 


IDENTIFICATION DIVISION.
PROGRAM-ID. Valor-Absoluto.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero1 PIC S9(3).
        01 numero2 PIC S9(3).
        01 numero3 PIC S9(3).
        01 temp    PIC S9(3).
PROCEDURE DIVISION.
    Display "Ingrese un valor: "
    Accept numero1
    Display "Ingrese un valor: "
    Accept numero2
    Display "Ingrese un valor: "
    Accept numero3
    IF numero1 < numero2
        Move numero1 to temp
        Move numero2 to numero1
        Move temp to numero2
    End-if
    
    IF numero1 < numero3
        Move numero1 to temp
        Move numero3 to numero1
        Move temp to numero3
    End-if
    
    IF numero2 < numero3
        Move numero2 to temp
        Move numero3 to numero2
        Move temp to numero3
    End-if
    
    Display  numero1 numero2 numero3 
STOP RUN.
