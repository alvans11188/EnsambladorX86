;Ejercicio 1: Predecir FLAGS con SUB
; Enunciado:
; mov eax, 10
; sub eax, 10
;Resultado final : 0
;Flags esperadas:
; FLAG  Estado
;  ZF      1
;  SF      0
;  CF      0
;  OF      0
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
    mov eax, 10
    sub eax, 10 ; 0 -> ZF = 1

    mov vRes,eax

    invoke dwtoa, vRes, addr buf
    print addr msg
    print addr buf,13,10
    
    exit
end start