*>Realice un programa que lea 10 números e informe cuál fue el mayor número leído. además de informar 
*>el mayor número leído,se informe el número de orden, dentro de la secuencia,en el que fue leído.
*>Por ejemplo, si se lee la secuencia:

*>3 5 6 2 3 10 98 8 -12 9
*>deberá informar: “El mayor número leído fue el 98, en la posición 7”




IDENTIFICATION DIVISION.
PROGRAM-ID. Ejercicio11.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero   PIC 9(6).
        01 maxim    PIC S9(8) value -10000.
        01 cant     PIC 9(6)  value 0.
        01 maxxcant PIC 9(6)  value 0.
PROCEDURE DIVISION.
    Perform 10 Times    
        Display "Ingrese un valor"
        Accept numero
        Compute cant= (cant + 1)
        If numero > maxim Then
            Move numero to maxim
            Move cant to maxxcant
        End-If
    End-Perform
    Display "El mayor número leído fue el : "maxim " en la posición: "maxxcant
STOP RUN.
