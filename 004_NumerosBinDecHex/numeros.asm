;EJEMPLO 1 : representacion numerica
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg1 db "EAX decimal 25: ",0
    msg2 db "EBX hexadecimal 19h: ",0
    msg3 db "ECX binario 11001b: ",0
    buf db 32 dup(0)

    vEAX dd ?
    vEBX dd ?
    vECX dd ?
.code
start:
    ;cargado de registros
    mov eax,25
    mov ebx,19h
    mov ecx,11001b

    ;guardamos antes que se pierdan los datos
    mov vEAX, eax
    mov vEBX, ebx
    mov vECX, ecx

    ;impresion cada uno desde memoria
    invoke dwtoa, vEAX, addr buf
    print addr msg1
    print addr buf,13,10

    invoke dwtoa, vEBX, addr buf
    print addr msg2
    print addr buf,13,10

    invoke dwtoa, vECX, addr buf
    print addr msg3
    print addr buf,13,10


    exit
end start
