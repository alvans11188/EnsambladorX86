;EJEMPLO 2 , PILAS
;APILAR 3 NUMEROS 10,20,30 luego desapilarlos y mostrarlos en pantalla
;explicar como cambia ESP tras cada operacion

.386
.model flat,stdcall
option casemap:none
include C:/masm32/include/masm32rt.inc
.data
    msgTitulo db "Pila, push y pop (trazando ESP)",0
    mBef db "ESP antes: ",0
    mAft db "ESP despues: ",0
    mPush10 db "push 10 ",0
    mPush20 db "push 20 ",0
    mPush30 db "push 30 ",0
    mPop db "pop -> EAX = ",0
    mDash db "---------------------",0

    ;snapshots de ESP
    esp0 dd ?
    esp1 dd ?
    esp2 dd ?
    esp3 dd ?
    esp4 dd ?
    esp5 dd ?
    esp6 dd ?
    
    buf db 32 dup(0)
    vTemp dd ?

.code
start:
    print addr msgTitulo,13,10
    print addr mDash,13,10

    ;--ESTADO INICIAL
    mov eax, esp
    mov esp0, eax
    print addr mBef
    mov eax, esp0
    print hex$(eax),13,10

    ;-- push 10
    print addr mPush10,13,10
    push 10
    mov eax, esp
    mov esp1,eax
    print addr mAft
    mov eax, esp1
    print hex$(eax),13,10
    print addr mDash,13,10

    ;-- push 20
    print addr mPush20,13,10
    push 20
    mov eax, esp
    mov esp2,eax
    print addr mAft
    mov eax, esp2
    print hex$(eax),13,10
    print addr mDash,13,10

    ;-- push 30
    print addr mPush10,13,10
    push 30
    mov eax, esp
    mov esp3,eax
    print addr mAft
    mov eax, esp3
    print hex$(eax),13,10
    print addr mDash,13,10

    ;----POP 30
    pop eax  ; eax =30
    mov vTemp, eax ; guardamos antes de imprimir
    invoke dwtoa, vTemp, addr buf
    print addr mPop
    print addr buf,13,10

    
    mov eax, esp
    mov esp4 ,eax
    print addr mAft
    mov eax, esp4
    print hex$(eax),13,10
    print addr mDash,13,10

    ;----POP 20
    pop eax  ; eax =20
    mov vTemp, eax
    invoke dwtoa, vTemp, addr buf
    print addr mPop
    print addr buf,13,10
    
    mov eax, esp
    mov esp5 ,eax
    print addr mAft
    mov eax, esp5
    print hex$(eax),13,10
    print addr mDash,13,10

    ;----POP 10
    pop eax  ; eax =30
    mov vTemp, eax
    invoke dwtoa, vTemp, addr buf
    print addr mPop
    print addr buf,13,10

    
    mov eax, esp
    mov esp6 ,eax
    print addr mAft
    mov eax, esp6
    print hex$(eax),13,10
    print addr mDash,13,10
    exit
end start
