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
    msg0  db "resultado: ",0
    msg1 db "Incremento: ",0
    msg2 db "Decremento: ",0
    buf db 32 dup(0)
    v dd ?
.code
start:
    mov ebx,10
    ;mov v,ebx
    ; 1incremento
    inc ebx;11
    ; 2incremento
    inc ebx;12
    ; 3decremento
    dec ebx;11
    ; 4incremento
    inc ebx;12
    ; 5decremento
    dec ebx;11
    ; 6decremento
    dec ebx;10
    mov v,ebx
    invoke dwtoa,v,addr buf ; dwtoa modifica los registros
    print addr msg0
    print addr buf,13,10

    exit
end start
