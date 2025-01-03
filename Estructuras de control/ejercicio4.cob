*> Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
*>ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).


IDENTIFICATION DIVISION.
PROGRAM-ID. While.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero PIC S9(3)V99.
        01 doble  PIC S9(3)V99.
PROCEDURE DIVISION.
    Display "Ingrese un valor: "
    Accept numero
    Move numero to doble
    Compute doble= (doble * 2)
    Perform Until  numero = doble or numero = (doble  * (-1))
        Display "Ingrese un valor: "
        Accept numero
    End-Perform
STOP RUN.
