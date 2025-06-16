ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX
    
    MOV CX, 05d
    MOV BL, 04d
factorial:
    MOV AX, CX
    MUL CX
    MOV BX, AX
    LOOP factorial

    INT 20H