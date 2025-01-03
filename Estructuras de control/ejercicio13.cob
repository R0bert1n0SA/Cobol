*>Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
*>ingrese el número 100, el cual debe procesarse. Informar en pantalla:
*>◦ El número máximo leído.
*>◦ El número mínimo leído.
*>◦ La suma total de los números leídos.




IDENTIFICATION DIVISION.
PROGRAM-ID. Ejercicio13.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero    PIC S9(5) value -10000.
        01 MAXX      PIC S9(8) value -99999999.
        01 MINN      PIC S9(6) value 999999.
        01 suma     PIC 9(6)  value 0.
PROCEDURE DIVISION.
    Perform Until numero = 100    
        Display "Ingrese numero: "
        Accept numero
        Compute suma =(suma + numero)
        If numero > MAXX Then
            Move numero to MAXX
        End-If    
        IF numero < MINN Then
            Move numero to MINN
        End-If
    End-Perform
    Display "Maximo : "MAXX " Minimo : "MINN " Suma : " suma
STOP RUN.
