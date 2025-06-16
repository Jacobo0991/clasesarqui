ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

    MOV CX, 05d
    MOV AX, 01d

factorial:
    MUL CX
    LOOP factorial

    MOV [200h], AX
    INT 20H