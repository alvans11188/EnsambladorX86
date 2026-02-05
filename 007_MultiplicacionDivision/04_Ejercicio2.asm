;Ejercicio 2: Division con resto
; Objetivo: Dividir 144 / 12
; Mostrar: Cociente y resto
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg1 db "1- Cociente: ",0
    msg2 db "2- Resto: ",0
    buf db 32 dup(0)
    vCoc dd ?
    vRes dd ?
.code
start:
    mov eax, 144
    mov edx, 0
    mov ebx, 12
    
    div ebx ; eax: cociente , edx: resto

    mov vCoc, eax
    mov vRes, edx

    invoke dwtoa, vCoc, addr buf
    print addr msg1
    print addr buf,13,10

    invoke dwtoa, vRes, addr buf
    print addr msg2
    print addr buf,13,10

    exit
end start