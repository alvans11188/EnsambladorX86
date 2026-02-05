; Ejemplo 3: Overflow flag (OF)
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg db "Resultado (SF): ",0
    buf db 32 dup(0)
    vRes dd ?

.code

start:
    mov eax, 10
    sub eax, 20 ; -10 -> SF = 1

    mov vRes,eax

    invoke dwtoa, vRes, addr buf
    print addr msg
    print addr buf,13,10
    
    exit
end start