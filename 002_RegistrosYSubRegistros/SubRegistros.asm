; 2: Ejemplo 2 : subregistros (AH, AL)
.386 ; indica que se usara el conjunto de isntrucciones 386 que es el modelo de 32 bits
.model flat, stdcall ; lalmadas estandar
option casemap:none; no diferencia entre mayusculas y minuculas

include C:/masm32/include/masm32rt.inc

.data
    msg0 db "Inicial EAX = ", 0
    msg1 db "Tras Al = FFh -> EAX = ", 0
    msg2 db "Tras AH = AAh -> EAX =", 0
    msg3 db "Tras AX = BEEFh -> EAX = ", 0 
    buf db 32 dup(0)
    tmp dd ?
.code
start:
    mov eax, 12345678h; 12 34 56 78 se esta cargando el registro

    ;---Mostrar inicial---
    mov tmp, eax ; aca se esta guardando eax en tmp por seguridad
    print addr msg0; luego se mostrara el texto msg0
    ;hex$ usa EAX como fuente, cargando desde tmp para no depender del estado
    mov eax, tmp ; restauramos eax desde tmp se hace esto para evitar que print o hex mantengan algun valor anterior
    print hex$(eax),13,10 ; imprimimos su valor 

    ;---cambiar AL---
    mov eax,tmp
    mov al, 0FFh ; hacemos que los bits bajos los cambiamos  FF
    mov tmp, eax
    print addr msg1
    mov eax,tmp
    print hex$(eax),13,10

    ;---cambiar AH---
    mov eax,tmp
    mov ah, 0AAh ; hacemos que los bits altos cambien a AA
    mov tmp, eax
    print addr msg2
    mov eax,tmp
    print hex$(eax),13,10

    ;---cambiar AX completo---
    mov eax,tmp
    mov ax, 0BEEFh ; hacemos que ambos tipos de bits cambien
    mov tmp, eax
    print addr msg3
    mov eax,tmp
    print hex$(eax),13,10
    exit

end start
