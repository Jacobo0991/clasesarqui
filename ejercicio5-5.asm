ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

SECTION .suma
    MOV BL, 20d
    MOV BH, 30d
    ADD BH, BL
    ADD [200h], BH
    MOV BL, 50d
    ADD BH, BL
    MOV [201h], BH 
    INT 20H