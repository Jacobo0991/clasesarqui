ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

SECTION .division
    MOV BX, 330d
    MOV [200h], BX
    MOV CX, 4d
    MOV [210h], CX
    MOV AX, BX
    DIV CX
    MOV [220h], AX
    INT 20H