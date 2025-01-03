*>Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
*>reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
*>número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.
*>
*>
*>
*>

IDENTIFICATION DIVISION.
PROGRAM-ID. While-p2.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero PIC S9(3)V99.
        01 doble  PIC S9(3)V99.
        01 cant   PIC 9(2) value 0.
PROCEDURE DIVISION.
    Display "Ingrese un valor: "
    Accept numero
    Compute cant=(cant + 1)
    Move numero to doble
    Compute doble= (doble * 2)
    Perform Until  (cant = 10) or (numero = doble or numero = (doble  * (-1))) 
        Display "Ingrese un valor: "
        Accept numero
        Compute cant=(cant + 1)
    End-Perform
    IF cant = 10  Then
        Display "No se ha ingresado el doble de X"
    End-If
STOP RUN.
