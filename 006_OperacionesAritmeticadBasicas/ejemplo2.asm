;EJEMPLO 2 : resta, increemto , decremento
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    msg1 db "resultado de la resta: ",0
    buf db 32 dup(0)
    v dd ?

.code
start:
    mov eax,50
    sub eax,7 ;resta = 43
    inc eax ; 44
    dec eax ; 43
    mov v,eax

    invoke dwtoa,v,addr buf
    print addr msg1
    print addr buf,13,10

    mov eax,15
    sub eax,27 ;
    mov v,eax

    invoke dwtoa,v,addr buf
    print addr msg1
    print addr buf,13,10
    
    exit
end start