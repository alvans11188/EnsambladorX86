; Ejemplo 3: Overflow flag (OF)
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg db "Resultado (OF): ",0
    buf db 32 dup(0)
    vRes dd ?

.code

start:
    mov al, 127
    add al, 1 ; pasa a -128 -> OF = 1

    movsx eax,al ; extiende AL con sig    

    mov vRes,eax

    invoke dwtoa, vRes, addr buf
    print addr msg
    print addr buf,13,10
    
    exit
end start