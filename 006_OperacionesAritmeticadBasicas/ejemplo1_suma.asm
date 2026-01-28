;EJEMPLO 1: SUMA CON ADD
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    msg1 db "resultado de la suma: ",0
    buf db 32 dup(0)
    v dd ?

.code
start:
    mov eax,15
    add eax,27 ;suma de 15 + 27
    mov v,eax

    invoke dwtoa,v,addr buf
    print addr msg1
    print addr buf,13,10
    
    exit
end start