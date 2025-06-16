ORG 100H

SECTION .text
    ; LIMPIAR LOS REGISTROS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

    CALL establecerModoTexto
    MOV DH, 05H
    MOV DL, 0FH
    CALL newposicionar
    MOV AL, 41H
    CALL escribir
    CALL newposicionar
    MOV AL, 42H
    CALL escribir
    CALL newposicionar
    MOV AL, 43H
    CALL escribir
    CALL newposicionar
    MOV AL, 44H
    CALL escribir
    CALL newposicionar
    MOV AL, 45H
    CALL escribir
    CALL newposicionar
    INT 20h

printE:

    INC AL
    INC DL 
    CALL pos
    CALL escribir
    CMP AL, 45H
    JNE printE

    INT 20H

newposicionar:
    MOV AH, 03H
    MOV BH, 00H
    INT 10H
    MOV AH, 02H
    INT 10H
    INC DL
    RET


posicionar:
    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 05H
    MOV DL, 0FH
    INT 10H
    RET
posicionar2:
    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 05H
    MOV DL, 12H
    INT 10H
    RET
pos:
    MOV AH, 02
    MOV BH, 00H
    INT 10H
    RET
escribirA:
    MOV AH, 09H
    MOV AL, 41H
    MOV BH, 00H
    MOV BL, 72H
    MOV CX, 01H
    INT 10H
    RET
escribir:
    MOV AH, 09H
    MOV BH, 00H
    MOV BL, 72H
    MOV CX, 01H
    INT 10H
    RET
escribirB:
    MOV AH, 09H
    MOV AL, 42H
    MOV BH, 00H
    MOV BL, 72H
    MOV CX, 03H
    INT 10H
    RET
establecerModoTexto:
    MOV AH, 00H
    MOV AL, 03H
    INT 10H
    RET

