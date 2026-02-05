;Ejercicio 2: Overflow con suma
;Enunciado;
; mov al, 127
; add al, 2
; Resultado final: -127
; FLAGS esperadas
; FLAG  Estado
;  ZF      0
;  SF      1
;  CF      0
;  OF      1
.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg db "Resultado (SF): ",0
    buf db 32 dup(0)
    vRes dd ?

.code

start:
    mov al, 127
    add al, 2

    movsx eax, al

    mov vRes,eax
    
    invoke dwtoa, vRes, addr buf
    print addr msg
    print addr buf,13,10
    
    exit
end start