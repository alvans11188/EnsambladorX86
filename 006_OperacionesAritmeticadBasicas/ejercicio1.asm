; Ejercicio 1: Suma y resta basica.
; Objetivo: Cargar en EAX el valor 100
; Restarle 25
; Sumarle 7
; Restarle 50.
; Mostrar el resultado final por pantalla
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    msg0 db "CARGADO DE DATO: ",0
    msg1 db "1- RESTA DE 25 :  ",0
    msg2 db "2- SUMA DE 7: ",0
    msg3 db "3- RESTA DE 50: ",0
    buf db 32 dup(0)
    v dd ?
.code
start:
    mov eax,100
    mov v,eax
    invoke dwtoa,v,addr buf
    print addr msg0
    print addr buf,13,10

    ;RESTA 25
    mov eax,v
    sub eax,25
    mov v,eax  
    invoke dwtoa,v,addr buf
    print addr msg1
    print addr buf,13,10

    ;SUMA 7
    mov eax,v
    add eax,7
    mov v,eax
    invoke dwtoa,v, addr buf
    print addr msg2
    print addr buf,13,10
    
    ;RESTA 50
    mov eax,v
    sub eax,50
    mov v,eax
    invoke dwtoa,v,addr buf
    print addr msg3
    print addr buf,13,10
    
    exit
end start