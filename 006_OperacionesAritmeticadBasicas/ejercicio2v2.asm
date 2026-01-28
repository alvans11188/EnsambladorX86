; Ejercicio 2: INC y DEC encadenados
; Objetivo: Cargar 10 en EBX.
; Aplicar esta secuencia: 
; 1INC
; 2INC
; 3DEC
; 4INC
; 5DEC
; 6DEC
; Mostrar el resultado final.
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg0  db "Numero nicial: ",0
    msg1 db "incremento: ",0
    msg2 db "decremento: ",0
    buf db 32 dup(0)
    v dd ?
.code
start:
    mov ebx,10
    mov v,ebx
    invoke dwtoa,v,addr buf
    print addr msg0
    print addr buf,13,10

    inc ebx
    mov v,ebx
    ;incremento
    invoke dwtoa,v,addr buf
    print addr msg1
    print addr buf,13,10

    ;incremento
    inc ebx
    mov v,ebx
    invoke dwtoa,v,addr buf
    print addr msg1
    print addr buf,13,10

    ;decremento
    dec ebx
    mov v,ebx
    invoke dwtoa,v,addr buf
    print addr msg2
    print addr buf,13,10

    ;incremento
    inc ebx
    mov v,ebx
    invoke dwtoa,v,addr buf
    print addr msg1
    print addr buf,13,10
    ;decremento
    dec ebx
    mov v,ebx
    invoke dwtoa,v,addr buf
    print addr msg2
    print addr buf,13,10
    ;decremento
    dec ebx
    mov v,ebx
    invoke dwtoa,v,addr buf
    print addr msg2
    print addr buf,13,10
    exit
end start