;ejemplo 2: mostrar el mismo numero en decimal y hexadecimal

.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    msg1 db "decimal: ",0
    msg2 db "hexadecimal: ",0
    buf db 32 dup(0)
    vNum dd ?
.code
start:
    mov eax,255
    mov vNum,eax
    
    ;mostrar decimal
    invoke dwtoa,vNum,ADDR buf
    print addr msg1
    print addr buf,13,10

    ;mostrar hexadecimal
    print addr msg2
    mov eax,vNum ; se tiene que volver a guardar porque se imprimio anteriormente
    print hex$(eax),13,10

    exit
end start