*>Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
*>Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
*>número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
*>procesarse. Al finalizar la lectura informar:
*>- La cantidad de alumnos aprobados (nota 8 o mayor) y
*>- la cantidad de alumnos que obtuvieron un 7 como nota. 


IDENTIFICATION DIVISION.
PROGRAM-ID. Ejercicio12.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 Nombre    PIC A(30).
        01 nota      PIC 9(8).
        01 cantA     PIC 9(6)  value 0.
        01 Cant7     PIC 9(6)  value 0.
PROCEDURE DIVISION.
    Perform Until Nombre = "Zidane Zinedine"    
        Display "Ingrese Nombre del alumno: "
        Accept Nombre
        Display "Ingrese nota: "
        Accept nota
        If nota >= 8 Then
            Compute cantA= (cantA + 1)
        Else IF nota = 7 Then
            Compute Cant7= (Cant7 + 1)
        End-If
    End-Perform
    Display "Aprobados : "cantA " alumnos con 7: "Cant7
STOP RUN.
