;Ejercicio 1: Multiplicacion encadenada.
;Objetivo: Cargar: EAX =7
; Multiplicarlo por 6
; Luego multiplicarlo por 3
; Mostrar el resultado

.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msg1 db "1- Multiplicacion 7 * 6: ",0
    msg2 db "2- Multiplicacion (anterior) * 3: ",0
    buf db 32 dup(0)
    vRes dd ?
.code
start:
    mov eax,7
    mov ebx,6
    mul ebx

    mov vRes, eax

    invoke dwtoa, vRes, addr buf
    print addr msg1
    print addr buf,13,10

    mov eax, vRes
    mov ebx, 3
    mul ebx

    mov vRes,eax

    invoke dwtoa, vRes, addr buf
    print addr msg2
    print addr buf,13,10
    exit
end start