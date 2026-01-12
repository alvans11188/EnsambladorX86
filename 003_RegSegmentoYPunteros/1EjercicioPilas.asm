;Ejercicio 1: Imprimir direcciones
; Objetivo: declara tres valores (x, y, z) en la seccion .data.
;Mostra sus direcciones (offset) y un texto que diga "modo flat activo - segmentos unificados".

.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    x dd 10
    y dd 20
    z dd 30
    msg1 db "modo flat activo - segmentos unificados ",0
    buf db 32 dup(0)
.code

start:
    ;--x
    mov eax, offset x
    invoke dwtoa, eax, addr buf
    print addr buf, 13,10

    ;--y
    mov eax, offset y
    invoke dwtoa, eax, addr buf
    print addr buf, 13,10

    ;--z
    mov eax, offset z
    invoke dwtoa, eax, addr buf
    print addr buf, 13,10

    print addr msg1,13,10
    exit
end start