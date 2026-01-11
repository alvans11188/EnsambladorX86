;EJEMPLO 1 , DIRECCIONES DE VARIABLE
; se puede observar como el ensamblador maneja las direcciones de las variables
;en el modelo flat 32 bits, cada variable (var1,var2..) tiene una direccion lineal unica
; el coamdno offset obtiene esa direccion , luego la convierte a texto y la imprime
.386
.model flat,stdcall
option casemap:none

include C:/masm32/include/masm32rt.inc

.data
    var1 dd 100
    var2 dd 200
    msg1 db "Direccion de var 1 = ",0
    msg2 db "Direccion de var 2 = ",0
    msgDS db "DS en modelo flat: memoria lineal unica",0
    buf db 32 dup(0)
.code
start:
    ;--var1
    mov eax, offset var1        ;1- Guardado de la direccion lineal eax
    invoke dwtoa, eax, addr buf ;2- paso eax  a ascii dentro de buf 
    print addr msg1       ;3- imprimir la etiqueta
    print addr buf,13,10        ;4- impresion del valor

    ;--var2
    mov eax, offset var2        ;1- Guardado de la direccion lineal eax
    invoke dwtoa, eax, addr buf ;2- paso eax  a ascii dentro de buf 
    print addr msg2       ;3- imprimir la etiqueta
    print addr buf,13,10        ;4- impresion del valor

    print addr msgDS,13,10 
    exit
end start