; Ejercicio 1: Representaciones equivalentes
;Objetivo: Carga en EAX, EBX, ECX el valor 25, expresando respectivamente en decimal, hexadecimal y en binario
;luego mostralos en pantalla para comprobar que los 3 son iguales
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    msg1 db "decimal 25: ",0
    msg2 db "hexadecimal 19h: ",0
    msg3 db "binario 11001b : ",0
    buf db 32 dup(0)
    vEAX dd ?
    vEBX dd ?
    vECX dd ?
.code
start:
    ;mostrar decimal
    mov eax,25
    mov vEAX,eax
    
    invoke dwtoa, vEAX, addr buf
    print addr msg1
    print addr buf,13,10

    ;mostrar hexadecimal
    mov ebx, 19h ; 25 en hexadecimal
    mov vEBX,ebx
    invoke dwtoa, vEBX, addr buf
    print addr msg2
    print addr buf,13,10
    
    ;mostrar binario
    mov ecx,11001b ; en binario es 25
    mov vECX,ecx
    invoke dwtoa, vECX, addr buf
    print addr msg3
    print addr buf,13,10

    exit
end start