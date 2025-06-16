ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

    MOV AH,02
    INT 16h
    CMP AL, 01

    JNE 0100
    INT 20h

move:
    MOV [0200h], AL

    INT 20h