; Calculadora - SUMA (A + B) 
.386
.model flat, stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc

.data
    
    msgTitle db " === SUMA (A + B) === ",13, 10, 0
    msgA     db "Ingrese A: ", 0
    msgB     db "Ingrese B: ", 0
    msgRes   db "Resultado (decimal): ", 0
    msgHex   db "Resultado (Hex): ", 0

    inA db 64 dup(0)
    inB db 64 dup(0)
    buf db 64 dup(0)

    A dd ?
    B dd ?
    vRes dd ?

.code
start:
    print addr msgTitle

    
    print addr msgA
    invoke StdIn, addr inA, 63
    invoke atodw, addr inA ; convierte el ascii a codigo entero 
    mov A, eax

   
    print addr msgB
    invoke StdIn, addr inB, 63
    invoke atodw, addr inB
    mov B, eax

    
    mov eax, A
    add eax, B       ; ALU realiza la suma
    mov vRes, eax    ; Guardar resultado

   
    invoke dwtoa, vRes, addr buf
    print addr msgRes
    print addr buf, 13, 10

    print addr msgHex
    mov eax, vRes
    print hex$(eax), 13, 10

    exit
end start