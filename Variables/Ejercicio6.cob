*> Realice un programa que informe el valor total en pesos de una transacción en dólares. Para
*> ello, el programa debe leer el monto total en dólares de la transacción, el valor del dólar al día
*> de la fecha y el porcentaje (en pesos) de la comisión que cobra el banco por la transacción. Por
*> ejemplo, si la transacción se realiza por 10 dólares, el dólar tiene un valor 189,32 pesos y el
*> banco cobra un 4% de comisión, entonces el programa deberá informar:
*> La transacción será de 1968,93 pesos argentinos
*> (resultado de multiplicar 10 * 189,32 y adicionarle el 4%)


IDENTIFICATION DIVISION.
PROGRAM-ID. Variables.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 Total       PIC 9(20)V9(2).
        01 Monto       PIC 9(6)V9(2).
        01 Valor_dolar PIC 9(5)V9(2).
        01 Porcentaje  PIC 9(2).
        01 adicional   PIC 9(20)V9(4).
        01 Mensaje1    PIC X(50) value "Ingrese Monto en dolares: ".
        01 Mensaje2    PIC X(50) value "Ingrese Comision: ".
        01 Mensaje3    PIC X(50) value "Ingrese Precio dolar hoy: ".
PROCEDURE DIVISION.
    Display Mensaje3
    accept  Valor_dolar
    Display Mensaje2
    accept  Porcentaje
    Display Mensaje1
    accept  monto
    MULTIPLY monto BY Valor_dolar GIVING Total.
    Display Total
    MULTIPLY Porcentaje By total GIVING adicional
    DIVIDE adicional By 100 GIVING adicional
    Display adicional
    add Total to adicional giving Total
    Display "Su total en pesos es : "Total
STOP RUN.