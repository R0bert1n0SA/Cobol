*>Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
*>uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
*>vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”.
*>
*>
*>
*>
*>
*>

IDENTIFICATION DIVISION.
PROGRAM-ID. Caracteres.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 caracter PIC X.
        01 cant     PIC 9(3).
        01 vocales  PIC 9(4).
PROCEDURE DIVISION.
    Perform Until cant = 3
        DISPLAY "Ingrese caracter: "
        Accept caracter
        Compute  cant=(cant + 1)
        If caracter = "a" OR caracter = "e" OR caracter = "i" OR caracter = "o" OR caracter = "u" 
        OR caracter = "A" OR caracter = "E" OR caracter = "I" OR caracter = "O" OR caracter= "U" Then
            Compute  vocales=(vocales + 1)
        End-If
    End-Perform
    If vocales = 3 Then
        Display "Los tres son vocales"
    Else
        Display "al menos un carácter no era vocal"
    End-If
STOP RUN.
