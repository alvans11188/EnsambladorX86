;EJEMPLO 2 , PILAS
;APILAR 3 NUMEROS 10,20,30 luego desapilarlos y mostrarlos en pantalla
;explicar como cambia ESP tras cada operacion
.386
.model flat,stdcall
option casemap:none

include C:/masm32/include/masm32rt.inc

.data;colocacion de variables
    val1 dd 10
    val2 dd 20
    val3 dd 30
    msgHdr db "Simulando pila (LIFO): ",0 ;LIFO last in firt out
    msgPop db "POP - EAX = ",0
    buf db 32 dup(0)

.code

start:
    print addr msgHdr,13,10
    ;empujo de los valores (no las direcciones)
    push dword ptr val1 ;equivale a mox eax, val1 /push eax
    push dword ptr val2
    push dword ptr val3 ;3 es el primero en valir  por ser estructura LIFO

    ;1Primer Pop
    pop eax
    invoke dwtoa, eax, addr buf
    print addr msgPop
    print addr buf,13,10

    ;2Segundo Pop
    pop eax
    invoke dwtoa, eax, addr buf
    print addr msgPop
    print addr buf,13,10

    ;3Tercero Pop
    pop eax
    invoke dwtoa, eax, addr buf
    print addr msgPop
    print addr buf,13,10
    exit
end start