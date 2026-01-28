;OPERACIONES ARITMETICAS BASICAS - ADD , SUB , INC, DEC
;*aprender valores entre registros y realizar sumas y restas
;---MOV---
;*copia un valor desde un origen hacia un destino
;mov eax, 5
;mov ebx, eax
;mov ecx, [num] varialbe definida en data
;mov [num], eax -> se transfirere a num el contenido de eax
;NUNCA : mov [num], [num] * esta prohibido siempre una aprte debe ser un registro o un valor inmediato
;
;---ADD--- SUMA
;* suma el valor del operando derecho al operando izquierdo:
;ADD destino, fuente
;add eax, 10
;add ebx,eax
;
;---SUB--- RESTA
;*resta el operando derecho al izquierdo
;SUB destino, fuente
;sub eax,1
;sub ebx,eax
;
;---INC--- INCREMENTAR
;* incrementa en 1 el valor de un registro variable
;inc eax
;inc [contador]
;
;---DEC--- DECREMENTAR
;* decrementa en 1 el valor de un registro variable
;dec eax
;dec [decontador]
;
