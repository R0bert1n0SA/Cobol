*> Realizar un programa que lea un número real e imprima su valor absoluto.  
*> El valor absoluto de un número X, se escribe |X| y se define como:  
*> |X| = X cuando X es mayor o igual a cero  
*> |X| = -X cuando X es menor a cero  


IDENTIFICATION DIVISION.
PROGRAM-ID. Valor-Absoluto.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero1 PIC S9(3)v99.
PROCEDURE DIVISION.
    Display "Ingrese un valor: "
    Accept numero1
    IF numero1 >= 0 Then
        Display "Valor Absoluto :" numero1
    End-IF
    IF numero1 < 0 Then
        compute numero1=(numero1 * (-1))
        Display "Valor Absoluto :" numero1 
    End-IF    
STOP RUN.
