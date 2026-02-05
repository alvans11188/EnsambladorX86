;Ejemplo 2: Division Simple: 250/16 y mostrar el cociente y resto
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg1 db "Cociente: ",0
    msg2 db "Resto: ",0
    buf db 32 dup(0)
    vCoc dd ?
    vRes dd ?
.code
start:
    mov eax,250
    mov edx,0 ; necesario para dividir
    mov ebx,16

    div ebx ; eax = 15, edx = 10

    mov vCoc,eax
    mov vRes, edx
    invoke dwtoa, vCoc, addr buf
    print addr msg1
    print addr buf,13,10

    invoke dwtoa, vRes, addr buf
    print addr msg2
    print addr buf,13,10
    exit
end start