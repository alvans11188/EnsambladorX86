;EJERCICIO 2: sub registros AL,AH
; cargar en EAX el valor 12345678h
; luego cambiar solo AL y solo AH , mostrando despeus de cada cambio el valor completo de EAX en hexadecimal

.386
.model flat,stdcall
option casemap:none

include C:/masm32/include/masm32rt.inc

.data
    ;variables , texto, definir espacios de memoria
    
    buf db 32 dup(0)
    tmp dd ?
    msg0 db "Fin del programa ",0
    msg1 db "Cambios a AL ",0
    msg2 db "Cambios a AH ",0
.code

start: ; similar al int main()
    mov eax, 12345678h
    
    ;mostrado inicial
    mov tmp, eax
    mov eax,tmp
    print hex$(eax),13,10

    ;--cambio AL
    mov eax,tmp
    mov al, 0CDh
    mov tmp, eax
    print addr msg1,13,10
    mov eax,tmp
    print hex$(eax),13,10

    ;cambios AH
    mov eax, tmp
    mov ah, 0ABh
    mov tmp,eax
    print addr msg2,13,10
    mov eax,tmp
    print hex$(eax),13,10
    ;FIN
    print addr msg0,13,10
    exit ; similar al return 0, solo q este si es obligatorio
end start