*> Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
*>dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
*>son iguales”.

IDENTIFICATION DIVISION.
PROGRAM-ID. Verificar-Mayor.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero1 PIC 9(3).
        01 numero2 PIC 9(3).
PROCEDURE DIVISION.
    Display "Ingrese un valor: "
    Accept numero1
    Display "Ingrese un valor: "
    Accept numero2
    IF numero1 > numero2 Then
        Display numero1
    End-IF
    IF numero2 > numero1 Then
        Display numero2
    End-IF    
    IF numero1 = numero2 Then
        Display "Los números leídos son iguales"
    End-IF
STOP RUN.
