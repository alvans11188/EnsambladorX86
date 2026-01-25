;Ejercicio 2: Conversion visual
;Objetivo: Carga el numero 255 en un registro  y primero mustralo en decimal, luego en hexadecimal y por ultimo escribi manualmente su representacion en binario
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    msg1 db "decimal:  ",0
    msg2 db "hexadecimal: ",0
    msg3 db "binario : 11111111b ",0
    buf db 32 dup(0)
    tem dd ?
.code
start:
    mov eax,255 ; ingresamos el valor
    mov tem,eax ;guardamos copia de seg
    ;decimal
    invoke dwtoa, tem , addr buf
    print addr msg1
    print addr buf, 13, 10

    ;hexadecimal
    print addr msg2
    mov eax,tem
    print hex$(eax),13,10

    ;binario
    print addr msg3,13,10

    
    exit
end start
