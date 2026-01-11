;Ejercicio 1: mostrar los registros
;cargar valores distintos por EAX, EBX ECX EDX y mostrarlos por pantalla decimal
;al acabar agregar una linea que diga fin del programa

.386
.model flat,stdcall
option casemap:none

include C:/masm32/include/masm32rt.inc

.data
    vEAX dd ?
    vEBX dd ?
    vECX dd ?
    vEDX dd ?
    msg0 db "Fin del programa ",0
    buf dd 32 dup(0)
    msg1 db "METODO INVOKE ",0

.code
start:
    mov eax, 1111
    mov ebx, 2222
    mov ecx, 3333
    mov edx, 4444

    mov vEAX, eax
    mov vEBX, ebx
    mov vECX, ecx
    mov vEDX, edx

    

    print hex$(vEAX),13,10
    print hex$(vEBX),13,10
    print hex$(vECX),13,10
    print hex$(vEDX),13,10

    print addr msg0,13,10

    print str$(vEAX),13,10
    print str$(vEBX),13,10
    print str$(vECX),13,10
    print str$(vEDX),13,10
    
    print addr msg1,13,10

    invoke dwtoa, vEAX, addr buf
    print addr buf,13,10
    invoke dwtoa, vEBX, addr buf
    print addr buf,13,10
    invoke dwtoa, vECX, addr buf
    print addr buf,13,10
    invoke dwtoa, vEDX, addr buf
    print addr buf,13,10

    exit
end start

