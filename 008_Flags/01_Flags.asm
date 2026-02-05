; Ejemplo 1: zero flag (ZF)
.386
.model flat, stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    msg db "Resultado (ZF): ",0
    buf db 32 dup(0)
    vRes dd ?

.code

start:
    mov eax, 5
    sub eax,5 ; resultado = 0 -> fz=1

    mov vRes, eax

    invoke dwtoa, vRes, addr buf
    print addr msg
    print addr buf,13,10 ; imprimir = 0
    exit
end start