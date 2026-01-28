;Ejemplo 1: de DECIMAL -> BINARIO Y hexadecimal
;
;CONVERTIMOS 45
;Division       Cociente        Resto
;45%2           22              1
;22%2           11              0
;11%2           5               1
;5%2            2               1
;2%2            1               0
;1%2            0               1
; resultado : 101101b
;
;Division       Cociente        Resto
;45%16          2               13(D)
;2%16           0               2
;resultado : 2Dh
;
;Ejemplo 2: Binarioa a DECIMAL y HEXADECIMAL
;convertir 110111b a decimal y hexadecimal
;*Suma de potencias de 2 correspondiente a los 1 bits:
;1x32 1x16 0x8 1x4 1x2 1x1=55
;
;Binario a hexadecimal
;*agrupamos en bloques de 4 bits desde la derecha
;
;00 110111 -> 0011 0111
;
;0011 = 3
;0111 = 7
;resultado 37h
;
;Ejercicio 1 : Decimal -> binario a hexadecimal
;objetivo:  convertir el 73 (decimal) a sus equivalentes binario y hexadecimal, mostrando diviones y restos
;
;DECIMAL -> BINARIO
;CONVERTIR 73:
;Division       Cociente        Resto
;73%2           36              1
;36%2           18              0
;18%2           9               0
;9%2            4               1
;4$2            2               0
;2%2            1               0
;1%2            0               1
;resultado: 1001001b

;DECIMAL -> HEXADECIMAL
;CONVERTIR 73:
;Division       Cociente        Resto
;73%16          4               9
;4%16           0               4
;resultado: 49h
;
;Ejercicio 2: Hexadecimal -> decimal y binario
;objetivo: convertir el 4Bh (hexadecimal) en decimal y binario
;HEXADECIMAL -> DECIMAL
;A=10
;B=11...F(16)
;
;CONVERTIR 4Bh:
;4Bh = 4*161 + B*160
;4Bh = 4*16 + 11*1 = 75 
;resultado decimal:75d
;
;HEXADECIMAL -> BINARIO
;*cada digito binario equivale a 4 bits
;010 0 = 4
;1011 = B(11)
;
;resultado : 01001011b
;
;