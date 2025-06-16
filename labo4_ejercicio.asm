ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX

    MOV BL, 03d
    MOV AL, BL
    CALL factorial

    INT 20h

factorial:
    CMP BL, 01d

    JBE factorial_base

    DEC BL
    MUL BL

    JMP factorial

factorial_base:

    MOV byte[200h], AL ; GUARDAR EL RESULTADO CUANDO LLEGUE A 0
    RET