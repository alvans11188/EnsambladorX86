;Ejemplo 1: Multiplicacion Simple: 12 * 9 y mostrar el resultado
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg1 db "Resultado: ",0
    buf db 32 dup(0)
    vRes dd ?
.code
start:
    mov eax, 12
    mov ebx,9
    mul ebx ; eax = 108

    mov vRes, eax
    invoke dwtoa, vRes, addr buf
    print addr msg1
    print addr buf,13,10

    exit
end start