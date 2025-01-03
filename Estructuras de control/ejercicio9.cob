*>Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta) si se ingresa otro
*>carácter, debe informar un error y finalizar..Una vez leído el carácter de suma o resta,deberá leerse 
*>una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
*>con la secuencia de números, e imprimir el resultado final.
*>Por ejemplo:
*>○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
*>○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )



IDENTIFICATION DIVISION.
PROGRAM-ID. Caracteres2.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 caracter   PIC X.
        01 numero     PIC S9(6) value -100000.
        01 Resultado  PIC S9(8).
PROCEDURE DIVISION.
    DISPLAY "Ingrese caracter: "
    Accept caracter
    If caracter <> "+" and caracter <> "-" Then
        Display "Error"
        STOP RUN
    Else
        Perform Until numero = 0
            DISPLAY "Ingrese un numero: "
            Accept numero
            If caracter = "+" Then
                Add numero to Resultado giving Resultado
            Else If caracter = "-" Then
                Subtract numero from Resultado giving Resultado
            End-If
        End-Perform
        Display "resultado : "Resultado
    End-If 
STOP RUN.
