*>Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
*>además informe la cantidad de números mayores a 5.


IDENTIFICATION DIVISION.
PROGRAM-ID. Ejercicio10.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero PIC 9(6).
        01 suma   PIC 9(8) value 0.
        01 cant   PIC 9(6) value 0.
PROCEDURE DIVISION.
    Perform 10 Times    
        Display "Ingrese un valor"
        Accept numero
        Compute suma=(suma + numero)
        If numero > 5 Then
            Compute cant=(cant + 1)
        End-If
    End-Perform
    Display "La suma total es : "suma
    Display "Numeros mayores a 5: "cant
STOP RUN.
