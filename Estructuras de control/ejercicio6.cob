*>Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
*>lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
*>Por ejemplo, se lee la siguiente secuencia:
*>33423
*>8.40
*>19003
*>6.43
*>-1
*>En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo
*>19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un promedio).
*>Al finalizar la lectura, informar:
*>a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
*>b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1).
*>c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
*>menor al valor 2500 (en el ejemplo anterior se debería informar 0%).


IDENTIFICATION DIVISION.
PROGRAM-ID. Facultad.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 Legajo     PIC S9(8).
        01 promedio   PIC S9(3)V99.
        01 cantA      PIC 9(6) value 0.
        01 cantAp      PIC 9(6) value 0.
        01 Destacados PIC 9(6) value 0 .
        01 Porcentaje PIC 9(3).
PROCEDURE DIVISION.
    Display "Ingrese Legajo: "
    Accept Legajo
    Perform Until Legajo = -1
        Display "Ingrese Promedio: "
        Accept promedio
        Compute cantA=(cantA + 1)
        IF promedio > 6.50 Then
            Compute  cantAp=(cantAp + 1)
        End-If
        IF Legajo < 2500 and  promedio > 8.5  Then
            Compute Destacados =(Destacados + 1)
        End-If
        Display "Ingrese Legajo: "
        Accept Legajo
    End-Perform
    Display "Cantidad alumnos Leida: "cantA
    Display "Cantidad de alumnos con promedio superior a 6.5: " cantAp
    Compute Porcentaje =(Destacados*100 /cantA)
    Display "El porcentaje de alumnos destacados es: "Porcentaje "%" 

STOP RUN.
