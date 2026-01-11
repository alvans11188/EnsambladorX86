.386
.model flat,stdcall
option casemap:none

include C:/masm32/include/masm32rt.inc

.data
    mensaje db "Hola mundo desde una variable de MASM32!" , 0

.code
start:
; Ejercicio 1: Modificar el print literal por un mensaje personalizado con nuestro nombre
    print chr$("Hola mundo, Mi nombre es Alexander"), 13,10
    ;Ejercicio 2: mensaje desde una variable
    print addr mensaje,13,10 
    exit
end start


