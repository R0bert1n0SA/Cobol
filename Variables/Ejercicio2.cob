*> Implemente un programa que lea por teclado dos números enteros e imprima en pantalla los
*>valores leídos en orden inverso. Por ejemplo, si se ingresan los números 4 y 8, debe mostrar el
*> mensaje: Se ingresaron los valores 8 y 4




IDENTIFICATION DIVISION.
PROGRAM-ID. Leer-y-Mostrar.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 numero1     PIC 9(6).
        01 numero2     PIC 9(6).
PROCEDURE DIVISION.
    Display "Ingrese un valor: "
    accept  numero1
    Display "Ingrese un valor: "
    accept  numero2
    Display "Se ingresaron los valores " numero2 " y "numero1
STOP RUN.
