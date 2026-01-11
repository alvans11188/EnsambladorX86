;ejemplo 1 mostrar registros su contenido
;imprimir registros sin ser corrompidos (usando dwtoa)

.386 ; indica que se estara el conjunto de instrucciones 386 que es el modo de 32 bits  
.model flat, stdcall ; modelo de llamada planos siendo una convencion de llamdas estandar
option casemap:none ; evita que se tengan problemas con mayusculas y minusculas 
include C:/masm32/include/masm32rt.inc; incluye 

.data
    t1 db "EAX = ",0 ;declara cadenas terminadas en 0
    t2 db "EBX = ",0
    t3 db "ECX = ",0
    t4 db "EDX = ",0
    buf db 32 dup(0) ; crea un buffer de 32 bits vacios para convertir numeros a texto
    vEAX dd ? ; dd? declara una variable de 32 bits sin inicializar
    vEBX dd ?
    vECX dd ?
    vEDX dd ?

.code
start:
    ;cargar registros
    mov eax, 2025
    mov ebx, 64
    mov ecx, 1234
    mov edx, 777

    ;guardado de valores en memoria antes de limpiar
    mov vEAX, eax
    mov vEBX, ebx
    mov vECX, ecx
    mov vEDX, edx

    ; --EAX
    invoke dwtoa, vEAX, addr buf;convierte DWORD (32bits)  -> ASCII en buf
    print addr t1; imprimer la cadena literal "EDX"
    print addr buf,13,10 ;imprime el numero convertido el 13 10 son saltos de linea

    ; --EBX
    invoke dwtoa, vEBX, addr buf
    print addr t2
    print addr buf,13,10

    ; --ECX
    invoke dwtoa, vECX, addr buf
    print addr t3
    print addr buf,13,10

    ; --EDX
    invoke dwtoa, vEDX, addr buf
    print addr t4
    print addr buf,13,10

    exit ; se termina el programa
end start