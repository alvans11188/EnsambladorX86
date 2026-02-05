; Ejemplo 2: carry flag (CF)
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg db "Resultado (CF): ",0
    buf db 32 dup(0)
    vRes dd ?

.code

start:
    mov eax, 3
    sub eax, 5 ; resultado = -2 -> CF = 1

    mov vRes, eax

    invoke dwtoa, vRes, addr buf
    print addr msg
    print addr buf,13,10
    exit
end start